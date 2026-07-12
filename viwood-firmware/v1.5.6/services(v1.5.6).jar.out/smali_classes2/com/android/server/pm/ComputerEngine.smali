.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

# interfaces
.implements Lcom/android/server/pm/Computer;


# static fields
.field public static final sProviderInitOrderSorter:Ljava/util/Comparator;


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field public final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field public final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field public final mContext:Landroid/content/Context;

.field public final mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field public final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field public final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field public final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field public final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

.field public final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field public final mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field public final mLocalResolveComponentName:Landroid/content/ComponentName;

.field public final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field public final mService:Lcom/android/server/pm/PackageManagerService;

.field public final mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

.field public mUsed:I

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mVersion:I

.field public final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$ZsQO-GMd1VCddKx0WIWHtlgezQI(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .locals 0

    .line 383
    iget p0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 384
    iget p1, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-le p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 382
    new-instance v0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V
    .locals 5

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 391
    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 448
    iput p2, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    .line 449
    new-instance p2, Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/ComputerEngine$Settings;-><init>(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/Settings;)V

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 450
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 451
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 452
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 453
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 454
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 455
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    .line 456
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 457
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 458
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 459
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 460
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 461
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 462
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 463
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 465
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 469
    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 470
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 471
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 472
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 473
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 474
    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 475
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 476
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 477
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iput-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 478
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 479
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    iput-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 480
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 481
    new-instance v2, Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    invoke-direct {v2, v0, v3, p2, v1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 486
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 1

    .line 2899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 2901
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2902
    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2904
    :cond_0
    const-string p2, "UID "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2906
    const-string p0, " requires "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2907
    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    .line 2909
    const-string p0, " or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    .line 2912
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2913
    const-string p0, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    :cond_1
    const-string p0, " to access user "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2918
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 2971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 2973
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    :cond_0
    const-string p2, "UID "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2977
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2978
    const-string p0, " requires "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2979
    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    .line 2981
    const-string p0, " or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    :cond_1
    const-string p0, " to access user "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2985
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2986
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7

    .line 3272
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3273
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3274
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3275
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3276
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 3277
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 3280
    :cond_0
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsFactory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    const-string v2, "ApplicationInfo: "

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3287
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3289
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v4, ""

    .line 3290
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3291
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3292
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3294
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3295
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static isHomeIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 3510
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.HOME"

    .line 3511
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.DEFAULT"

    .line 3512
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 8

    .line 3791
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 3792
    const-string v5, "activitySupportsIntentAsUser"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3794
    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    .line 3798
    :cond_0
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p2}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    const/4 p5, 0x0

    if-nez p0, :cond_1

    return p5

    .line 3802
    :cond_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_2

    return p5

    :cond_2
    const/4 v4, 0x1

    const/4 v6, 0x1

    move v5, v2

    move v2, v1

    move-object v1, v3

    move-object v3, p2

    .line 3806
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p2

    if-eqz p2, :cond_3

    return p5

    :cond_3
    move p2, p5

    .line 3810
    :goto_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 3811
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 3812
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 3813
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v7, "PackageManager"

    move-object v3, p4

    .line 3812
    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_4

    return p1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    move-object p4, v3

    goto :goto_0

    :cond_5
    return p5
.end method

.method public final addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 4636
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_1

    .line 4637
    aget-object v3, p3, v1

    .line 4638
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default:0"

    invoke-interface {v4, v5, v3, v6, p7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 4641
    aput-boolean v3, p4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4644
    :cond_0
    aput-boolean v0, p4, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_4

    .line 4650
    :cond_2
    invoke-virtual {p0, p2, p5, p6, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    const-wide/16 v3, 0x1000

    and-long/2addr p5, v3

    const-wide/16 v3, 0x0

    cmp-long p2, p5, v3

    if-nez p2, :cond_5

    .line 4656
    array-length p2, p3

    if-ne v2, p2, :cond_3

    .line 4657
    iput-object p3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_3

    .line 4659
    :cond_3
    new-array p2, v2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move p2, v0

    .line 4661
    :goto_2
    array-length p5, p3

    if-ge v0, p5, :cond_5

    .line 4662
    aget-boolean p5, p4, v0

    if-eqz p5, :cond_4

    .line 4663
    iget-object p5, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object p6, p3, v0

    aput-object p6, p5, p2

    add-int/lit8 p2, p2, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4669
    :cond_5
    :goto_3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    return-void
.end method

.method public androidApplication()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v5, p6

    .line 1224
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 1225
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v11, v0

    :goto_1
    if-ltz v11, :cond_d

    .line 1226
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1228
    iget-boolean v2, v0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-eqz v2, :cond_1

    if-eqz v10, :cond_1

    .line 1229
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    move v8, v9

    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_1
    if-eqz p3, :cond_6

    .line 1233
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1236
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1238
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    const-string v3, "PackageManager"

    if-nez v2, :cond_3

    .line 1239
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_2

    .line 1240
    const-string v0, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_2
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_4

    .line 1245
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v5, v4}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1247
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1252
    :cond_4
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v2, :cond_5

    .line 1253
    const-string v2, "Adding installer to the ResolveInfo list"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_5
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1257
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v4, p4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/pm/ComputerEngine;->findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v13

    .line 1259
    new-instance v12, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v15, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    move-object/from16 v17, v3

    move-wide v15, v8

    invoke-direct/range {v12 .. v17}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v12, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1265
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1270
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1271
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->resolveLabelResId()I

    move-result v3

    iput v3, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1272
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->resolveIconResId()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    const/4 v8, 0x1

    .line 1273
    iput-boolean v8, v2, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1274
    invoke-interface {v6, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_6
    move/from16 v4, p4

    move v8, v9

    if-nez v7, :cond_7

    .line 1279
    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1280
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 1281
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    .line 1282
    invoke-virtual {v1, v0, v9}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez p5, :cond_c

    move-object v4, v0

    .line 1283
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move/from16 v2, p4

    .line 1284
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    .line 1288
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    if-eqz p5, :cond_a

    .line 1292
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1293
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    .line 1294
    :cond_9
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1295
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4

    .line 1298
    :cond_a
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1300
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    .line 1304
    :cond_b
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_c
    :goto_4
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v1, p0

    move/from16 v5, p6

    move v9, v8

    goto/16 :goto_1

    :cond_d
    return-object v6
.end method

.method public final applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 1311
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_0
    if-ltz v8, :cond_7

    .line 1312
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ResolveInfo;

    if-nez v7, :cond_0

    .line 1314
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1315
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 1316
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1317
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1318
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move/from16 v5, p3

    move/from16 v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1323
    :cond_0
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1325
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1326
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1327
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1329
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const-string v2, "PackageManager"

    if-nez v0, :cond_2

    .line 1330
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_1

    .line 1331
    const-string v0, "No installer - not adding it to the ResolveInfolist"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_1
    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1339
    :cond_2
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_3

    .line 1340
    const-string v0, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_3
    new-instance v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1344
    new-instance v10, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v13, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v15, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v10, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1350
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1352
    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1353
    invoke-interface {v6, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    .line 1358
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1363
    :cond_5
    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    :cond_7
    return-object v6
.end method

.method public final areWebInstantAppsDisabled(I)Z
    .locals 0

    .line 2061
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .locals 8

    .line 5551
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    .line 5552
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 11

    .line 5630
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5632
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachTo(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result p0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    .line 5636
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->hasWebURI()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    .line 5638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 5639
    invoke-virtual {v0, v7}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    if-nez p3, :cond_1

    return p2

    .line 5643
    :cond_1
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v4, 0x0

    move v9, v3

    move-object v3, v2

    move v2, v9

    .line 5645
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v6

    move-object p4, v1

    move-object v8, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v9, v3

    move v3, v2

    move-wide v1, v9

    move v4, p0

    .line 5643
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    const-wide/32 v3, 0x10000

    or-long/2addr v3, v1

    .line 5648
    iget v6, p3, Landroid/content/pm/UserInfo;->id:I

    move-object v1, p4

    move v5, v7

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    return p1

    :cond_2
    return p2
.end method

.method public canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
    .locals 9

    .line 5589
    array-length v0, p2

    .line 5590
    new-array v1, v0, [Z

    .line 5591
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_6

    .line 5594
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x0

    .line 5595
    const-string v8, "can package query"

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5598
    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    .line 5599
    new-array p3, v0, [Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p0, :cond_2

    .line 5602
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move v7, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v6

    :goto_1
    move v8, v2

    :goto_2
    if-nez v7, :cond_5

    if-ge v8, v0, :cond_5

    .line 5605
    aget-object v7, p2, v8

    invoke-virtual {v3, v7}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    aput-object v7, p3, v8

    if-eqz v7, :cond_4

    .line 5608
    invoke-virtual {v3, v7, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v7, v6

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    if-nez v7, :cond_7

    .line 5617
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {v5, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    :goto_5
    if-ge v2, v0, :cond_6

    .line 5619
    aget-object p1, p3, v2

    invoke-virtual {v3, p1, p0, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    xor-int/2addr p1, v6

    aput-boolean p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    return-object v1

    .line 5612
    :cond_7
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p3, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and/or "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5613
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public canQueryPackage(ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 5494
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 5499
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-wide/16 v4, 0x0

    .line 5501
    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 5500
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 5504
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p2

    if-nez p2, :cond_2

    return v2

    .line 5508
    :cond_2
    instance-of v1, p2, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_3

    .line 5509
    check-cast p2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 5512
    :cond_3
    check-cast p2, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 5519
    :cond_4
    instance-of p1, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_6

    .line 5520
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5521
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v2

    .line 5523
    :cond_6
    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 5525
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p1

    .line 5526
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_8

    .line 5527
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 5528
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v4, v3, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v0

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_8
    return v2

    :cond_9
    :goto_1
    return v0
.end method

.method public canRequestPackageInstalls(Ljava/lang/String;IIZ)Z
    .locals 6

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v4, p3

    .line 3930
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    if-eq v5, p0, :cond_1

    .line 3931
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3932
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not own package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 p1, 0x3e8

    .line 3935
    invoke-virtual {v0, v1, v4, p1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    return p2

    .line 3938
    :cond_2
    iget-object p1, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez p1, :cond_3

    return p2

    .line 3942
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p3

    const/16 v2, 0x1a

    if-ge p3, v2, :cond_4

    return p2

    .line 3945
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p1

    const-string p3, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 3950
    const-string p0, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    if-nez p4, :cond_5

    .line 3953
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 3951
    :cond_5
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3958
    :cond_6
    invoke-virtual {v0, v1, p0, v4}, Lcom/android/server/pm/ComputerEngine;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final canViewInstantApps(II)Z
    .locals 3

    const/16 v0, 0x2710

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    .line 2082
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 2086
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIEW_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2088
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2090
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 2094
    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 2095
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 3718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3719
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object p1

    .line 3722
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3723
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3724
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3725
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_3

    .line 3726
    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3729
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3731
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v3, :cond_2

    .line 3732
    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3735
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    .line 3734
    invoke-virtual {v7, v2, v8, v6}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 3737
    :cond_1
    aget-object v5, p1, v4

    :cond_2
    :goto_1
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final checkIsolatedOwnerHasPermission(IZ)Z
    .locals 1

    .line 2263
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 2264
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p2, :cond_0

    .line 2265
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 2267
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 2268
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkPackageFrozen(Ljava/lang/String;)V
    .locals 1

    .line 5955
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5956
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to be frozen!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "PackageManager"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 4212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4213
    const-string v5, "checkSignatures"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4216
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4217
    iget-object p1, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 p2, 0x0

    if-nez p0, :cond_0

    move-object p3, p2

    goto :goto_0

    .line 4219
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 4221
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    :goto_1
    const/4 v3, -0x4

    if-eqz p0, :cond_4

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    .line 4225
    :cond_2
    invoke-virtual {v0, p3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-nez p3, :cond_4

    .line 4226
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 4229
    :cond_3
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    return p0

    :cond_4
    :goto_2
    return v3
.end method

.method public final checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .locals 2

    const/4 p0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x2

    return p0

    .line 4298
    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 4305
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4306
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    return v0

    .line 4307
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4308
    new-array v0, p0, [Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p1

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    goto :goto_2

    .line 4309
    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 4310
    :goto_2
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4311
    new-array p0, p0, [Landroid/content/pm/Signature;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p1

    aget-object p1, p1, v1

    aput-object p1, p0, v1

    goto :goto_3

    .line 4312
    :cond_7
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 4313
    :goto_3
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    return p0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .locals 1

    .line 2715
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v0, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public checkUidSignatures(II)I
    .locals 2

    .line 4234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4235
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4237
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 4239
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4243
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x4

    return p0
.end method

.method public checkUidSignaturesForAllUsers(II)I
    .locals 7

    .line 4248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4249
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4250
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v4, 0x0

    .line 4251
    const-string v5, "checkUidSignaturesForAllUsers"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move p0, v2

    .line 4253
    const-string v5, "checkUidSignaturesForAllUsers"

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4256
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 4258
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4262
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x4

    return p0
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .locals 6

    .line 1797
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1798
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1801
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_0

    .line 1807
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    goto :goto_0

    .line 1809
    :cond_0
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 1811
    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    .line 1812
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 1814
    invoke-virtual {p0, v2, v4, v5, p2}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    const/4 v1, 0x1

    if-nez v3, :cond_1

    .line 1817
    iput p3, p0, Landroid/content/pm/ActivityInfo;->showUserIcon:I

    .line 1818
    iput-boolean v1, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1820
    :cond_1
    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 p0, 0x0

    .line 1821
    iput p0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1822
    iput p0, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1823
    iput p0, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1824
    iput-boolean v1, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1825
    new-instance p0, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1826
    iput p3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 1827
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    return-object v0

    :catchall_0
    move-exception p0

    .line 1803
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1804
    throw p0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 3693
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3694
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object p1

    .line 3697
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3698
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3699
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3700
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_3

    .line 3701
    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3703
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3704
    invoke-interface {v5, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    .line 3705
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 3706
    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3709
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 3708
    invoke-virtual {v6, v2, v7, v8}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3711
    :cond_1
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    aget-object v5, p1, v4

    :goto_1
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 11

    .line 3055
    const-string v1, "Failed writing: "

    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3056
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3057
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 3060
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3064
    const-string v5, "  "

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    if-nez v2, :cond_1

    :goto_0
    move-object v7, v4

    goto :goto_1

    .line 3109
    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 3110
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3111
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine;)V

    move-object v6, p3

    move-object v8, p4

    .line 3110
    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/AppsFilterSnapshot;->dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V

    return-void

    :sswitch_1
    move-object v6, p3

    if-eqz v0, :cond_2

    .line 3215
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3216
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1, v6}, Lcom/android/server/pm/ApexManager;->dump(Ljava/io/PrintWriter;)V

    .line 3217
    invoke-virtual {p0, v6, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :sswitch_2
    move-object v6, p3

    move-object v8, p4

    .line 3151
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3152
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3153
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3155
    :cond_3
    const-string p2, "Compiler stats:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    if-eqz v2, :cond_4

    .line 3159
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_2

    .line 3161
    :cond_4
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    .line 3164
    :goto_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3165
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    if-nez p3, :cond_5

    goto :goto_3

    .line 3169
    :cond_5
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 3170
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3173
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 3174
    invoke-virtual {p4, p3}, Lcom/android/server/pm/CompilerStats;->getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object p3

    if-nez p3, :cond_6

    .line 3176
    const-string p3, "(No recorded stats)"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3178
    :cond_6
    invoke-virtual {p3, p1}, Lcom/android/server/pm/CompilerStats$PackageStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3180
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_3

    :sswitch_3
    move-object v6, p3

    move-object v8, p4

    .line 3138
    new-instance p0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3139
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3140
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3142
    :cond_7
    const-string p1, "Dexopt state:"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3144
    invoke-static {p0, v0}, Lcom/android/server/pm/DexOptHelper;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :sswitch_4
    move-object v6, p3

    move-object v8, p4

    .line 3193
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3194
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3196
    :cond_8
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 p2, 0x78

    invoke-direct {p1, v6, v5, p2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3197
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3198
    const-string p2, "Frozen packages:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3199
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3200
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p2

    if-nez p2, :cond_9

    .line 3201
    const-string p0, "(none)"

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 3203
    :cond_9
    :goto_5
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p2

    if-ge v3, p2, :cond_a

    .line 3204
    const-string/jumbo p2, "package="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3205
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, v3}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3206
    const-string p2, ", refCounts="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, v3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3210
    :cond_a
    :goto_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :sswitch_5
    move-object v6, p3

    move-object v8, p4

    .line 3118
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3120
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 3121
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3123
    :cond_b
    const-string p2, "Domain verification status:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3126
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 p3, -0x1

    .line 3127
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 3126
    invoke-interface {p2, p0, p1, v0, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 3129
    const-string p2, "Failure printing domain verification information"

    invoke-virtual {v6, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    const-string p3, "PackageManager"

    invoke-static {p3, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3132
    :goto_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto/16 :goto_c

    :sswitch_6
    move-object v6, p3

    move-object v8, p4

    .line 3067
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3068
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3070
    :cond_c
    const-string p1, "Database versions:"

    invoke-virtual {v6, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    :sswitch_7
    move-object v6, p3

    move-object v8, p4

    .line 3085
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 3086
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    .line 3087
    :try_start_1
    new-instance p3, Ljava/io/BufferedOutputStream;

    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p3, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3089
    :try_start_2
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3090
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v4, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3091
    const-string p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 p4, 0x1

    invoke-interface {p1, p2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3093
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3094
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->isFullPreferred()Z

    move-result p2

    .line 3093
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V

    .line 3095
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 3096
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3097
    :try_start_3
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 3087
    :try_start_4
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3102
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 3100
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 3098
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    :goto_c
    return-void

    :sswitch_8
    move-object v6, p3

    move-object v8, p4

    .line 3080
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, v6, v8, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    return-void

    :sswitch_9
    move-object v6, p3

    move-object v8, p4

    .line 3186
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, v6, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    return-void

    :sswitch_a
    move-object v6, p3

    move-object v8, p4

    .line 3076
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, v6, v8}, Lcom/android/server/pm/SharedLibrariesRead;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x200 -> :sswitch_9
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_7
        0x8000 -> :sswitch_6
        0x40000 -> :sswitch_5
        0x80000 -> :sswitch_4
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_2
        0x2000000 -> :sswitch_1
        0x4000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 3246
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3247
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3251
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->generateApexPackageInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3253
    const-string p0, "Active APEX packages:"

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3254
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3255
    const-string p1, "Inactive APEX packages:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3256
    invoke-static {v1, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3257
    const-string v1, "Factory APEX packages:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    invoke-static {v2, p0, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3259
    invoke-static {v3, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .locals 0

    .line 5983
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 0

    .line 5977
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 6000
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .locals 0

    .line 5970
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 6005
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 0

    .line 5990
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 5995
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .locals 7

    if-ltz p2, :cond_3

    if-eqz p4, :cond_0

    .line 2871
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2872
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    const-string/jumbo v0, "no_debugging_features"

    .line 2871
    invoke-static {p4, v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2875
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    .line 2876
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2880
    :cond_1
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/ComputerEngine;->isSameProfileGroup(II)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2881
    iget-object p1, v1, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 2886
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 2881
    const-string p3, "android.permission.INTERACT_ACROSS_PROFILES"

    const/4 p4, -0x1

    invoke-static {p1, p3, p4, v2, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 2890
    :cond_2
    invoke-static {v2, v4, p5, v5, p0}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 2892
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move v4, p2

    .line 2868
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid userId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 2931
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method public final enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 7

    if-ltz p2, :cond_2

    if-eqz p4, :cond_0

    .line 2953
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2954
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    const-string/jumbo v0, "no_debugging_features"

    .line 2953
    invoke-static {p4, v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2957
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p5

    .line 2958
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 2963
    :cond_1
    invoke-static {v2, v4, p6, v5}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 2965
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move v4, p2

    .line 2950
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid userId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public filterAppAccess(II)Z
    .locals 3

    .line 3025
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    if-ne p2, p1, :cond_0

    return p0

    .line 3030
    :cond_0
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p2

    if-ne p2, p1, :cond_1

    return p0

    :cond_1
    return v1

    .line 3038
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3039
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 3040
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 3044
    :cond_3
    instance-of v2, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_4

    .line 3045
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    return p0

    .line 3047
    :cond_4
    instance-of v2, p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v2, :cond_5

    .line 3048
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.method public filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .locals 0

    .line 3013
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 3014
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    return p0
.end method

.method public filterAppAccess(Ljava/lang/String;IIZ)Z
    .locals 7

    .line 3019
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move v5, p3

    move v6, p4

    .line 3020
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0
.end method

.method public final filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;
    .locals 1

    if-nez p2, :cond_0

    goto :goto_1

    .line 1379
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 1380
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 1381
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 1382
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public varargs filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    .line 5781
    const-class p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 5784
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5786
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto :goto_2

    .line 5791
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5792
    const-string v6, "PackageManager"

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 5797
    :cond_2
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-nez v5, :cond_3

    .line 5798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not system"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5802
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5793
    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5805
    :cond_5
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .locals 6

    const-wide/32 v0, 0x4000000

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    .line 2163
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    .line 2164
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result p4

    if-eqz p4, :cond_0

    return p5

    .line 2168
    :cond_0
    const-string p4, "android.permission.INSTALL_PACKAGES"

    .line 2169
    invoke-virtual {p0, p4, p2}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p4

    if-nez p4, :cond_1

    return p5

    :cond_1
    if-eqz p1, :cond_9

    .line 2175
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_2

    .line 2180
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v0

    int-to-long v0, v0

    .line 2179
    invoke-virtual {p0, p4, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p4

    if-nez p4, :cond_3

    return p5

    .line 2185
    :cond_3
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 2186
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_4

    return p3

    .line 2191
    :cond_4
    array-length v0, p2

    move v1, p5

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p2, v1

    .line 2192
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return p5

    .line 2195
    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2197
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 2198
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2197
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    goto :goto_1

    .line 2202
    :cond_6
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v2

    aget-wide v2, v2, v3

    .line 2203
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    return p5

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return p3

    :cond_9
    :goto_2
    return p5
.end method

.method public final filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .locals 1

    .line 2214
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .locals 6

    const-wide/32 v0, 0x4000000

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    .line 2107
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    .line 2108
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result p4

    if-eqz p4, :cond_0

    return p5

    .line 2112
    :cond_0
    const-string p4, "android.permission.INSTALL_PACKAGES"

    .line 2113
    invoke-virtual {p0, p4, p2}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p4

    if-nez p4, :cond_1

    return p5

    :cond_1
    if-eqz p1, :cond_9

    .line 2119
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_2

    .line 2124
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object p4

    .line 2125
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryVersion()J

    move-result-wide v0

    .line 2123
    invoke-virtual {p0, p4, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p4

    if-nez p4, :cond_3

    return p5

    .line 2130
    :cond_3
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 2131
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_4

    return p3

    .line 2136
    :cond_4
    array-length v0, p2

    move v1, p5

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p2, v1

    .line 2137
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return p5

    .line 2140
    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2142
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 2143
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2142
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_6

    goto :goto_1

    .line 2147
    :cond_6
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    aget-wide v2, v2, v3

    .line 2148
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    return p5

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return p3

    :cond_9
    :goto_2
    return p5
.end method

.method public final findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .locals 12

    .line 856
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSTALL_FAILURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move v7, p2

    move v9, p3

    .line 859
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object p0

    .line 863
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 866
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 867
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 870
    :cond_0
    new-instance p0, Landroid/content/ComponentName;

    iget-object p2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v5, p7

    .line 3535
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    .line 3536
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3537
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    .line 3539
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v7, "PackageManager"

    if-nez v2, :cond_0

    if-eqz p6, :cond_1

    .line 3540
    :cond_0
    const-string v2, "Looking for persistent preferred activities..."

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    const-wide/32 v2, 0x10000

    and-long v2, p3, v2

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v4, v2

    move-object/from16 v3, p2

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    move v4, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 3543
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_10

    .line 3547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 3548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v9

    :goto_2
    if-ge v3, v2, :cond_10

    .line 3550
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 3551
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v11, "  "

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-nez v10, :cond_4

    if-eqz p6, :cond_6

    .line 3552
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checking PersistentPreferredActivity ds="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3553
    invoke-virtual {v4}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v14

    if-lez v14, :cond_5

    invoke-virtual {v4, v9}, Lcom/android/server/pm/WatchedIntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_5
    const-string v14, "<none>"

    :goto_3
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n  component="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3552
    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    new-instance v10, Landroid/util/LogPrinter;

    invoke-direct {v10, v13, v7, v12}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v10, v11}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3557
    :cond_6
    iget-object v4, v4, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v14, 0x200

    or-long v14, p3, v14

    invoke-virtual {v1, v4, v14, v15, v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 3559
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v10, :cond_7

    if-eqz p6, :cond_9

    .line 3560
    :cond_7
    const-string v10, "Found persistent preferred activity:"

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_8

    .line 3562
    new-instance v10, Landroid/util/LogPrinter;

    invoke-direct {v10, v13, v7, v12}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v10, v11}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_4

    .line 3564
    :cond_8
    const-string v10, "  null"

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    if-nez v4, :cond_b

    :cond_a
    move-object/from16 v11, p5

    goto :goto_8

    :cond_b
    move v10, v9

    :goto_5
    if-ge v10, v6, :cond_a

    move-object/from16 v11, p5

    .line 3573
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 3574
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3575
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_6

    .line 3578
    :cond_c
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3582
    :cond_d
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_f

    if-eqz p6, :cond_e

    goto :goto_7

    :cond_e
    return-object v12

    .line 3583
    :cond_f
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning persistent preferred activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_10
    return-object v8
.end method

.method public findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .locals 25

    .line 3305
    new-instance v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v2, p9

    move v7, v6

    .line 3309
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v6

    move v3, v2

    move-wide v1, v4

    move v5, v7

    move/from16 v4, p11

    .line 3307
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    .line 3311
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide v3, v1

    move-object/from16 v2, p2

    move-object v1, v0

    move-object/from16 v0, p0

    .line 3314
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    move-wide v10, v3

    move-object v6, v5

    move v3, v7

    iput-object v9, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_0

    goto/16 :goto_18

    .line 3322
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .line 3324
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v7, "PackageManager"

    if-nez v4, :cond_1

    if-eqz p8, :cond_2

    :cond_1
    const-string v4, "Looking for preferred activities..."

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_4

    const-wide/32 v4, 0x10000

    and-long/2addr v4, v10

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-eqz v4, :cond_3

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    const/4 v4, 0x1

    :goto_0
    move v5, v3

    move-object/from16 v3, p2

    goto :goto_1

    :cond_3
    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    const/4 v4, 0x0

    goto :goto_0

    .line 3326
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v24, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v1, v24

    goto :goto_2

    :cond_4
    move v5, v3

    move-object/from16 v3, p2

    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_29

    .line 3330
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_29

    .line 3337
    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v14, :cond_5

    if-eqz p8, :cond_6

    .line 3338
    :cond_5
    const-string v14, "Figuring out best match..."

    invoke-static {v7, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_a

    .line 3343
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 3344
    sget-boolean v16, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v16, :cond_8

    if-eqz p8, :cond_7

    goto :goto_4

    :cond_7
    move-wide/from16 v16, v10

    goto :goto_5

    .line 3345
    :cond_8
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v10

    const-string v10, "Match for "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": 0x"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v13, Landroid/content/pm/ResolveInfo;->match:I

    .line 3346
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3345
    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    :goto_5
    iget v10, v13, Landroid/content/pm/ResolveInfo;->match:I

    if-le v10, v9, :cond_9

    move v9, v10

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v10, v16

    goto :goto_3

    :cond_a
    move-wide/from16 v16, v10

    .line 3353
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v10, :cond_b

    if-eqz p8, :cond_c

    .line 3354
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Best match: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/high16 v10, 0xfff0000

    and-int/2addr v9, v10

    .line 3357
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_29

    .line 3359
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PreferredActivity;

    .line 3360
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v15, "  "

    move-object/from16 p11, v4

    if-nez v13, :cond_e

    if-eqz p8, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v20, v10

    goto :goto_a

    .line 3361
    :cond_e
    :goto_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking PreferredActivity ds="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    invoke-virtual {v12}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v4

    if-lez v4, :cond_f

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/android/server/pm/WatchedIntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v20

    :goto_8
    move-object/from16 v4, v20

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    const-string v20, "<none>"

    goto :goto_8

    :goto_9
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  component="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3361
    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    new-instance v4, Landroid/util/LogPrinter;

    move/from16 v20, v10

    const/4 v10, 0x2

    const/4 v13, 0x3

    invoke-direct {v4, v10, v7, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v12, v4, v15}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3366
    :goto_a
    iget-object v4, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v10, v4, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eq v10, v9, :cond_13

    .line 3367
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v4, :cond_12

    if-eqz p8, :cond_10

    goto :goto_e

    :cond_10
    :goto_b
    move v13, v9

    move/from16 v18, v11

    :cond_11
    :goto_c
    const/4 v4, 0x1

    :goto_d
    const/4 v9, 0x0

    goto/16 :goto_17

    .line 3368
    :cond_12
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping bad match "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v10, v10, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3369
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3368
    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    if-eqz p6, :cond_15

    .line 3375
    iget-boolean v10, v4, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v10, :cond_15

    .line 3376
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v4, :cond_14

    if-eqz p8, :cond_10

    :cond_14
    const-string v4, "Skipping mAlways=false entry"

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3379
    :cond_15
    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const-wide/32 v21, 0xc0200

    move v13, v9

    or-long v9, v16, v21

    invoke-virtual {v0, v4, v9, v10, v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 3383
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v9, :cond_17

    if-eqz p8, :cond_16

    goto :goto_f

    :cond_16
    move/from16 v18, v11

    goto :goto_10

    .line 3384
    :cond_17
    :goto_f
    const-string v9, "Found preferred activity:"

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_18

    .line 3386
    new-instance v9, Landroid/util/LogPrinter;

    move/from16 v18, v11

    const/4 v10, 0x3

    const/4 v11, 0x2

    invoke-direct {v9, v11, v7, v10}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v9, v15}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_10

    :cond_18
    move/from16 v18, v11

    .line 3388
    const-string v9, "  null"

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :goto_10
    invoke-static {v1}, Lcom/android/server/pm/ComputerEngine;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_19

    if-nez p12, :cond_19

    const/4 v9, 0x1

    goto :goto_11

    :cond_19
    const/4 v9, 0x0

    :goto_11
    if-nez v9, :cond_1a

    if-nez p10, :cond_1a

    const/4 v10, 0x1

    goto :goto_12

    :cond_1a
    const/4 v10, 0x0

    :goto_12
    if-nez v4, :cond_1c

    if-nez v10, :cond_1b

    goto :goto_c

    .line 3407
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling preferred activity: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v9, v9, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    invoke-virtual {v2, v12}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v4, 0x1

    .line 3410
    iput-boolean v4, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    goto/16 :goto_d

    :cond_1c
    const/4 v11, 0x0

    :goto_13
    if-ge v11, v14, :cond_11

    .line 3414
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    move/from16 v19, v10

    .line 3415
    iget-object v10, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v21, v11

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3416
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_14

    .line 3419
    :cond_1d
    iget-object v10, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    :goto_14
    add-int/lit8 v11, v21, 0x1

    move/from16 v10, v19

    goto :goto_13

    :cond_1e
    if-eqz p7, :cond_1f

    if-eqz v19, :cond_1f

    .line 3424
    invoke-virtual {v2, v12}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v4, 0x1

    .line 3425
    iput-boolean v4, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3426
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v4, :cond_11

    .line 3427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing match "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v9, v9, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_1f
    if-eqz p6, :cond_26

    .line 3438
    iget-object v4, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3439
    invoke-virtual {v4, v6, v9, v5}, Lcom/android/server/pm/PreferredComponent;->sameSet(Ljava/util/List;ZI)Z

    move-result v4

    if-nez v4, :cond_26

    .line 3440
    iget-object v4, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4, v6, v9}, Lcom/android/server/pm/PreferredComponent;->isSuperset(Ljava/util/List;Z)Z

    move-result v4

    const-string v5, " type "

    if-eqz v4, :cond_22

    if-eqz v19, :cond_21

    .line 3444
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v4, :cond_20

    .line 3445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result set changed, but PreferredActivity is still valid as only non-preferred components were removed for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    :cond_20
    new-instance v18, Lcom/android/server/pm/PreferredActivity;

    iget-object v1, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v3, v1, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3454
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PreferredComponent;->discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;

    move-result-object v21

    iget-object v1, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iget-boolean v1, v1, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    move/from16 v23, v1

    move/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v19, v12

    invoke-direct/range {v18 .. v23}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    move-object/from16 v1, v18

    .line 3457
    invoke-virtual {v2, v12}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3458
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v4, 0x1

    .line 3459
    iput-boolean v4, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    goto/16 :goto_16

    .line 3461
    :cond_21
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_26

    .line 3462
    const-string v0, "Do not remove preferred activity"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 3466
    :cond_22
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "android.intent.category.HOME"

    .line 3467
    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    goto :goto_15

    :cond_23
    const/4 v4, 0x0

    :goto_15
    if-nez v4, :cond_26

    if-eqz v19, :cond_25

    .line 3473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result set changed, dropping preferred activity for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_24

    .line 3478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing preferred activity since set changed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v3, v3, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_24
    invoke-virtual {v2, v12}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3484
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    iget-object v3, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v4, v3, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v3, v3, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p5, v1

    move-object/from16 p9, v3

    move/from16 p7, v4

    move/from16 p10, v5

    move-object/from16 p8, v6

    move-object/from16 p6, v12

    invoke-direct/range {p5 .. p10}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3487
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v4, 0x1

    .line 3488
    iput-boolean v4, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    :cond_25
    const/4 v9, 0x0

    .line 3490
    iput-object v9, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v8

    .line 3497
    :cond_26
    :goto_16
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_27

    if-eqz p8, :cond_28

    .line 3498
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning preferred activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    :cond_28
    iput-object v15, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v8

    :goto_17
    add-int/lit8 v11, v18, 0x1

    move-object/from16 v4, p11

    move v9, v13

    move/from16 v10, v20

    goto/16 :goto_6

    :cond_29
    :goto_18
    return-object v8
.end method

.method public final findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .locals 13

    .line 3520
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 3523
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3524
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v12, v1

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v1, p1

    goto :goto_0

    :cond_0
    move v12, v2

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v2, p2

    .line 3527
    :goto_0
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object p0

    return-object p0
.end method

.method public findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;
    .locals 3

    .line 5019
    invoke-static {p1}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object p1

    .line 5020
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5022
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 5024
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5025
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5026
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 5031
    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final generateApexPackageInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .line 3228
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3229
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3230
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 3231
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    goto :goto_0

    .line 3234
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3235
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3236
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3238
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 3239
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3240
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .locals 5

    .line 964
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_6

    move-wide v3, p2

    move p2, p4

    move p3, p5

    move-wide p4, v3

    .line 967
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    move-object v2, p0

    move p0, p2

    move-object p5, p1

    move-wide p1, v3

    if-eqz v0, :cond_1

    return-object v1

    .line 970
    :cond_1
    invoke-virtual {v2, p5, p0, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    .line 973
    :cond_2
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_4

    .line 974
    invoke-virtual {v2, p5, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 976
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_3
    return-object v1

    .line 980
    :cond_4
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    move p4, p3

    .line 981
    invoke-interface {p5, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p3

    .line 980
    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 983
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_5
    return-object p0

    :cond_6
    return-object v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .locals 14

    move/from16 v11, p4

    .line 1495
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    return-object v13

    :cond_0
    if-nez p1, :cond_1

    return-object v13

    .line 1499
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1506
    invoke-virtual {p0, p1, v0, v11}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v13

    :cond_2
    const-wide/16 v0, 0x2000

    and-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1511
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/32 v0, 0x400000

    or-long v0, p2, v0

    goto :goto_0

    :cond_3
    move-wide/from16 v0, p2

    .line 1515
    :goto_0
    invoke-interface {p1, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    move-wide v4, v2

    move-wide v2, v0

    .line 1516
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_b

    const-wide/16 v6, 0x100

    and-long/2addr v6, v2

    cmp-long v1, v6, v4

    if-nez v1, :cond_4

    .line 1519
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_1

    .line 1520
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v11, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-interface {v1, v6}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v1

    :goto_1
    const-wide/16 v6, 0x1000

    and-long/2addr v6, v2

    cmp-long v4, v6, v4

    if-eqz v4, :cond_6

    .line 1523
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 1524
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    :goto_2
    move-object v8, v5

    goto :goto_4

    .line 1523
    :cond_6
    :goto_3
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_2

    :goto_4
    if-eqz v4, :cond_8

    .line 1527
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    .line 1528
    :cond_7
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    :goto_5
    move-object v9, v4

    goto :goto_7

    .line 1527
    :cond_8
    :goto_6
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_5

    .line 1531
    :goto_7
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v6

    move-object v12, p1

    .line 1530
    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v13

    .line 1538
    :cond_9
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1539
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1542
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1544
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1545
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1544
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageInfo;->setApexPackageName(Ljava/lang/String;)V

    .line 1549
    :cond_a
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {p0, v1}, Lcom/mediatek/server/pm/PmsExt;->updatePackageInfoForRemovable(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_b
    const-wide v0, 0x100002000L    # 2.1219998384E-314

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_f

    .line 1551
    invoke-static {v10, v2, v3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1552
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1553
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1554
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    .line 1555
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1556
    invoke-interface {p0}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v13

    :cond_c
    iput-object v13, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 1557
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1558
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1560
    new-instance p0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1561
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1562
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v11, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1563
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1564
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1565
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1566
    invoke-static {v1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1567
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1568
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getTargetSdkVersion()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1569
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1570
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrivateFlags()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1571
    invoke-static {p0, v2, v3, v10, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1573
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getSigningInfo()Landroid/content/pm/SigningInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 1574
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1575
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1576
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInfo;->setArchiveTimeMillis(J)V

    .line 1579
    :cond_d
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz p0, :cond_e

    .line 1580
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ps.pkg is n/a for ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]. Provides a minimum info."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1580
    const-string v1, "PackageManager"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object v0

    :cond_f
    return-object v13
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .locals 6

    .line 878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .locals 6

    .line 893
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 894
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v2

    .line 896
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .locals 10

    .line 907
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 908
    :cond_0
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v2

    .line 910
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result p2

    if-nez p2, :cond_1

    .line 911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v8, 0x0

    const-string v9, "get activity info"

    const/4 v7, 0x0

    move-object v4, p0

    move v6, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v0, v4

    move v5, v6

    :goto_0
    move-object v1, p1

    move v4, p4

    goto :goto_1

    :cond_1
    move-object v0, p0

    move v5, p5

    goto :goto_0

    .line 916
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .locals 10

    .line 921
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v1

    const-wide v2, 0x200000000L

    or-long/2addr v2, p2

    .line 926
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getActivityInfo "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PackageManager"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    if-nez v1, :cond_1

    move-object v0, p2

    goto :goto_0

    .line 928
    :cond_1
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/AndroidPackage;

    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_4

    move-wide v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 929
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result p3

    move-object v9, v1

    move-object v6, v2

    move-wide v7, v3

    if-eqz p3, :cond_5

    .line 930
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p2

    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move v2, p4

    move v5, p5

    .line 932
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p2

    .line 937
    :cond_3
    invoke-interface {v1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    move-object v0, v6

    move-object v6, v1

    move-object v1, v0

    move v5, p5

    move-wide v2, v7

    move-object v0, v9

    .line 936
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_4
    move-wide v7, v2

    .line 939
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->resolveComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 940
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    sget-object p1, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-static {p0, v7, v8, p1, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p2
.end method

.method public getAllAvailablePackageNames()[Ljava/lang/String;
    .locals 1

    .line 1675
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 5109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5110
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5112
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5113
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5114
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 5115
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_6

    .line 5116
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 5119
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 5120
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5122
    :cond_3
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p0

    .line 5123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p0, :cond_5

    .line 5125
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 5126
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    move v4, v0

    .line 5127
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 5128
    new-instance v5, Landroid/content/IntentFilter;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5131
    :cond_5
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 5117
    :cond_6
    :goto_3
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getAllPackages()Ljava/util/List;
    .locals 8

    .line 4364
    const-string v0, "getAllPackages is limited to privileged callers"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 4366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4367
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4368
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4369
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4371
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 4372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    .line 4375
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4376
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isVisibleToInstantApps()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4379
    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4383
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4384
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4386
    invoke-interface {v5, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4388
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    .line 4387
    invoke-virtual {v6, v1, v7, v5}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 4391
    :cond_3
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    .line 4587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4588
    const-string v5, "getAppOpPermissionPackages"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    if-eqz p1, :cond_3

    .line 4590
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4591
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 4595
    :cond_0
    new-instance p0, Landroid/util/ArraySet;

    iget-object p2, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4596
    invoke-interface {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 4597
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 4598
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4599
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 4600
    invoke-virtual {v3, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 4599
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 4603
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 4605
    :cond_2
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 4592
    :cond_3
    :goto_2
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .locals 6

    .line 5287
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 5288
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 5289
    const-string v5, "get enabled"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5292
    :try_start_0
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5293
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    .line 5292
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_1

    .line 5296
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 5294
    :cond_1
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5298
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .locals 9

    .line 5042
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationHidden for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5048
    :try_start_0
    iget-object p0, v3, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    .line 5057
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 5052
    :cond_0
    :try_start_1
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 5057
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 5055
    :cond_1
    :try_start_2
    invoke-interface {p0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5057
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5058
    throw p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .locals 6

    .line 992
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .locals 10

    .line 1004
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1005
    :cond_0
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v2

    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v8, 0x0

    const-string v9, "get application info"

    const/4 v7, 0x0

    move-object v4, p0

    move v6, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v0, v4

    move v5, v6

    :goto_0
    move-object v1, p1

    move v4, p4

    goto :goto_1

    :cond_1
    move-object v0, p0

    move v5, p5

    goto :goto_0

    .line 1013
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .locals 10

    const-wide/16 v0, -0x1

    .line 1021
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 1024
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1025
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_0

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 1032
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v2

    :cond_2
    if-nez v0, :cond_3

    .line 1034
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v2

    :cond_3
    move-object v4, p0

    move-wide v8, p2

    move v6, p4

    move v7, p5

    .line 1037
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p0

    move-object p2, v4

    move p4, v6

    move p5, v7

    if-eqz p0, :cond_4

    return-object v2

    .line 1040
    :cond_4
    invoke-virtual {p2, v5, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    .line 1045
    :cond_5
    invoke-interface {v5, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    move-object v6, v5

    move-wide v2, v8

    move v5, p5

    .line 1044
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1047
    invoke-virtual {p2, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1050
    :cond_6
    sget-object p1, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {p1, p0}, Lcom/mediatek/server/pm/PmsExt;->updateApplicationInfoForRemovable(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_7
    move-wide v8, p2

    move-object p2, p0

    .line 1052
    const-string p0, "android"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string/jumbo p0, "system"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move-object p0, p2

    goto :goto_1

    :cond_9
    const-wide v0, 0x100402000L

    and-long/2addr v0, v8

    cmp-long p0, v0, v4

    if-eqz p0, :cond_a

    .line 1058
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    move-object p0, p2

    move-wide p2, v8

    .line 1059
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1058
    invoke-virtual {v0, p0}, Lcom/mediatek/server/pm/PmsExt;->updateApplicationInfoForRemovable(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v2

    .line 1053
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getBaseSdkSandboxUid()I
    .locals 1

    .line 5896
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p0

    return p0
.end method

.method public getBlockUninstall(ILjava/lang/String;)Z
    .locals 0

    .line 5879
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBlockUninstallForUser(Ljava/lang/String;I)Z
    .locals 2

    .line 5136
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eqz v0, :cond_1

    .line 5138
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5141
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;II)I
    .locals 6

    .line 5306
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "getComponentEnabled"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5308
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/pm/ComputerEngine;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result p0

    return p0
.end method

.method public getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5316
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 5319
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5320
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v5, p1

    move v4, p2

    move v7, p3

    .line 5319
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    if-nez p0, :cond_2

    .line 5324
    iget-object p0, v2, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, v5, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0

    return p0

    .line 5322
    :cond_2
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v5, p1

    .line 5326
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown component: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .locals 0

    .line 5932
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object p0
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 12

    move/from16 v0, p5

    .line 1147
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string v2, "allow_parent_profile_app_linking"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1154
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 1158
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v1, 0x0

    move v10, v1

    move-object v11, v8

    :goto_0
    if-ge v10, v9, :cond_5

    .line 1160
    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1164
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_2

    :goto_1
    move/from16 v6, p6

    goto :goto_2

    .line 1167
    :cond_2
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1168
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1173
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v3, p1

    move-wide v4, p3

    move/from16 v6, p6

    .line 1174
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v1

    if-nez v11, :cond_4

    .line 1177
    new-instance v11, Lcom/android/server/pm/CrossProfileDomainInfo;

    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v2}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {p0, v2, v0, v6}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-direct {v11, v2, v1, v6}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    goto :goto_2

    .line 1181
    :cond_4
    iget v2, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1182
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    if-eqz v11, :cond_6

    .line 1185
    iget p0, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-gtz p0, :cond_6

    return-object v8

    :cond_6
    return-object v11

    :cond_7
    :goto_3
    return-object v8
.end method

.method public getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 4056
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    const-string v3, "getDeclaredSharedLibraries"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4058
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4059
    const-string v5, "getDeclaredSharedLibraries"

    const/4 v3, 0x1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v9, v1

    .line 4062
    const-string/jumbo v1, "packageName cannot be null"

    invoke-static {v8, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4063
    const-string/jumbo v1, "userId must be >= 0"

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4064
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return-object v10

    .line 4068
    :cond_0
    invoke-virtual {v0, v9}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v10

    .line 4073
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v11

    .line 4076
    invoke-virtual {v11}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    move-object v1, v10

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_8

    .line 4079
    invoke-virtual {v11, v14}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v15, :cond_2

    :goto_1
    move v4, v9

    goto/16 :goto_6

    .line 4084
    :cond_2
    invoke-virtual {v15}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v3

    move-object/from16 v16, v1

    move v1, v13

    :goto_2
    if-ge v1, v3, :cond_7

    .line 4086
    invoke-virtual {v15, v1}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    .line 4088
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    .line 4089
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move/from16 v21, v1

    move/from16 v20, v3

    goto :goto_3

    .line 4093
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    move v5, v1

    .line 4096
    :try_start_0
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4097
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v6

    const-wide/32 v20, 0x4000000

    or-long v20, p2, v20

    move v4, v3

    move-wide v2, v6

    .line 4099
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move/from16 v7, p4

    move-wide/from16 v34, v20

    move/from16 v20, v4

    move/from16 v21, v5

    move-wide/from16 v4, v34

    .line 4095
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 4104
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    move v4, v9

    goto :goto_5

    :cond_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v5, p4

    move v4, v9

    move-object/from16 v1, v17

    .line 4108
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v6

    .line 4109
    new-instance v22, Landroid/content/pm/SharedLibraryInfo;

    .line 4110
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 4111
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v25

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v26

    .line 4112
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v27

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v29

    .line 4113
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v30

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/List;

    .line 4115
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move-object/from16 v32, v10

    goto :goto_4

    .line 4116
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v32, v0

    .line 4117
    :goto_4
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v33

    invoke-direct/range {v22 .. v33}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v0, v22

    if-nez v16, :cond_6

    .line 4120
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    move-object/from16 v1, v16

    .line 4122
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    :goto_5
    add-int/lit8 v1, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p4

    move v9, v4

    move/from16 v3, v20

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 4104
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4105
    throw v0

    :cond_7
    move-object/from16 v1, v16

    goto/16 :goto_1

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p4

    move v9, v4

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    .line 4126
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_9
    return-object v10
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .locals 6

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 1077
    :cond_0
    const-string p0, "PackageManager"

    const-string p1, "Default package for ROLE_HOME is not set in RoleManager"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    move-object v3, p1

    :goto_0
    if-ge v2, p0, :cond_3

    .line 1085
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1086
    iget v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, v1, :cond_1

    .line 1087
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1088
    iget v1, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    :cond_1
    if-ne v5, v1, :cond_2

    move-object v3, p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 0

    .line 5938
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledSystemPackageStates()Landroid/util/ArrayMap;
    .locals 0

    .line 3607
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPackages()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getFlagsForUid(I)I
    .locals 4

    .line 4501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4502
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 4505
    :cond_0
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4506
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4508
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4509
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4510
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 4511
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_3

    .line 4512
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4513
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    .line 4516
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    return p0

    .line 4517
    :cond_3
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_5

    .line 4518
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4519
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    .line 4522
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    return p0

    :cond_5
    return v2
.end method

.method public getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 5950
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 8

    .line 4867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4868
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-wide/16 v2, 0x0

    .line 4871
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4870
    const-string v1, "com.android.contacts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4872
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4873
    invoke-static {p0, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-wide/16 v2, 0x0

    move v4, p1

    move-object v1, p2

    .line 4879
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4882
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4883
    throw p0

    .line 4874
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not allow to call grantImplicitAccess"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 7

    .line 5751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5752
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/4 v4, 0x1

    .line 5754
    const-string v5, "getHarmfulAppInfo"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5757
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    .line 5758
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 5759
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5763
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5767
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5765
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .locals 12

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x80

    move-object v0, p0

    move v5, p2

    .line 1100
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 1102
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    .line 1106
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1108
    iget-object p1, v0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p1, v5}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    if-nez p1, :cond_2

    .line 1117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    move v10, v2

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    move v9, v5

    move-object v5, p0

    .line 1120
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object p0

    .line 1122
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz p0, :cond_3

    .line 1123
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_3

    .line 1124
    iget-object p1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, p0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    return-object p2

    .line 1131
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    :goto_2
    if-ge v11, p0, :cond_6

    .line 1133
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1135
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1137
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    return-object p2
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .locals 1

    .line 1193
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1194
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getInstallReason(Ljava/lang/String;I)I
    .locals 6

    .line 5575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 5576
    const-string v5, "get install reason"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5578
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5579
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5582
    :cond_0
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;
    .locals 1

    .line 5166
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5169
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5170
    sget-object p0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    return-object p0

    :cond_0
    if-eqz v0, :cond_2

    .line 5173
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 5178
    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
    .locals 12

    .line 5185
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 5186
    const-string v5, "getInstallSourceInfo"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5194
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    .line 5199
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 5201
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5203
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v9, p2

    goto :goto_0

    :cond_2
    move-object v9, v3

    .line 5208
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 5210
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    const/16 v5, 0x3e8

    if-eq v1, v5, :cond_4

    .line 5212
    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v4, :cond_5

    .line 5218
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v5, :cond_6

    .line 5219
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine;->isCallerFromManagedUserOrProfile(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object v10, p2

    goto :goto_3

    :cond_6
    move-object v10, v3

    .line 5224
    :goto_3
    iget-boolean v3, p0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v3, :cond_a

    .line 5229
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_4

    .line 5230
    :cond_7
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5231
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    goto :goto_5

    :cond_8
    :goto_4
    move-object p1, p2

    :cond_9
    :goto_5
    move-object v6, p1

    goto :goto_6

    .line 5236
    :cond_a
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    move-object v6, v9

    goto :goto_6

    .line 5242
    :cond_b
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 5243
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 5245
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_c
    move-object v6, p2

    .line 5251
    :goto_6
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz p1, :cond_e

    .line 5253
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 5255
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    move-object p1, p2

    :cond_e
    if-eqz p1, :cond_f

    .line 5263
    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    move-object v8, p2

    goto :goto_7

    :cond_f
    move-object v8, p1

    .line 5271
    :goto_7
    iget-object p1, p0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v6, :cond_10

    if-eqz p1, :cond_10

    .line 5272
    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v0, v1, :cond_10

    .line 5274
    new-instance p2, Landroid/content/pm/SigningInfo;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {p2, p1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    :cond_10
    move-object v7, p2

    .line 5279
    new-instance v5, Landroid/content/pm/InstallSourceInfo;

    iget v11, p0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-direct/range {v5 .. v11}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v5
.end method

.method public getInstalledApplications(JIIZ)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v6, p4

    .line 4678
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4679
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 4681
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 4682
    :cond_1
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v7

    const-wide/32 v1, 0x402000

    and-long/2addr v1, v7

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    move v10, v9

    goto :goto_0

    :cond_2
    move v10, v2

    :goto_0
    const-wide/32 v11, 0x40000000

    and-long/2addr v11, v7

    cmp-long v1, v11, v4

    if-eqz v1, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v2

    :goto_1
    if-nez v10, :cond_4

    const-wide v12, 0x100000000L

    and-long/2addr v12, v7

    cmp-long v1, v12, v4

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v9, v2

    :goto_2
    if-nez p5, :cond_5

    .line 4689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get installed application info"

    const/4 v3, 0x0

    move/from16 v2, p3

    .line 4688
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4698
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    if-nez v10, :cond_6

    if-eqz v9, :cond_7

    :cond_6
    move/from16 v2, p3

    move-wide v4, v7

    move-object v7, v0

    goto/16 :goto_5

    .line 4741
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4742
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4743
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    if-nez v11, :cond_9

    .line 4747
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    .line 4750
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v3, p3

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v2

    move-object v7, v0

    if-eqz v2, :cond_b

    :cond_a
    :goto_4
    move-object v0, v7

    move-wide v7, v4

    goto :goto_3

    .line 4753
    :cond_b
    invoke-virtual {v7, v1, v6, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    move v2, v3

    .line 4757
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    move-object v0, v12

    move-wide/from16 v17, v4

    move-object v5, v1

    move v4, v2

    move-wide/from16 v1, v17

    .line 4756
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move v2, v4

    move-wide/from16 v4, v17

    if-eqz v3, :cond_a

    .line 4760
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v1, v3}, Lcom/mediatek/server/pm/PmsExt;->updateApplicationInfoForRemovable(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4761
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v3, v1}, Lcom/mediatek/server/pm/PmsExt;->needSkipAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_4

    .line 4762
    :cond_d
    invoke-virtual {v7, v0}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4763
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    return-object v9

    .line 4700
    :goto_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4701
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4704
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/32 v12, 0x400000

    or-long/2addr v12, v4

    goto :goto_7

    :cond_f
    move-wide v12, v4

    .line 4707
    :goto_7
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_14

    if-nez v11, :cond_10

    .line 4708
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    .line 4711
    :cond_10
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    if-eqz v9, :cond_11

    .line 4712
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 4713
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    move v3, v2

    move v2, v6

    move-object v0, v7

    .line 4716
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v6

    move-object v7, v0

    move v14, v2

    move-wide v15, v4

    if-eqz v6, :cond_12

    :goto_8
    move v2, v3

    move v6, v14

    :goto_9
    move-wide v4, v15

    goto :goto_6

    .line 4719
    :cond_12
    invoke-virtual {v7, v1, v14, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_8

    .line 4722
    :cond_13
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move v2, v3

    .line 4723
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    move-object v5, v1

    move v4, v2

    move-wide v1, v12

    .line 4722
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v1, v5

    if-eqz v0, :cond_15

    .line 4725
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_14
    move-wide v15, v4

    move v14, v6

    move-wide v2, v12

    .line 4730
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move/from16 v5, p3

    move-object v0, v7

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v0, v1

    :cond_15
    :goto_a
    if-eqz v0, :cond_16

    .line 4735
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v1, v0}, Lcom/mediatek/server/pm/PmsExt;->updateApplicationInfoForRemovable(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4736
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v1, v0}, Lcom/mediatek/server/pm/PmsExt;->needSkipAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    :goto_b
    move-object/from16 v7, p0

    move/from16 v2, p3

    move/from16 v6, p4

    goto :goto_9

    .line 4737
    :cond_17
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_18
    return-object v8
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 1704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1705
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1706
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 1709
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p1

    const/4 v4, 0x0

    .line 1711
    const-string v5, "get installed packages"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1714
    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;
    .locals 13

    const-wide/32 v0, 0x402000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/32 v5, 0x40000000

    and-long/2addr v5, p1

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    const-wide/32 v7, 0x200000

    and-long/2addr v7, p1

    cmp-long v5, v7, v2

    if-eqz v5, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    if-nez v0, :cond_3

    const-wide v8, 0x100000000L

    and-long/2addr v8, p1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_3

    move v8, v4

    goto :goto_3

    :cond_3
    move v8, v1

    :goto_3
    if-nez v0, :cond_4

    if-eqz v8, :cond_5

    :cond_4
    move/from16 v3, p3

    move/from16 v2, p4

    goto/16 :goto_5

    .line 1762
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1763
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1764
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v7, :cond_8

    .line 1767
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    .line 1768
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/server/pm/PmsExt;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 1772
    :cond_7
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object v1, v2

    :cond_8
    if-nez v6, :cond_9

    .line 1777
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move-object v0, p0

    move-wide v4, p1

    move/from16 v3, p3

    move/from16 v2, p4

    .line 1780
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_4

    .line 1783
    :cond_a
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_4

    .line 1786
    :cond_b
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1788
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1728
    :goto_5
    new-instance v9, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1729
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v7, :cond_e

    .line 1732
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-eqz v11, :cond_c

    sget-object v11, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    .line 1733
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/server/pm/PmsExt;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_6

    .line 1736
    :cond_d
    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1737
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-eqz v11, :cond_e

    move-object v1, v11

    :cond_e
    if-nez v6, :cond_f

    .line 1742
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_6

    .line 1745
    :cond_f
    invoke-interface {v1, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    if-eqz v8, :cond_10

    .line 1746
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v12

    if-nez v12, :cond_10

    .line 1747
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v11

    if-nez v11, :cond_10

    goto :goto_6

    :cond_10
    move-object v0, p0

    move-wide v4, p1

    .line 1750
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_6

    .line 1753
    :cond_11
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_6

    .line 1756
    :cond_12
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1758
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    move-object v8, v9

    .line 1792
    :cond_14
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 5147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5148
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5152
    iget-object p1, p2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 5154
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5156
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5155
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1

    .line 5150
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .locals 0

    .line 5963
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5964
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 5944
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .locals 2

    .line 1878
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1879
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 1881
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1882
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 1883
    instance-of v0, p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1884
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1885
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    .line 1886
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1887
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;
    .locals 7

    .line 4964
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4965
    const-string v5, "getInstrumentationInfoAsUser"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v5, v2

    .line 4967
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    const/4 p3, 0x0

    if-nez p0, :cond_0

    return-object p3

    .line 4968
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 4969
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4970
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v6, :cond_3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v3, p1

    move v2, v1

    move-object v1, v6

    .line 4972
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p3

    .line 4976
    :cond_2
    iget-object p1, v0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 4977
    invoke-interface {v1, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    int-to-long v2, p2

    move-object v6, v1

    move-object v1, p0

    .line 4978
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object p3
.end method

.method public final getIsolatedOwner(I)I
    .locals 2

    .line 1897
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v0, :cond_0

    return p0

    .line 1899
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No owner UID found for isolated UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5383
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5384
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5385
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v2, :cond_1

    .line 5387
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5386
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5391
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5392
    new-instance v0, Landroid/content/pm/KeySet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 5388
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5389
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 7

    .line 1201
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .line 1203
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 6

    .line 4400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4401
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 4404
    :cond_0
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4405
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4407
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4408
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4410
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected isolated uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to have an owner"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4416
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4417
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 4418
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_4

    .line 4419
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4420
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v2

    .line 4423
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4424
    :cond_4
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_6

    .line 4425
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4426
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    .line 4429
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 4437
    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 4440
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4441
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v0

    .line 4444
    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4445
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 4446
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_8

    .line 4447
    aget v5, p1, v4

    .line 4448
    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4449
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result v5

    .line 4451
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4453
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 4456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected isolated uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to have an owner"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4459
    :cond_3
    :goto_1
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 4460
    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 4461
    instance-of v6, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_5

    .line 4462
    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4463
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4464
    aput-object v0, v3, v4

    goto :goto_2

    .line 4466
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shared:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_2

    .line 4468
    :cond_5
    instance-of v6, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_7

    .line 4469
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4470
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4471
    aput-object v0, v3, v4

    goto :goto_2

    .line 4473
    :cond_6
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_2

    .line 4476
    :cond_7
    aput-object v0, v3, v4

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_8
    return-object v3

    :cond_9
    :goto_3
    return-object v0
.end method

.method public getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 7

    .line 3626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3627
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3629
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3630
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 3631
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3632
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3633
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 4

    const/16 v0, 0x3e8

    .line 953
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 955
    :cond_0
    array-length v1, p1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    if-ge v0, v1, :cond_1

    .line 957
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 2

    const-wide/16 v0, -0x1

    .line 947
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 949
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getPackageGids(Ljava/lang/String;JI)[I
    .locals 9

    .line 3745
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3746
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3747
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    const/4 v6, 0x0

    .line 3748
    const-string v7, "getPackageGids"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3751
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 3755
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3756
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3757
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3758
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3759
    iget-object p1, v2, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3760
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    .line 3759
    invoke-static {v4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object p0

    return-object p0

    :cond_2
    const-wide v5, 0x100402000L

    and-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_3

    .line 3764
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3765
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3766
    iget-object p1, v2, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3767
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {v4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 3766
    invoke-interface {p1, p0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .locals 8

    const-wide/16 v2, -0x1

    .line 1592
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v7, p4

    .line 1591
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .locals 8

    .line 1603
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1604
    :cond_0
    invoke-virtual {p0, p4, p5, p7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v6

    .line 1605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get package info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v1, p1

    move-wide v4, v6

    move v6, p6

    move v7, v2

    move-wide v2, p2

    .line 1608
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .locals 13

    .line 1616
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v0, 0x200000

    and-long v0, p4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/32 v5, 0x40000000

    and-long v5, p4, v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    move v1, v4

    :cond_1
    const/4 v6, 0x0

    if-eqz v0, :cond_5

    .line 1622
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_2

    .line 1624
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v6

    :cond_2
    move-object v0, p0

    move/from16 v2, p6

    move/from16 v3, p7

    move-object v1, v4

    move-wide/from16 v4, p4

    .line 1627
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p1

    move v9, v3

    move-wide v7, v4

    move v5, v2

    if-eqz p1, :cond_3

    return-object v6

    .line 1630
    :cond_3
    invoke-virtual {p0, v1, v5, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v6

    .line 1633
    :cond_4
    invoke-virtual {p0, v1, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_5
    move-wide/from16 v7, p4

    move/from16 v5, p6

    move/from16 v9, p7

    .line 1637
    iget-object v10, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1638
    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-eqz v0, :cond_6

    if-eqz v10, :cond_6

    .line 1639
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-nez v11, :cond_6

    return-object v6

    .line 1642
    :cond_6
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v11, :cond_7

    .line 1643
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPackageInfo "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PackageManager"

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v10, :cond_b

    .line 1646
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez v1, :cond_8

    .line 1647
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v6

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move v2, v5

    move-wide v4, v7

    move v3, v9

    .line 1650
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p1

    move v9, v3

    move-wide v7, v4

    move v5, v2

    if-eqz p1, :cond_9

    return-object v6

    :cond_9
    if-eqz v1, :cond_a

    .line 1653
    invoke-virtual {p0, v1, v5, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v6

    .line 1657
    :cond_a
    invoke-virtual {p0, v1, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_b
    if-nez v0, :cond_f

    const-wide v0, 0x100402000L

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 1660
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v6

    :cond_c
    move-object v0, p0

    move v2, v5

    move-wide v4, v7

    move v3, v9

    .line 1662
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p1

    if-eqz p1, :cond_d

    return-object v6

    .line 1665
    :cond_d
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v6

    .line 1668
    :cond_e
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_f
    return-object v6
.end method

.method public getPackageOrSharedUser(I)Landroid/util/Pair;
    .locals 1

    .line 5885
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5886
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5887
    check-cast p0, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 5888
    :cond_0
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_1

    .line 5889
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getPackageStartability(ZLjava/lang/String;II)I
    .locals 2

    .line 3644
    invoke-static {p4}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    .line 3645
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3646
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p3

    if-nez p3, :cond_4

    .line 3647
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3651
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x2

    return p0

    .line 3655
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    if-nez v0, :cond_3

    .line 3659
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isEncryptionAware(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 2

    const-wide/16 v0, -0x1

    .line 1693
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1695
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 1696
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 0

    .line 4202
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4204
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 1

    .line 1680
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 2

    const-wide/16 v0, -0x1

    .line 1685
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1687
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getPackageStates()Landroid/util/ArrayMap;
    .locals 0

    .line 3601
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getPackageUid(Ljava/lang/String;JI)I
    .locals 6

    .line 5539
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 5540
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5541
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    const/4 v4, 0x0

    .line 5542
    const-string v5, "getPackageUid"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v5, v1

    move v4, v2

    move-object v1, p1

    move-wide v2, p2

    .line 5544
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p0

    return p0
.end method

.method public getPackageUidInternal(Ljava/lang/String;JII)I
    .locals 4

    .line 2721
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2722
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v1, :cond_0

    .line 2723
    invoke-static {v0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2724
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2725
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2726
    invoke-virtual {p0, v0, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2727
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p0

    invoke-static {p4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_0
    const-wide v0, 0x100402000L

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2731
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2732
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2733
    invoke-virtual {p0, p1, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2734
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {p4, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getPackagesForAppId(I)Ljava/util/List;
    .locals 0

    .line 5811
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5812
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_0

    .line 5813
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 5814
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5815
    :cond_0
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_2

    .line 5816
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 5817
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5819
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5821
    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 5824
    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .line 2000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesForUidInternal(II)[Ljava/lang/String;
    .locals 3

    .line 2004
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2005
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2006
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 2009
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2010
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 2012
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2013
    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;
    .locals 5

    .line 2019
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p3

    .line 2020
    instance-of v0, p3, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_0

    return-object v1

    .line 2024
    :cond_0
    check-cast p3, Lcom/android/server/pm/SharedUserSetting;

    .line 2026
    invoke-virtual {p3}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p3

    .line 2027
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p4

    .line 2028
    new-array v0, p4, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p4, :cond_2

    .line 2031
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2032
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2033
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 2034
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2037
    :cond_2
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 2038
    :cond_3
    instance-of p4, p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p4, :cond_4

    .line 2039
    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2040
    invoke-interface {p3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 2041
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-nez p0, :cond_4

    .line 2042
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 10

    .line 4613
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4614
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v6

    .line 4615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get packages holding permissions"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-wide v0, 0x100402000L

    and-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4620
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4621
    array-length v0, p1

    new-array v4, v0, [Z

    .line 4622
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4623
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p0

    move-object v3, p1

    move-wide v5, v6

    move v7, p4

    .line 4626
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V

    move-wide v6, v5

    goto :goto_2

    .line 4629
    :cond_3
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    .line 3986
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v3

    .line 3987
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v4, :cond_12

    .line 3990
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v10, :cond_0

    move-wide/from16 v12, p2

    goto/16 :goto_6

    .line 3995
    :cond_0
    invoke-interface {v10, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    move-wide/from16 v12, p2

    invoke-static {v11, v12, v13}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v11

    if-nez v11, :cond_1

    goto/16 :goto_6

    .line 3999
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 4000
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_1

    .line 4033
    :cond_2
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    if-eqz v14, :cond_11

    .line 4034
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibraries()Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 4035
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 4036
    :cond_3
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-eqz v11, :cond_4

    goto/16 :goto_6

    :cond_4
    if-nez v8, :cond_5

    .line 4040
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4042
    :cond_5
    new-instance v11, Landroid/content/pm/VersionedPackage;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4043
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v5

    invoke-direct {v11, v14, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4042
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 4002
    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v5

    .line 4003
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibrariesVersions()[J

    move-result-object v6

    goto :goto_3

    .line 4004
    :cond_8
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v6

    .line 4005
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 4006
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getUsesSdkLibrariesOptional()[Z

    move-result-object v14

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    .line 4008
    :goto_4
    invoke-static {v5, v11}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_a

    goto :goto_6

    .line 4012
    :cond_a
    aget-wide v15, v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v17

    cmp-long v6, v15, v17

    if-eqz v6, :cond_b

    goto :goto_6

    .line 4016
    :cond_b
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    if-nez v8, :cond_d

    .line 4020
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    if-nez v9, :cond_e

    .line 4023
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4026
    :cond_e
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4027
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 4028
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getManifestPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4030
    :cond_f
    new-instance v11, Landroid/content/pm/VersionedPackage;

    .line 4031
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide v0

    invoke-direct {v11, v6, v0, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4030
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_10

    .line 4032
    aget-boolean v0, v14, v5

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    goto/16 :goto_0

    .line 4048
    :cond_12
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPersistentApplications(ZI)Ljava/util/List;
    .locals 10

    .line 5658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5660
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 5661
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v1, :cond_5

    .line 5663
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v9}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5664
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    const/high16 v4, 0x40000

    and-int/2addr v4, p2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 5667
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v8

    :goto_1
    const/high16 v7, 0x80000

    and-int/2addr v7, p2

    if-eqz v7, :cond_1

    .line 5669
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v5, v8

    .line 5671
    :goto_2
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p1, :cond_2

    .line 5672
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    .line 5674
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    if-eqz v7, :cond_4

    int-to-long v3, p2

    .line 5677
    invoke-interface {v7, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 5676
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5679
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 0

    .line 3595
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateFlagsForUid(I)I
    .locals 4

    .line 4529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4530
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 4533
    :cond_0
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4534
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4536
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4537
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4538
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 4539
    instance-of v3, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_3

    .line 4540
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4541
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    .line 4544
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    return p0

    .line 4545
    :cond_3
    instance-of v3, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_5

    .line 4546
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4547
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    .line 4550
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    return p0

    :cond_5
    return v2
.end method

.method public getProcessesForUid(I)Landroid/util/ArrayMap;
    .locals 3

    .line 5861
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5862
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5864
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 5865
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5866
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 5867
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 5868
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    .line 5869
    :cond_1
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 5870
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 5871
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v2

    .line 5872
    :cond_2
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2

    .line 2049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2051
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2054
    throw p0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .locals 11

    .line 4133
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return-object v7

    .line 4134
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4135
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v8

    const/4 v4, 0x0

    .line 4136
    const-string v5, "get provider info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4138
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v3, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-result-object v10

    .line 4139
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProviderInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v10, :cond_2

    return-object v7

    .line 4145
    :cond_2
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 4146
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 4150
    :cond_3
    invoke-static {v5, v10, v8, v9, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v4, 0x4

    move-object v0, p0

    move-object v3, p1

    move v2, v1

    move-object v1, v5

    move v5, p4

    .line 4151
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v7

    .line 4155
    :cond_4
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4157
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move v4, p4

    move-object v5, v1

    move-wide v1, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v7

    :cond_5
    move-object v7, v5

    move-object v5, v0

    .line 4161
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move v6, p4

    move-object v4, v3

    move-wide v2, v1

    move-object v1, v10

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_0
    return-object v7
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .locals 11

    .line 3824
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3825
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3826
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    const/4 v6, 0x0

    .line 3827
    const-string v7, "get receiver info"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3830
    iget-object p0, v2, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    .line 3831
    sget-boolean p4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getReceiverInfo "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "PackageManager"

    invoke-static {v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p0, :cond_2

    return-object v1

    .line 3838
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 3839
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-nez p4, :cond_3

    goto :goto_0

    .line 3843
    :cond_3
    invoke-static {v10, p0, p2, p3, v4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result p4

    if-eqz p4, :cond_5

    const/4 v6, 0x2

    move-object v5, p1

    move v7, v4

    move v4, v3

    move-object v3, v10

    .line 3844
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    move v4, v7

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    move v7, v4

    .line 3847
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    .line 3848
    invoke-interface {v3, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    move-object v5, p0

    move-object v10, v3

    move v9, v7

    move-wide v6, p2

    .line 3847
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3613
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .locals 6

    .line 1833
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1834
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1835
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    const/4 v4, 0x0

    .line 1836
    const-string v5, "get service info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    move v5, v1

    move v4, v2

    move-object v1, p1

    move-wide v2, p2

    .line 1839
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;
    .locals 9

    .line 1844
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object v2

    .line 1845
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_0

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    return-object v0

    .line 1853
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    move-object v3, v2

    move-object v2, v1

    .line 1854
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    move-object v8, v2

    move v2, v1

    move-object v1, v8

    move-object v8, v3

    if-eqz v2, :cond_4

    .line 1855
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    const/4 v6, 0x3

    move-object v2, p0

    move-object v5, p1

    move v7, p4

    move v4, p5

    .line 1857
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 1862
    :cond_3
    invoke-interface {v3, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    move v6, p4

    move-object v7, v3

    move-object v2, v8

    move-wide v3, p2

    .line 1861
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 36

    move-object/from16 v0, p0

    move/from16 v5, p4

    .line 3857
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    .line 3858
    :cond_0
    const-string/jumbo v1, "userId must be >= 0"

    invoke-static {v5, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 3859
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3860
    invoke-virtual {v0, v9}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v8

    :cond_1
    move-wide/from16 v1, p2

    .line 3864
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 3866
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    .line 3867
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    .line 3869
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, p1

    .line 3871
    invoke-virtual {v0, v1, v9, v5, v12}, Lcom/android/server/pm/ComputerEngine;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.REQUEST_DELETE_PACKAGES"

    .line 3873
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    .line 3875
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v13, v12

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    move v13, v1

    .line 3879
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    .line 3881
    invoke-virtual {v14}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v15

    move-object v2, v8

    move v1, v12

    :goto_2
    if-ge v1, v15, :cond_a

    .line 3883
    invoke-virtual {v14, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v3, :cond_4

    move/from16 v32, v1

    move v4, v9

    move-wide v0, v10

    goto/16 :goto_7

    .line 3888
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    move-object/from16 v16, v2

    move v2, v12

    :goto_3
    if-ge v2, v4, :cond_5

    .line 3890
    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    if-nez v13, :cond_6

    .line 3891
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move/from16 v32, v1

    move v4, v9

    move-wide v0, v10

    goto/16 :goto_6

    .line 3894
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3895
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v28

    move v6, v1

    .line 3898
    :try_start_0
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move/from16 v20, v2

    move-object v7, v3

    .line 3899
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    const-wide/32 v21, 0x4000000

    or-long v21, v10, v21

    move/from16 v23, v6

    .line 3901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move/from16 v34, v4

    move-object/from16 v33, v7

    move/from16 v35, v20

    move/from16 v32, v23

    move v7, v5

    move-wide/from16 v4, v21

    .line 3897
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_7

    .line 3906
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v9

    move-wide v0, v10

    goto :goto_5

    :cond_7
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3908
    new-instance v20, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 3909
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v23

    .line 3910
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v25

    .line 3911
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v27

    .line 3912
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    move-object/from16 v29, v8

    goto :goto_4

    .line 3914
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v29, v0

    .line 3915
    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v30

    move-object/from16 v0, p0

    move/from16 v5, p4

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v17

    .line 3916
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v31

    move-wide v0, v2

    invoke-direct/range {v20 .. v31}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;ZLandroid/util/Pair;)V

    move-object/from16 v2, v20

    if-nez v16, :cond_9

    .line 3918
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    move-object/from16 v3, v16

    .line 3920
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v3

    :goto_5
    add-int/lit8 v2, v35, 0x1

    move/from16 v5, p4

    move-wide v10, v0

    move v9, v4

    move/from16 v1, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    move-object/from16 v0, p0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    .line 3906
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3907
    throw v0

    :goto_6
    move-object/from16 v2, v16

    :goto_7
    add-int/lit8 v3, v32, 0x1

    move/from16 v5, p4

    move-wide v10, v0

    move v1, v3

    move v9, v4

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_a
    if-eqz v2, :cond_b

    .line 3924
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_b
    return-object v8
.end method

.method public getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 3620
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0}, Lcom/android/server/pm/SharedLibrariesRead;->getAll()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .locals 0

    .line 1869
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/SharedLibrariesRead;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .locals 0

    .line 5920
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromAppId(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserPackages(I)Landroid/util/ArraySet;
    .locals 0

    .line 5926
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5

    .line 5702
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5703
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5707
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5708
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 5709
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    .line 5710
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_2

    .line 5713
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5714
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 5715
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5718
    :cond_2
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_3

    return-object p0

    .line 5719
    :cond_3
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 5704
    :cond_4
    :goto_1
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0
.end method

.method public getSharedUsers()Landroid/util/ArrayMap;
    .locals 0

    .line 6017
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUsers()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getSigningDetails(I)Landroid/content/pm/SigningDetails;
    .locals 0

    .line 2999
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 3000
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3002
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_0

    .line 3003
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0

    .line 3004
    :cond_0
    instance-of p1, p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p1, :cond_1

    .line 3005
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3006
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0

    .line 3009
    :cond_1
    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .locals 0

    .line 2991
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2995
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0
.end method

.method public final getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;
    .locals 2

    .line 4267
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4268
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4272
    :cond_0
    instance-of v1, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_2

    .line 4273
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    .line 4274
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 4277
    :cond_1
    iget-object p0, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0

    .line 4278
    :cond_2
    instance-of v1, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_4

    .line 4279
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4280
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 4283
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5401
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5402
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5403
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v2, :cond_3

    .line 5405
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5404
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5410
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 5412
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "May not access signing KeySet of other apps."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5414
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5415
    new-instance v0, Landroid/content/pm/KeySet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 5406
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeySet requested for unknown package: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSystemSharedLibraryNamesAndPaths()Landroid/util/ArrayMap;
    .locals 16

    .line 4171
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    .line 4172
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 4173
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 4175
    invoke-virtual {v0, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/WatchedLongSparseArray;

    if-nez v5, :cond_0

    goto :goto_2

    .line 4179
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_3

    .line 4181
    invoke-virtual {v5, v7}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SharedLibraryInfo;

    .line 4182
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v9

    if-nez v9, :cond_1

    .line 4183
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4187
    :cond_1
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p0

    invoke-virtual {v10, v9}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 4188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 4189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const-wide/32 v14, 0x4000000

    .line 4188
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4191
    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .locals 3

    .line 3776
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 3777
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3780
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3781
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3780
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 3784
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 4487
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4488
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return v0

    .line 4491
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromId(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4493
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4492
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    if-nez p0, :cond_2

    .line 4494
    iget p0, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return p0

    :cond_2
    return v0
.end method

.method public getUidTargetSdkVersion(I)I
    .locals 4

    .line 5830
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5831
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5833
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 5834
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 5835
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    const/16 v0, 0x2710

    if-eqz p1, :cond_3

    .line 5836
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 5838
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 5840
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 5842
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5843
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5844
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 5849
    :cond_3
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_4

    .line 5850
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 5851
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5852
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method public final getUsed()I
    .locals 0

    .line 506
    iget p0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return p0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .locals 0

    .line 6023
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .locals 6

    .line 5063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "when asking about packages for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5066
    iget-object p0, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5067
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5070
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    return-object p0

    .line 5068
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersion()I
    .locals 0

    .line 491
    iget p0, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    return p0
.end method

.method public getVisibilityAllowList(Ljava/lang/String;I)[I
    .locals 1

    .line 5483
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5485
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;
    .locals 2

    const/16 v0, 0x3e8

    .line 5473
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5477
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getVolumePackages(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 6011
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final hasCrossUserPermission(IIIZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p5, :cond_0

    if-ne p3, p2, :cond_0

    return v0

    .line 2224
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 2227
    :cond_1
    const-string p2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 2229
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 2231
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 2233
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2234
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/ComputerEngine;->checkIsolatedOwnerHasPermission(IZ)Z

    move-result p0

    return p0

    :cond_5
    return v0
.end method

.method public final hasNonNegativePriority(Ljava/util/List;)Z
    .locals 1

    .line 2245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget p0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final hasPermission(Ljava/lang/String;I)Z
    .locals 1

    .line 2254
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSigningCertificate(Ljava/lang/String;[BI)Z
    .locals 4

    .line 4321
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4325
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4326
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4327
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4329
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    const/4 p0, 0x1

    if-eq p3, p0, :cond_2

    return v0

    .line 4336
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result p0

    return p0

    .line 4334
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public hasUidSigningCertificate(I[BI)Z
    .locals 2

    .line 4345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4346
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4348
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    return p1

    .line 4356
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result p0

    return p0

    .line 4354
    :cond_2
    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result p0

    return p0
.end method

.method public instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .locals 0

    .line 3687
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p0, :cond_0

    .line 3688
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationEffectivelyEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2

    const/4 v0, 0x0

    .line 5360
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5361
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 5360
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_1

    .line 5363
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 5368
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_1
    const/4 p0, 0x1

    if-ne p2, p0, :cond_2

    return p0

    :catch_0
    :cond_2
    return v0
.end method

.method public final isCallerFromManagedUserOrProfile(I)Z
    .locals 1

    .line 2290
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_0

    .line 2291
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 5561
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 5567
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5566
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5569
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    invoke-static {p0, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2272
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public final isCallerSameApp(Ljava/lang/String;IZ)Z
    .locals 3

    .line 2277
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2278
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2279
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 2281
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p3, :cond_2

    .line 2282
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2283
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    :cond_2
    if-eqz p1, :cond_3

    .line 2286
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p1

    if-ne p0, p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;Landroid/os/UserHandle;)Z
    .locals 3

    const/4 v0, 0x0

    .line 5334
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 5335
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 5336
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5337
    invoke-virtual {v2, v1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5339
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_1

    return v0

    :cond_0
    if-eq v1, v2, :cond_1

    return v0

    .line 5346
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5347
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 5346
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0

    if-nez p0, :cond_2

    .line 5349
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    if-ne p0, v2, :cond_3

    return v2

    :catch_0
    :cond_3
    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 v0, 0x1

    .line 2295
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 2298
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x4

    .line 2301
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .locals 5

    const/high16 v0, 0x200000

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_4

    .line 2307
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return v2

    .line 2312
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    .line 2314
    :goto_0
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_9

    .line 2318
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_5

    return v2

    .line 2323
    :cond_5
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v2

    .line 2325
    :goto_2
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p0

    and-int/2addr p0, v0

    if-nez p0, :cond_7

    move p0, v3

    goto :goto_3

    :cond_7
    move p0, v2

    :goto_3
    if-eqz p1, :cond_8

    if-nez p0, :cond_8

    return v3

    :cond_8
    return v2

    :cond_9
    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    .line 2329
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 2331
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_a

    return v3

    :cond_a
    return v2

    :cond_b
    const/4 v0, 0x4

    if-ne p2, v0, :cond_d

    .line 2333
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 2335
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_c

    return v3

    :cond_c
    return v2

    :cond_d
    if-nez p2, :cond_e

    .line 2337
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :cond_e
    return v2
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z
    .locals 1

    .line 2354
    invoke-virtual {p1}, Landroid/content/Intent;->isImplicitImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInstallDisabledForPackage(Ljava/lang/String;II)Z
    .locals 3

    .line 3968
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    .line 3969
    invoke-virtual {v0, v2, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3973
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    .line 3974
    invoke-interface {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;->getPackageTrustedToInstallApps(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return p3

    :cond_2
    :goto_0
    return v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .locals 6

    .line 2359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 2360
    const-string v5, "isInstantApp"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2363
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .locals 0

    .line 2371
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isInstantAppInternalBody(Ljava/lang/String;II)Z
    .locals 1

    .line 2376
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p3

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2382
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2383
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2385
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    .line 2384
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2387
    :cond_1
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .locals 3

    .line 2395
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2398
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 2401
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    .line 2404
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    return v1

    .line 2407
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4

    return v1

    :cond_4
    if-nez p4, :cond_5

    .line 2410
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    return v1

    .line 2413
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_6

    .line 2416
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 2417
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_a

    :cond_7
    return v1

    .line 2421
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 2423
    :cond_9
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 2429
    :cond_a
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result p0

    return p0

    :cond_b
    :goto_0
    return v1
.end method

.method public isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    .line 2438
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2439
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v2

    .line 2440
    :goto_1
    const-string v6, "PackageManager"

    if-eqz v4, :cond_2

    .line 2441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking if instant app resolution allowed, resolvedActivities = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v7, v2

    :goto_2
    if-ge v7, v3, :cond_8

    .line 2445
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2446
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2447
    iget-object v10, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 2450
    iget-boolean v8, v8, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v8, :cond_4

    .line 2451
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v13, p1

    move/from16 v16, p3

    move-wide/from16 v14, p5

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2453
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_3

    .line 2454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DENY instant app; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", approved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    move/from16 v8, p3

    .line 2460
    invoke-interface {v12, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2461
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_5

    .line 2462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DENY instant app installed; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :cond_6
    move/from16 v8, p3

    if-eqz v4, :cond_7

    .line 2468
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_8
    return v5
.end method

.method public final isKnownIsolatedComputeApp(I)Z
    .locals 3

    .line 5901
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5904
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5905
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5907
    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result p0

    if-ne p1, p0, :cond_1

    return v2

    .line 5911
    :cond_1
    const-class p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;

    .line 5912
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;

    if-eqz p0, :cond_2

    .line 5914
    invoke-interface {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;->getInferenceServiceUid()I

    move-result p0

    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .locals 8

    .line 3667
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3668
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v6, 0x0

    .line 3669
    const-string v7, "is package available"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3672
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3673
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3674
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 3677
    :cond_1
    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    if-eqz p0, :cond_2

    const-wide/16 p1, 0x0

    .line 3679
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public isPackageQuarantinedForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 5082
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result p0

    return p0
.end method

.method public isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 4

    .line 5420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5421
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 5427
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5428
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eqz v1, :cond_3

    .line 5431
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5430
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5435
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object p2

    .line 5436
    instance-of v0, p2, Lcom/android/server/pm/KeySetHandle;

    if-eqz v0, :cond_2

    .line 5437
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5438
    check-cast p2, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result p0

    return p0

    :cond_2
    return v2

    .line 5432
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return v2
.end method

.method public isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 4

    .line 5445
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5446
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 5452
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5453
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eqz v1, :cond_3

    .line 5456
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5455
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5460
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object p2

    .line 5461
    instance-of v0, p2, Lcom/android/server/pm/KeySetHandle;

    if-eqz v0, :cond_2

    .line 5462
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object p0

    .line 5463
    check-cast p2, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result p0

    return p0

    :cond_2
    return v2

    .line 5457
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeySet requested for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PackageManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return v2
.end method

.method public isPackageStoppedForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 5088
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result p0

    return p0
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 5076
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p0

    return p0
.end method

.method public final isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z
    .locals 5

    .line 2477
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 2478
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-wide/32 v3, 0x10000

    and-long/2addr p4, v3

    const-wide/16 v3, 0x0

    cmp-long p4, p4, v3

    if-eqz p4, :cond_0

    move p4, v2

    :goto_0
    move p5, p2

    move-object p2, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move p4, v1

    goto :goto_0

    .line 2481
    :goto_1
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    .line 2484
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2485
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2486
    iget-boolean p1, p1, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    if-eqz p1, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method public final isRecentsAccessingChildProfiles(II)Z
    .locals 4

    .line 2494
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2495
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2498
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2500
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2501
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_1

    .line 2506
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 2504
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2506
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2507
    throw p0
.end method

.method public final isSameProfileGroup(II)Z
    .locals 2

    .line 2512
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2514
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2516
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2517
    throw p0
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;II)Z
    .locals 1

    .line 5094
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    .line 5095
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5097
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    .line 5098
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5099
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isUidPrivileged(I)Z
    .locals 3

    .line 4557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4560
    :cond_0
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4561
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4563
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 4564
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    .line 4565
    instance-of p1, p0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_3

    .line 4566
    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    .line 4568
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    .line 4569
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_4

    .line 4571
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4572
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4576
    :cond_3
    instance-of p1, p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_4

    .line 4577
    check-cast p0, Lcom/android/server/pm/PackageSetting;

    .line 4578
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public final maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-wide/32 v2, 0x800000

    and-long v2, p4, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    const/4 v12, 0x0

    .line 1395
    const-string v13, "PackageManager"

    if-nez v0, :cond_5

    .line 1396
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const-wide/32 v2, 0x1800040

    or-long v4, p4, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    move v15, v6

    move-object v6, v1

    .line 1404
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    :goto_1
    if-ltz v1, :cond_6

    .line 1405
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1406
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1407
    iget-object v3, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1408
    invoke-interface {v3, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1409
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v1, v3

    move v5, v15

    move-wide/from16 v3, p4

    move-object v15, v2

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_1

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v10

    goto :goto_3

    .line 1417
    :cond_2
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_3

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app not approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v11

    :goto_2
    move-object v14, v12

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    move/from16 v15, p6

    goto :goto_1

    :cond_5
    move-object v6, v1

    :cond_6
    move v0, v10

    goto :goto_2

    :goto_3
    if-nez v0, :cond_8

    if-nez v14, :cond_7

    .line 1432
    const-string/jumbo v0, "resolveEphemeral"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1433
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1435
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v0

    move-wide v3, v8

    .line 1436
    new-instance v8, Landroid/content/pm/InstantAppRequest;

    const/16 v16, 0x0

    .line 1441
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v18

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    const/4 v13, 0x0

    move/from16 v15, p6

    move/from16 v17, p7

    move/from16 v14, p8

    move-wide/from16 p4, v1

    move v5, v11

    move-object/from16 v11, p3

    move-object v1, v0

    move v0, v10

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v19}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 1442
    iget-object v2, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v9, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v6, v2, v9, v8}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseOne(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v12

    .line 1444
    invoke-static/range {p4 .. p5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :cond_7
    move/from16 v15, p6

    move-wide v3, v8

    move v0, v10

    move v5, v11

    move-object v1, v13

    .line 1451
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1452
    new-instance v8, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v11, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v13, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v13}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    move-object v12, v8

    goto :goto_4

    :cond_8
    move/from16 v15, p6

    move-wide v3, v8

    move v0, v10

    move v5, v11

    move-object v1, v13

    .line 1457
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v12, :cond_9

    goto/16 :goto_5

    .line 1460
    :cond_9
    iget-object v2, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1461
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1462
    invoke-interface {v2, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 1463
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 1462
    invoke-static {v8, v9, v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_5

    .line 1466
    :cond_a
    new-instance v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v8, v9}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1468
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1469
    invoke-interface {v2, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 1467
    invoke-static {v6, v3, v4, v2, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const v2, 0x588000

    .line 1470
    iput v2, v8, Landroid/content/pm/ResolveInfo;->match:I

    .line 1473
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1475
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1477
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1478
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1479
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1478
    invoke-virtual {v2, v3, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1481
    :cond_c
    iput-boolean v5, v8, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1483
    iput-boolean v5, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1484
    iput-object v12, v8, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1485
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_d

    .line 1486
    const-string v0, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_d
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_5
    return-object v7
.end method

.method public queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 10

    .line 4921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eqz p1, :cond_0

    .line 4922
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    .line 4923
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    .line 4924
    const-string/jumbo v5, "queryContentProviders"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4926
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 4927
    :cond_1
    invoke-virtual {p0, p3, p4, v2}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v7

    move v9, v2

    .line 4929
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move-object v5, p5

    invoke-interface/range {v2 .. v9}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;

    move-result-object v0

    move v2, v9

    const/4 p1, 0x0

    if-nez v0, :cond_2

    move v3, p1

    goto :goto_2

    .line 4931
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    move v3, p2

    :goto_2
    const/4 p2, 0x0

    move v4, p1

    move-object v5, p2

    :goto_3
    if-ge v4, v3, :cond_6

    .line 4933
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/pm/ProviderInfo;

    .line 4934
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object p2, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4935
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 4934
    invoke-static {p1, v6, v7, v8, v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_4

    .line 4939
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object p2, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    .line 4940
    new-instance p3, Landroid/content/ComponentName;

    iget-object p2, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p4, v6, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p3, p2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x4

    move p2, v1

    move p5, v2

    .line 4942
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    if-nez v5, :cond_5

    .line 4947
    new-instance v5, Ljava/util/ArrayList;

    sub-int p1, v3, v4

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4949
    :cond_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 4953
    sget-object p0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4954
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    .line 4957
    :cond_7
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .locals 10

    .line 4985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 4986
    const-string/jumbo v5, "queryInstrumentationAsUser"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move p0, v1

    .line 4988
    iget-object p3, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p3, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 4989
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4991
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_4

    .line 4993
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v9}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    if-eqz p1, :cond_1

    .line 4995
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4996
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4997
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4998
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    if-eqz v4, :cond_3

    if-eqz v7, :cond_3

    .line 5000
    invoke-virtual {v0, v7, p0, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 5003
    :cond_2
    invoke-interface {v7, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    move v6, v2

    move-object v2, v4

    int-to-long v3, p2

    .line 5004
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    move v2, v6

    if-eqz v1, :cond_3

    .line 5007
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 5012
    :cond_4
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 12

    .line 649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v9, p5

    .line 647
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v7, p5

    move/from16 v9, p6

    .line 639
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v6, p7

    move/from16 v2, p9

    .line 514
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    const-wide v3, 0x200000000L

    or-long v7, p3, v3

    .line 519
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 520
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activities"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v11, p1

    move-object v12, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v12, v0

    move-object v11, v1

    move-object/from16 v1, p1

    :goto_0
    if-nez v12, :cond_3

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move-wide v4, v7

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v2, p9

    goto :goto_3

    :cond_3
    :goto_2
    move-wide v4, v7

    const/4 v7, 0x1

    goto :goto_1

    .line 536
    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v8

    move v3, v2

    move-wide/from16 v20, v4

    move/from16 v5, p10

    move v4, v6

    move v6, v7

    move v7, v8

    move-object v8, v1

    move-wide/from16 v1, v20

    .line 534
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v1

    move-object v7, v0

    move v15, v3

    .line 539
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v3, 0x0

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v4, p10

    move-wide v13, v1

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move v4, v5

    .line 541
    iget-object v2, v7, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 542
    iput-object v7, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 544
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz v12, :cond_15

    .line 547
    invoke-virtual {v7, v12, v13, v14, v15}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_13

    const-wide/32 v5, 0x800000

    and-long/2addr v5, v13

    const-wide/16 v16, 0x0

    cmp-long v5, v5, v16

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    const-wide/32 v18, 0x1000000

    and-long v18, v13, v18

    cmp-long v6, v18, v16

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    const-wide/32 v18, 0x2000000

    and-long v13, v13, v18

    cmp-long v8, v13, v16

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    if-eqz v10, :cond_7

    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    .line 562
    :goto_7
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 563
    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    :goto_8
    move-object/from16 p4, v1

    goto :goto_9

    :cond_8
    const/4 v14, 0x0

    goto :goto_8

    .line 566
    :goto_9
    iget v1, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v16, v1, v16

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    goto :goto_a

    :cond_9
    const/16 v16, 0x0

    :goto_a
    if-eqz v16, :cond_a

    const/high16 v17, 0x200000

    and-int v1, v1, v17

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v16, :cond_c

    if-eqz v8, :cond_b

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    if-nez v12, :cond_f

    if-nez v5, :cond_d

    if-nez v13, :cond_d

    if-nez v14, :cond_e

    :cond_d
    if-eqz v6, :cond_f

    if-eqz v13, :cond_f

    if-eqz v1, :cond_f

    :cond_e
    const/4 v1, 0x1

    goto :goto_e

    :cond_f
    const/4 v1, 0x0

    :goto_e
    if-eqz p10, :cond_10

    .line 581
    iget-boolean v5, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v5, :cond_10

    .line 583
    invoke-virtual {v7, v9, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x1

    goto :goto_f

    :cond_10
    const/4 v5, 0x0

    :goto_f
    if-eqz p10, :cond_11

    if-eqz v5, :cond_12

    :cond_11
    if-nez v14, :cond_12

    if-nez v13, :cond_12

    .line 584
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x3e8

    .line 589
    invoke-virtual {v7, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 588
    invoke-virtual {v7, v5, v4, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_10

    :cond_12
    const/4 v5, 0x0

    :goto_10
    if-nez v1, :cond_14

    if-nez v5, :cond_14

    .line 592
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 593
    iput-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 594
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 595
    new-instance v2, Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 596
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-static {v0, v2}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_11

    :cond_13
    move-object/from16 p4, v1

    :cond_14
    :goto_11
    move-object/from16 v7, p4

    move-object v13, v0

    move-object v14, v10

    const/4 v12, 0x0

    move v10, v4

    :goto_12
    move-object v1, v2

    goto :goto_15

    :cond_15
    move-object/from16 v2, p2

    move/from16 v8, p11

    move v5, v4

    move-wide v3, v13

    move v6, v15

    const/4 v12, 0x1

    move-object v13, v0

    move-object v0, v7

    move/from16 v7, p10

    .line 602
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v9

    move-object v14, v10

    move v10, v5

    move-wide v4, v3

    .line 605
    iget-object v2, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    if-eqz v2, :cond_16

    move-object v7, v1

    goto :goto_14

    .line 609
    :cond_16
    iget-boolean v2, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    if-eqz v2, :cond_17

    .line 610
    invoke-virtual {v0, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v8

    move-object v7, v1

    .line 612
    iget-object v1, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v3, p2

    move-object v2, v7

    move/from16 v7, p10

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ComputerEngine;->maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;

    move-result-object v1

    move-object v7, v2

    iput-object v1, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    goto :goto_13

    :cond_17
    move-object v7, v1

    .line 616
    :goto_13
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    if-eqz v0, :cond_18

    .line 617
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 619
    :cond_18
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object v2, v0

    const/4 v12, 0x0

    .line 621
    :goto_14
    invoke-static {v13, v2}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_12

    :goto_15
    if-eqz v11, :cond_19

    .line 626
    iput-object v11, v13, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 627
    invoke-static {v13, v1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_19
    if-eqz v12, :cond_1a

    return-object v1

    :cond_1a
    move-object/from16 v0, p0

    move/from16 v6, p9

    move/from16 v5, p10

    move/from16 v3, p11

    move v4, v10

    move-object v2, v14

    .line 630
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v3, p6

    .line 770
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    if-nez p9, :cond_3

    .line 774
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move v6, v3

    move-object v3, v4

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    move v3, v6

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v4, 0x0

    move-wide/from16 v5, p3

    move-object v0, v1

    move-object v2, v13

    move-object/from16 v1, p1

    .line 789
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v12

    move-object v1, v0

    .line 792
    invoke-virtual {v1, v13}, Lcom/android/server/pm/ComputerEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v8

    .line 799
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 801
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move/from16 v9, p7

    move-object/from16 v7, p9

    .line 799
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    move v3, v4

    move-object v8, v7

    .line 802
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v11, 0x1

    :cond_2
    move/from16 v16, v12

    move/from16 v12, p5

    move-object v14, v0

    move/from16 v17, v11

    goto/16 :goto_2

    :cond_3
    move-object/from16 v8, p9

    const/16 v0, 0x3e8

    .line 805
    invoke-virtual {v1, v8, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 807
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_5

    move/from16 v12, p5

    if-nez p7, :cond_4

    .line 808
    invoke-virtual {v1, v0, v12, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move-object v2, v0

    .line 809
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 810
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    move-object/from16 v2, p1

    move-wide/from16 v4, p3

    move v7, v3

    move-object/from16 v3, p2

    .line 809
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    move v3, v7

    if-eqz v0, :cond_6

    .line 814
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    move/from16 v12, p5

    .line 817
    :cond_6
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-wide/from16 v5, p3

    move-object v0, v1

    move-object/from16 v1, p1

    .line 820
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v2

    move-object v1, v0

    move v14, v2

    goto :goto_1

    :cond_7
    move v14, v11

    .line 828
    :goto_1
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 830
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    move/from16 v4, p6

    move/from16 v9, p7

    move-object/from16 v7, p9

    .line 828
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    move v3, v4

    move/from16 v16, v14

    move/from16 v17, v11

    move-object v14, v0

    .line 839
    :goto_2
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 843
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v15

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 844
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    move-wide/from16 v8, p3

    move/from16 v7, p8

    move-object/from16 v6, p9

    move-object/from16 v5, p10

    move-object v2, v1

    move v10, v3

    move-object/from16 v18, v4

    move v11, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v12, p7

    move-object v1, v0

    .line 840
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->combineFilterAndCreateQueryActivitiesResponse(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIIZLjava/util/List;Ljava/util/List;ZZZLjava/util/function/Function;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v6, p6

    .line 657
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 658
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent services"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 663
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    .line 664
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v8

    move-object v10, v0

    move v11, v3

    .line 667
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v4, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move-object v12, v0

    move v6, v5

    .line 669
    iget-object v0, v10, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 670
    iput-object v10, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    move-object/from16 v13, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v13, v1

    move-object/from16 v1, p1

    .line 681
    :goto_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 683
    invoke-virtual {v10, v0, v8, v9, v11}, Lcom/android/server/pm/ComputerEngine;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    const-wide/32 v3, 0x800000

    and-long/2addr v3, v8

    const-wide/16 v14, 0x0

    cmp-long v3, v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    const-wide/32 v16, 0x1000000

    and-long v8, v8, v16

    cmp-long v8, v8, v14

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    if-eqz v7, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v4

    .line 696
    :goto_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 697
    iget-object v7, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_5

    move v14, v5

    goto :goto_4

    :cond_5
    move v14, v4

    .line 700
    :goto_4
    iget v15, v1, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v15, v15, v16

    if-nez v15, :cond_6

    move v15, v5

    goto :goto_5

    :cond_6
    move v15, v4

    :goto_5
    if-nez v0, :cond_9

    if-nez v3, :cond_7

    if-nez v9, :cond_7

    if-nez v14, :cond_8

    :cond_7
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eqz v15, :cond_9

    :cond_8
    move v0, v5

    goto :goto_6

    :cond_9
    move v0, v4

    :goto_6
    if-nez v14, :cond_a

    if-nez v9, :cond_a

    .line 708
    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x3e8

    .line 710
    invoke-virtual {v10, v3, v7}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 709
    invoke-virtual {v10, v3, v6, v11}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_a

    move v4, v5

    :cond_a
    if-nez v0, :cond_c

    if-nez v4, :cond_c

    .line 713
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 714
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 716
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-static {v12, v2}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_7

    :cond_b
    move-object/from16 v2, p2

    move-wide v3, v8

    move-object v0, v10

    move v5, v11

    .line 721
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 723
    invoke-static {v12, v2}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_c
    :goto_7
    if-eqz v13, :cond_d

    .line 728
    iput-object v13, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 729
    invoke-static {v12, v2}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_d
    return-object v2
.end method

.method public queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;
    .locals 8

    .line 739
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 741
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    move-object v1, v2

    if-nez p0, :cond_0

    .line 744
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 746
    :cond_0
    invoke-virtual {v1, p0, p7, v7, p6}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v7, p5

    .line 749
    iget-object p0, v1, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p0, :cond_3

    .line 751
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 752
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    .line 751
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    .line 755
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 757
    :cond_2
    invoke-virtual {v1, p0, p7, v7, p6}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 760
    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public querySyncProviders(ZLjava/util/List;Ljava/util/List;)V
    .locals 11

    .line 4889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4892
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4893
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4894
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 4895
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V

    .line 4896
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 4897
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    .line 4898
    iget-object v0, v2, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4899
    new-instance v8, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x4

    move-object v5, v2

    move v10, v6

    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    move v6, v10

    if-nez p1, :cond_1

    goto :goto_1

    .line 4905
    :cond_1
    invoke-interface {v4, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4906
    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 4908
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 4909
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4911
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 4912
    invoke-interface {p3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public resolveComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .locals 8

    .line 4808
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4809
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v5

    .line 4813
    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4814
    invoke-static {p1, p4}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result p2

    .line 4816
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v3, p0

    move v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz v0, :cond_1

    .line 4821
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    if-eq p2, p4, :cond_1

    .line 4822
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4823
    invoke-virtual {p4, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4825
    invoke-interface {p4, p5, v0, p2, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p4

    goto :goto_0

    :cond_1
    move p4, p3

    :goto_0
    if-nez p4, :cond_3

    .line 4831
    invoke-static {v4}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 4832
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    .line 4834
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p4, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 4835
    invoke-virtual {p4}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    iget p4, p4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p4, p2, :cond_2

    move p1, p3

    :cond_2
    if-eqz p1, :cond_3

    const/4 p4, 0x0

    move p1, p5

    .line 4842
    const-string/jumbo p5, "resolveContentProvider"

    const/4 p3, 0x0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    move p1, p5

    :goto_1
    if-nez v0, :cond_4

    return-object v1

    .line 4850
    :cond_4
    iget-object p3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    .line 4852
    invoke-static {p3, v0, v5, v6, p2}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result p4

    if-nez p4, :cond_5

    return-object v1

    :cond_5
    move p5, p2

    move p2, p1

    move-object p1, p3

    .line 4855
    new-instance p3, Landroid/content/ComponentName;

    iget-object p4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p3, p4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x4

    .line 4857
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v1

    :cond_6
    return-object v0
.end method

.method public resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .locals 9

    .line 4776
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RESOLVE_COMPONENT_FOR_UID"

    const-string/jumbo v2, "resolveContentProviderForUid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4779
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4780
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x0

    .line 4781
    const-string/jumbo v8, "resolveContentProviderForUid"

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4785
    invoke-virtual {p0, p5, v4}, Lcom/android/server/pm/ComputerEngine;->filterAppAccess(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4789
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    move p5, v4

    .line 4794
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4795
    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object p2, p0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 4796
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 4797
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 0

    .line 1906
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1907
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1909
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .line 1979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1980
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 9

    .line 1915
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 1920
    invoke-interface {v0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1921
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_4

    .line 1927
    :cond_1
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1928
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 1929
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 1930
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1931
    invoke-virtual {p0, p4, p4}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 1933
    array-length v5, p4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, p4, v6

    .line 1934
    iget-object v8, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 1935
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 1937
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getUsesStaticLibrariesVersions()[J

    move-result-object v7

    aget-wide v7, v7, v8

    .line 1938
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/util/LongSparseLongArray;->append(JJ)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :cond_4
    if-eqz v1, :cond_5

    .line 1945
    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->size()I

    move-result p0

    if-gtz p0, :cond_5

    goto :goto_4

    .line 1951
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result p0

    :goto_1
    if-ge v3, p0, :cond_a

    .line 1953
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/SharedLibraryInfo;

    if-eqz v1, :cond_6

    .line 1955
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v4

    .line 1954
    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_6

    goto :goto_3

    .line 1958
    :cond_6
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_7

    cmp-long v4, v4, p2

    if-nez v4, :cond_9

    .line 1961
    invoke-virtual {p4}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez v2, :cond_8

    goto :goto_2

    .line 1966
    :cond_8
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    :goto_2
    move-object v2, p4

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    if-eqz v2, :cond_b

    .line 1972
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_4
    return-object p1
.end method

.method public final safeMode()Z
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z
    .locals 10

    .line 2646
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p1

    .line 2647
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2648
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    and-int/2addr v1, p0

    add-int/lit8 v0, v0, -0x1

    move-object p0, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 2634
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2624
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2612
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .locals 8

    .line 2532
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2533
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 2535
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {p5, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne v0, v2, :cond_0

    return v1

    .line 2540
    :cond_0
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2541
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    :cond_1
    move v4, p2

    .line 2543
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 2546
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 2545
    invoke-static {v2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz p1, :cond_d

    if-eqz p6, :cond_4

    .line 2552
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2553
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isHiddenUntilInstalled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2554
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_d

    if-eqz p7, :cond_4

    goto/16 :goto_2

    .line 2564
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p6

    if-eqz p6, :cond_5

    return v1

    :cond_5
    if-eqz p2, :cond_9

    .line 2569
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_6

    return v0

    :cond_6
    if-eqz p3, :cond_8

    .line 2575
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 2576
    invoke-virtual {p1, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    if-eqz p1, :cond_7

    .line 2578
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 2581
    :cond_7
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 2584
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isVisibleToInstantApps()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 2586
    :cond_9
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 2588
    invoke-virtual {p0, v4, p5}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p2

    if-eqz p2, :cond_a

    return v1

    :cond_a
    if-eqz p3, :cond_b

    return v0

    .line 2597
    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2598
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    .line 2597
    invoke-virtual {p0, p5, p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 2600
    :cond_c
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    .line 2601
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p3, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 2602
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object v3, p0

    move-object v6, p1

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p0

    return p0

    :cond_d
    :goto_2
    if-nez p2, :cond_f

    if-nez p6, :cond_f

    .line 2561
    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_3

    :cond_e
    return v1

    :cond_f
    :goto_3
    return v0
.end method

.method public final shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z
    .locals 3

    .line 2681
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 2684
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    return p2

    .line 2688
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p0

    move p1, p2

    .line 2689
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 2690
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2691
    invoke-interface {v1, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isHiddenUntilInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p2

    :cond_4
    return v0
.end method

.method public final shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 2660
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p0

    return p0
.end method

.method public final shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 2670
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z

    move-result p0

    return p0
.end method

.method public final updateFlags(JI)J
    .locals 6

    const-wide/32 v0, 0xc0000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    return-wide p1

    .line 2751
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    .line 2753
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_1

    or-long p0, p1, v0

    return-wide p0

    :cond_1
    const-wide/32 v0, 0x80000

    or-long p0, p1, v0

    return-wide p0
.end method

.method public final updateFlagsForApplication(JI)J
    .locals 0

    .line 2766
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForComponent(JI)J
    .locals 0

    .line 2773
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForPackage(JI)J
    .locals 8

    .line 2780
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    const-string v7, "MATCH_ANY_USER flag requires INTERACT_ACROSS_USERS permission"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p3

    .line 2785
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move v3, p3

    .line 2800
    :goto_0
    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForResolve(JIIZZ)J
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 2818
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final updateFlagsForResolve(JIIZZZ)J
    .locals 2

    .line 2827
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->safeMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p7, :cond_1

    :cond_0
    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    .line 2830
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p7

    if-eqz p7, :cond_3

    if-eqz p6, :cond_2

    const-wide/32 p4, 0x2000000

    or-long/2addr p1, p4

    :cond_2
    const-wide/32 p4, 0x1800000

    or-long/2addr p1, p4

    goto :goto_1

    :cond_3
    const-wide/32 p6, 0x800000

    and-long/2addr p6, p1

    const-wide/16 v0, 0x0

    cmp-long p6, p6, v0

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-eqz p6, :cond_4

    move p6, v0

    goto :goto_0

    :cond_4
    move p6, p7

    :goto_0
    if-nez p5, :cond_5

    if-eqz p6, :cond_6

    .line 2840
    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_5
    move p7, v0

    :cond_6
    const-wide/32 p4, -0x3000001

    and-long/2addr p4, p1

    if-nez p7, :cond_7

    const-wide/32 p4, -0x3800001

    and-long/2addr p1, p4

    goto :goto_1

    :cond_7
    move-wide p1, p4

    .line 2847
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final use()Lcom/android/server/pm/Computer;
    .locals 1

    .line 498
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return-object p0
.end method
