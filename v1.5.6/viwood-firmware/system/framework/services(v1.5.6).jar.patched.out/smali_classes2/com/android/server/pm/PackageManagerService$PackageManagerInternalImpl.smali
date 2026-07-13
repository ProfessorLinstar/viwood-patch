.class public Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.super Lcom/android/server/pm/PackageManagerInternalBase;
.source "PackageManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$6BzoV0knGY9C14_caifkEEMMdVU(Ljava/util/List;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 1

    .line 7068
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7069
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isResourceOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7070
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Awt5QTlC7fSALcPvbmovmzSoX4I(Landroid/content/pm/UserPackage;)Z
    .locals 1

    .line 6981
    const-string v0, "android"

    iget-object p0, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$EQuwNqG4N0yM_qw6ZX3BhqlsDtw(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 6937
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6939
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$oFinl0bGSorgAoKfFRg-vRv_2cE(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Landroid/os/Bundle;I[ILandroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->lambda$sendPackageRestartedBroadcast$4(Ljava/lang/String;Landroid/os/Bundle;I[ILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tfSadaKublkxtbvhMLGtzWtNx68(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->lambda$onPackageProcessKilledForUninstall$3(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 6807
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6808
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerInternalBase;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .locals 1

    .line 7087
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 7088
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseIntArray;->put(II)V

    .line 7089
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public flushPackageRestrictions(I)V
    .locals 1

    .line 6987
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 6988
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V

    .line 6989
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getApexManager()Lcom/android/server/pm/ApexManager;
    .locals 0

    .line 6874
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-object p0
.end method

.method public getAppDataHelper()Lcom/android/server/pm/AppDataHelper;
    .locals 0

    .line 6826
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 6814
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6952
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 6955
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-object p1

    .line 6956
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDistractingPackageHelper()Lcom/android/server/pm/DistractingPackageHelper;
    .locals 0

    .line 6850
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object p0

    return-object p0
.end method

.method public getDistractingPackageRestrictionsAsUser([Ljava/lang/String;I)[I
    .locals 2

    .line 7308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7309
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 7310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7311
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/pm/DistractingPackageHelper;->getDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[I

    move-result-object p0

    return-object p0
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 0

    .line 6886
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDynamicCodeLogger(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object p0

    return-object p0
.end method

.method public getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 7317
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;
    .locals 2

    .line 7269
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 7270
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7275
    :cond_0
    new-instance p1, Landroid/content/pm/IncrementalStatesInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isLoading()Z

    move-result p2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLoadingProgress()F

    move-result p3

    .line 7276
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLoadingCompletedTime()J

    move-result-wide v0

    invoke-direct {p1, p2, p3, v0, v1}, Landroid/content/pm/IncrementalStatesInfo;-><init>(ZFJ)V

    return-object p1
.end method

.method public getInstantAppRegistry()Lcom/android/server/pm/InstantAppRegistry;
    .locals 0

    .line 6868
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    return-object p0
.end method

.method public getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;
    .locals 1

    .line 7189
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 7190
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 7191
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;
    .locals 1

    .line 7199
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 7200
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 7201
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public bridge synthetic getLegacyPermissionsState(I)Ljava/lang/Object;
    .locals 0

    .line 6805
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object p0

    return-object p0
.end method

.method public getLegacyPermissionsVersion(I)I
    .locals 1

    .line 7206
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 7207
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDefaultRuntimePermissionsVersion(I)I

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 7208
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getPackageArchiver()Lcom/android/server/pm/PackageArchiver;
    .locals 0

    .line 7322
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    return-object p0
.end method

.method public getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;
    .locals 4

    .line 6935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6936
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 6942
    new-instance v1, Lcom/android/server/pm/PackageList;

    invoke-direct {v1, v0, p1}, Lcom/android/server/pm/PackageList;-><init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    if-eqz p1, :cond_0

    .line 6944
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageObserverHelper;->addObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    :cond_0
    return-object v1
.end method

.method public getPackageObserverHelper()Lcom/android/server/pm/PackageObserverHelper;
    .locals 0

    .line 6832
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 0

    .line 6820
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public getProtectedPackages()Lcom/android/server/pm/ProtectedPackages;
    .locals 0

    .line 6856
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-object p0
.end method

.method public getResolveIntentHelper()Lcom/android/server/pm/ResolveIntentHelper;
    .locals 0

    .line 6838
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendPackageHelper()Lcom/android/server/pm/SuspendPackageHelper;
    .locals 0

    .line 6844
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object p0

    return-object p0
.end method

.method public getTargetPackageNames(I)Ljava/util/List;
    .locals 2

    .line 7066
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7067
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public hasSignatureCapability(III)Z
    .locals 0

    .line 6926
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 6927
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getSigningDetails(I)Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 6928
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(I)Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 6929
    invoke-virtual {p1, p0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6930
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

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

.method public isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .locals 0

    .line 6914
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 6915
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x1

    .line 6919
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result p0

    return p0
.end method

.method public isDataRestoreSafe([BLjava/lang/String;)Z
    .locals 0

    .line 6903
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 6904
    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x1

    .line 6908
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([BI)Z

    move-result p0

    return p0
.end method

.method public isPackagePersistent(Ljava/lang/String;)Z
    .locals 1

    .line 7035
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 7040
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7041
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .locals 0

    .line 7214
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeeded(I)Z

    move-result p0

    return p0
.end method

.method public isPlatformSigned(Ljava/lang/String;)Z
    .locals 2

    .line 6891
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6895
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 6896
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    .line 6897
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
    .locals 2

    .line 6961
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 6962
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSameApp(Ljava/lang/String;II)Z
    .locals 6

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    .line 7281
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(Ljava/lang/String;JII)Z

    move-result p0

    return p0
.end method

.method public isSameApp(Ljava/lang/String;JII)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7291
    :cond_0
    invoke-static {p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7292
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 7294
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 7295
    invoke-interface {p0, p1, p2, p3, p5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    .line 7296
    invoke-static {p0, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public isUpgradingFromLowerThan(I)Z
    .locals 2

    .line 7383
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPriorSdkVersion(Lcom/android/server/pm/PackageManagerService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7384
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPriorSdkVersion(Lcom/android/server/pm/PackageManagerService;)I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onPackageProcessKilledForUninstall$3(Ljava/lang/String;)V
    .locals 1

    .line 7301
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$sendPackageRestartedBroadcast$4(Ljava/lang/String;Landroid/os/Bundle;I[ILandroid/util/SparseArray;)V
    .locals 13

    .line 7339
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmBroadcastHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BroadcastHelper;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public migrateLegacyObbData()V
    .locals 1

    .line 7161
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->migrateLegacyObbData()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7163
    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .locals 0

    .line 7101
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageProcessKilledForUninstall(Ljava/lang/String;)V
    .locals 2

    .line 7301
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerInstalledLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;I)Z
    .locals 2

    .line 7246
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 7248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 7247
    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 7252
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isLoading()Z

    move-result v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_1

    .line 7253
    const-string p0, "Failed registering loading progress callback. Package is fully loaded."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 7257
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-nez p0, :cond_2

    .line 7258
    const-string p0, "Failed registering loading progress callback. Incremental is not enabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 7262
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object p1

    .line 7263
    invoke-virtual {p2}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 7262
    invoke-virtual {p0, p1, p2}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    move-result p0

    return p0
.end method

.method public removeAllNonSystemPackageSuspensions(I)V
    .locals 3

    .line 6978
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6979
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v1

    .line 6980
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object p0

    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeIsolatedUid(I)V
    .locals 1

    .line 7094
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 7095
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseIntArray;->delete(I)V

    .line 7096
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
    .locals 1

    .line 7107
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 7108
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removePendingDefaultBrowserLPw(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 7109
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public sendPackageDataClearedBroadcast(Ljava/lang/String;IIZZ)V
    .locals 10

    .line 7360
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7361
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/android/server/pm/Computer;->getVisibilityAllowList(Ljava/lang/String;I)[I

    move-result-object v6

    .line 7362
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    .line 7363
    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x5000000

    .line 7364
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7366
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7367
    const-string p2, "android.intent.extra.user_handle"

    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p4, :cond_0

    .line 7369
    const-string p2, "android.intent.extra.IS_RESTORE"

    const/4 p4, 0x1

    invoke-virtual {v2, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p5, :cond_1

    .line 7372
    const-string p2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7374
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmBroadcastHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BroadcastHelper;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v3, p3

    move v4, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastWithIntent(Landroid/content/Intent;IZI[ILandroid/content/IIntentReceiver;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    .line 7377
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageMonitorCallbackHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v6, p0}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitorWithIntent(Landroid/content/Intent;I[ILandroid/os/Handler;)V

    return-void
.end method

.method public sendPackageRestartedBroadcast(Ljava/lang/String;II)V
    .locals 11

    .line 7328
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7329
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v6

    .line 7330
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7331
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-interface {v1, p1, v6}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v8

    .line 7332
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7333
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7334
    const-string p2, "android.intent.extra.user_handle"

    invoke-virtual {v5, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7336
    const-string p2, "android.intent.extra.TIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v5, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7338
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda2;

    move-object v3, p0

    move-object v4, p1

    move-object v7, v6

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;Ljava/lang/String;Landroid/os/Bundle;I[ILandroid/util/SparseArray;)V

    move-object v6, v7

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7352
    iget-object p0, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageMonitorCallbackHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object v2

    iget-object p0, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .locals 1

    .line 7011
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ProtectedPackages;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 7013
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p2, :cond_0

    .line 7015
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7017
    :cond_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 7019
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7020
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->removeAllNonSystemPackageSuspensions(I)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 7081
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledOverlayPackages(Lcom/android/server/pm/PackageManagerService;ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 7028
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    :cond_0
    return-void
.end method

.method public setPackagesSuspendedByAdmin(I[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 12

    .line 6999
    const-string v0, "android"

    invoke-static {p1, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v8

    .line 7001
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/16 v10, 0x3e8

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/SuspendPackageHelper;->setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Landroid/content/pm/UserPackage;IIZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setVisibilityLogging(Ljava/lang/String;Z)V
    .locals 1

    .line 7225
    const-string v0, "Only the system or shell can set visibility logging."

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 7228
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7232
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->getFeatureConfig()Lcom/android/server/pm/FeatureConfig;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/FeatureConfig;->enableLogging(IZ)V

    return-void

    .line 7230
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No package found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V
    .locals 7

    .line 7115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7116
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7119
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p4

    move-object v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    and-int/lit8 p1, p6, 0x2

    const/4 p4, -0x5

    if-nez p1, :cond_0

    .line 7124
    const-string p0, "Can\'t uninstall an apex for a single user"

    invoke-virtual {v1, v4, p4, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 7128
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 7129
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerInternalBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/32 p5, 0x40000000

    const/4 v0, 0x0

    invoke-interface {p0, v4, p5, p6, v0}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 7132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an apex package"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p4, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 p5, -0x1

    cmp-long p5, p2, p5

    if-eqz p5, :cond_2

    .line 7137
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p5

    cmp-long p5, p5, p2

    if-eqz p5, :cond_2

    .line 7138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Active version "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7139
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p5

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " is not equal to "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7138
    invoke-virtual {v1, v4, p4, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 7143
    :cond_2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/ApexManager;->uninstallApex(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 7144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to uninstall apex "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p4, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 7147
    invoke-virtual {v1, v4, p0, p1}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 7117
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to uninstall apexes"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .locals 0

    .line 7155
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->updateRuntimePermissionsFingerprint(I)V

    return-void
.end method

.method public writePermissionSettings([IZ)V
    .locals 6

    .line 7180
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 7181
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 7182
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/Settings;->writePermissionStateForUserLPr(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7184
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public writeSettings(Z)V
    .locals 1

    .line 7169
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 7171
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7173
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 7175
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method
