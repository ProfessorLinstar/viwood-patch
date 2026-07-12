.class public abstract Landroid/content/pm/PackageManagerInternal;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addIsolatedUid(II)V
.end method

.method public abstract canAccessComponent(ILandroid/content/ComponentName;I)Z
.end method

.method public abstract canAccessInstantApps(II)Z
.end method

.method public abstract canQueryPackage(ILjava/lang/String;)Z
.end method

.method public abstract checkUidSignaturesForAllUsers(II)I
.end method

.method public abstract commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
.end method

.method public abstract deleteOatArtifactsOfPackage(Ljava/lang/String;)J
.end method

.method public abstract filterAppAccess(II)Z
.end method

.method public abstract filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z
.end method

.method public filterAppAccess(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x1

    .line 809
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public abstract filterAppAccess(Ljava/lang/String;IIZ)Z
.end method

.method public abstract finishPackageInstall(IZ)V
.end method

.method public abstract flushPackageRestrictions(I)V
.end method

.method public abstract forEachInstalledPackage(Ljava/util/function/Consumer;I)V
.end method

.method public abstract forEachPackage(Ljava/util/function/Consumer;)V
.end method

.method public abstract forEachPackageSetting(Ljava/util/function/Consumer;)V
.end method

.method public abstract forEachPackageState(Ljava/util/function/Consumer;)V
.end method

.method public abstract freeAllAppCacheAboveQuota(Ljava/lang/String;)V
.end method

.method public abstract freeStorage(Ljava/lang/String;JI)V
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getAndroidPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
.end method

.method public abstract getApksInApex(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getApplicationEnabledState(Ljava/lang/String;I)I
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getComponentEnabledSetting(Landroid/content/ComponentName;II)I
.end method

.method public abstract getDefaultHomeActivity(I)Landroid/content/ComponentName;
.end method

.method public abstract getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
.end method

.method public abstract getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
.end method

.method public abstract getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDistractingPackageRestrictions(Ljava/lang/String;I)I
.end method

.method public abstract getDistractingPackageRestrictionsAsUser([Ljava/lang/String;I)[I
.end method

.method public abstract getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
.end method

.method public abstract getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
.end method

.method public abstract getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
.end method

.method public abstract getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;
.end method

.method public abstract getInstalledApplications(JII)Ljava/util/List;
.end method

.method public abstract getInstalledApplicationsCrossUser(JII)Ljava/util/List;
.end method

.method public abstract getInstantAppPackageName(I)Ljava/lang/String;
.end method

.method public abstract getKnownPackageNames(II)[Ljava/lang/String;
.end method

.method public abstract getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;
.end method

.method public abstract getLegacyPermissionsState(I)Ljava/lang/Object;
.end method

.method public abstract getLegacyPermissionsVersion(I)I
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
.end method

.method public abstract getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
.end method

.method public abstract getPackageArchiver()Lcom/android/server/pm/PackageArchiver;
.end method

.method public abstract getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;
.end method

.method public getPackageList()Lcom/android/server/pm/PackageList;
    .locals 1

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;
.end method

.method public abstract getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
.end method

.method public abstract getPackageStates()Landroid/util/ArrayMap;
.end method

.method public abstract getPackageTargetSdkVersion(Ljava/lang/String;)I
.end method

.method public abstract getPackageUid(Ljava/lang/String;JI)I
.end method

.method public abstract getPackagesForAppId(I)Ljava/util/List;
.end method

.method public abstract getPermissionGids(Ljava/lang/String;I)[I
.end method

.method public abstract getProcessesForUid(I)Landroid/util/ArrayMap;
.end method

.method public abstract getSetupWizardPackageName()Ljava/lang/String;
.end method

.method public abstract getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;
.end method

.method public abstract getSharedUserPackages(I)Landroid/util/ArraySet;
.end method

.method public abstract getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract getSuspendedDialogInfo(Ljava/lang/String;Landroid/content/pm/UserPackage;I)Landroid/content/pm/SuspendDialogInfo;
.end method

.method public abstract getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getSuspendingPackage(Ljava/lang/String;I)Landroid/content/pm/UserPackage;
.end method

.method public abstract getSystemUiServiceComponent()Landroid/content/ComponentName;
.end method

.method public abstract getTargetPackageNames(I)Ljava/util/List;
.end method

.method public abstract getUidTargetSdkVersion(I)I
.end method

.method public abstract grantImplicitAccess(ILandroid/content/Intent;IIZ)V
.end method

.method public abstract grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
.end method

.method public abstract hasInstantApplicationMetadata(Ljava/lang/String;I)Z
.end method

.method public abstract hasSignatureCapability(III)Z
.end method

.method public abstract isAdminSuspendingAnyPackages(I)Z
.end method

.method public abstract isApexPackage(Ljava/lang/String;)Z
.end method

.method public abstract isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
.end method

.method public abstract isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
.end method

.method public abstract isDataRestoreSafe([BLjava/lang/String;)Z
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
.end method

.method public abstract isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
.end method

.method public abstract isPackageDataProtected(ILjava/lang/String;)Z
.end method

.method public abstract isPackageEphemeral(ILjava/lang/String;)Z
.end method

.method public abstract isPackageFrozen(Ljava/lang/String;II)Z
.end method

.method public abstract isPackagePersistent(Ljava/lang/String;)Z
.end method

.method public abstract isPackageStateProtected(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageStopped(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageSuspended(Ljava/lang/String;I)Z
.end method

.method public abstract isPermissionUpgradeNeeded(I)Z
.end method

.method public abstract isPermissionsReviewRequired(Ljava/lang/String;I)Z
.end method

.method public abstract isPlatformSigned(Ljava/lang/String;)Z
.end method

.method public abstract isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
.end method

.method public abstract isSameApp(Ljava/lang/String;II)Z
.end method

.method public abstract isSameApp(Ljava/lang/String;JII)Z
.end method

.method public abstract isSystemPackage(Ljava/lang/String;)Z
.end method

.method public abstract isUidPrivileged(I)Z
.end method

.method public abstract isUpgradingFromLowerThan(I)Z
.end method

.method public abstract migrateLegacyObbData()V
.end method

.method public abstract notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyPackageUse(Ljava/lang/String;I)V
.end method

.method public abstract onPackageProcessKilledForUninstall(Ljava/lang/String;)V
.end method

.method public abstract pruneInstantApps()V
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
.end method

.method public abstract queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;
.end method

.method public abstract queryIntentServices(Landroid/content/Intent;JII)Ljava/util/List;
.end method

.method public abstract reconcileAppsData(IIZ)V
.end method

.method public abstract registerInstalledLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;I)Z
.end method

.method public abstract removeAllDistractingPackageRestrictions(I)V
.end method

.method public abstract removeAllNonSystemPackageSuspensions(I)V
.end method

.method public abstract removeDistractingPackageRestrictions(Ljava/lang/String;I)V
.end method

.method public abstract removeIsolatedUid(I)V
.end method

.method public abstract removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
.end method

.method public abstract removeNonSystemPackageSuspensions(Ljava/lang/String;I)V
.end method

.method public abstract removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
.end method

.method public abstract requestChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
.end method

.method public abstract requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveIntent(Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveService(Landroid/content/Intent;Ljava/lang/String;JIII)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract sendPackageDataClearedBroadcast(Ljava/lang/String;IIZZ)V
.end method

.method public abstract sendPackageRestartedBroadcast(Ljava/lang/String;II)V
.end method

.method public abstract setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
.end method

.method public abstract setEnableRollbackCode(II)V
.end method

.method public abstract setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V
.end method

.method public abstract setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
.end method

.method public abstract setKeepUninstalledPackages(Ljava/util/List;)V
.end method

.method public abstract setOwnerProtectedPackages(ILjava/util/List;)V
.end method

.method public abstract setPackageStoppedState(Ljava/lang/String;ZI)V
.end method

.method public abstract setPackagesSuspendedByAdmin(I[Ljava/lang/String;Z)[Ljava/lang/String;
.end method

.method public abstract setVisibilityLogging(Ljava/lang/String;Z)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;
.end method

.method public abstract uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;I)V
.end method

.method public abstract unsuspendAdminSuspendedPackages(I)V
.end method

.method public abstract updateRuntimePermissionsFingerprint(I)V
.end method

.method public abstract wasPackageEverLaunched(Ljava/lang/String;I)Z
.end method

.method public abstract writePermissionSettings([IZ)V
.end method

.method public abstract writeSettings(Z)V
.end method
