.class public abstract Lcom/android/server/pm/IPackageManagerBase;
.super Landroid/content/pm/IPackageManager$Stub;
.source "IPackageManagerBase.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field public final mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field public final mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field public final mPackageProperty:Lcom/android/server/pm/PackageProperty;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public final mResolveComponentName:Landroid/content/ComponentName;

.field public final mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

.field public final mService:Lcom/android/server/pm/PackageManagerService;

.field public final mServicesExtensionPackageName:Ljava/lang/String;

.field public final mSharedSystemSharedLibraryPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/ModuleInfoProvider;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/pm/ResolveIntentHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DomainVerificationConnection;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageProperty;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 128
    iput-object p2, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    .line 129
    iput-object p3, p0, Lcom/android/server/pm/IPackageManagerBase;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 130
    iput-object p4, p0, Lcom/android/server/pm/IPackageManagerBase;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 131
    iput-object p5, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 132
    iput-object p6, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 133
    iput-object p7, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 134
    iput-object p8, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 135
    iput-object p9, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 136
    iput-object p10, p0, Lcom/android/server/pm/IPackageManagerBase;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 137
    iput-object p11, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveComponentName:Landroid/content/ComponentName;

    .line 138
    iput-object p12, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 139
    iput-object p13, p0, Lcom/android/server/pm/IPackageManagerBase;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 140
    iput-object p14, p0, Lcom/android/server/pm/IPackageManagerBase;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 6

    .line 151
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveComponentName:Landroid/content/ComponentName;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    .locals 7

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v2, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    return-void
.end method

.method public final addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/permission/PermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/permission/PermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/PreferredActivityHelper;->addPersistentPreferredActivity(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V
    .locals 10

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v2, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    const/4 v6, 0x1

    const-string v8, "Adding preferred"

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    return-void
.end method

.method public final canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
    .locals 0

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z

    move-result-object p0

    return-object p0
.end method

.method public final canRequestPackageInstalls(Ljava/lang/String;I)Z
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Lcom/android/server/pm/Computer;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public final canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final checkUidSignatures(II)I
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->checkUidSignatures(II)I

    move-result p0

    return p0
.end method

.method public final clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    return-void
.end method

.method public final clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    return-void
.end method

.method public final clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V

    return-void
.end method

.method public final currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    return-void
.end method

.method public final deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    .locals 1

    .line 283
    new-instance v0, Landroid/content/pm/VersionedPackage;

    invoke-direct {v0, p1, p2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance p1, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    invoke-direct {p1, p3}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 284
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    .line 283
    invoke-virtual {p0, v0, p1, p4, p5}, Lcom/android/server/pm/IPackageManagerBase;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    return-void
.end method

.method public final deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    return-void
.end method

.method public final deletePreloadsFileCache()V
    .locals 0

    .line 1213
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->deletePreloadsFileCache()V

    return-void
.end method

.method public final findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->findPersistentPreferredActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final finishPackageInstall(IZ)V
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->finishPackageInstall(IZ)V

    return-void
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final getAllPackages()Ljava/util/List;
    .locals 0

    .line 318
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getAllPackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 0

    .line 326
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAppPredictionServicePackageName()Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getApplicationEnabledSetting(Ljava/lang/String;I)I
    .locals 0

    .line 340
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .locals 0

    .line 351
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 358
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getArtManager()Landroid/content/pm/dex/IArtManager;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    return-object p0
.end method

.method public final getAttentionServicePackageName()Ljava/lang/String;
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    const v2, 0x1040231

    .line 372
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBlockUninstallForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 379
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/pm/Computer;->getComponentEnabledSetting(Landroid/content/ComponentName;II)I

    move-result p0

    return p0
.end method

.method public final getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 394
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultAppsBackup(I)[B
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->getDefaultAppsBackup(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultTextClassifierPackageName()Ljava/lang/String;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getFlagsForUid(I)I
    .locals 0

    .line 417
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getFlagsForUid(I)I

    move-result p0

    return p0
.end method

.method public final getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 0

    .line 425
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 436
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 435
    invoke-interface {p0, p1, v0}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getIncidentReportApproverPackageName()Ljava/lang/String;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstallLocation()I
    .locals 2

    .line 448
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_install_location"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getInstallReason(Ljava/lang/String;I)I
    .locals 0

    .line 457
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getInstallReason(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
    .locals 0

    .line 465
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 473
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    .line 474
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getInstalledApplications(JIIZ)Ljava/util/List;

    move-result-object p0

    invoke-direct {v6, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v6
.end method

.method public final getInstalledModules(I)Ljava/util/List;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ModuleInfoProvider;->getInstalledModules(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 488
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/server/pm/Computer;->getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 505
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getInstantAppResolverComponent()Landroid/content/ComponentName;
    .locals 2

    .line 512
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 513
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 516
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;
    .locals 0

    .line 530
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 538
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final getIntentVerificationStatus(Ljava/lang/String;I)I
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getLegacyState(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 0

    .line 551
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object p0

    return-object p0
.end method

.method public final getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 565
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNamesForUids([I)[Ljava/lang/String;
    .locals 0

    .line 572
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageGids(Ljava/lang/String;JI)[I
    .locals 0

    .line 579
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 586
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;
    .locals 8

    .line 593
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-wide v4, p2

    move v7, p4

    .line 593
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInstaller()Landroid/content/pm/IPackageInstaller;
    .locals 2

    .line 601
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object p0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 606
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    const-string p0, "PackageManager"

    const-string v0, "Returning null PackageInstaller for InstantApps"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 610
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object p0
.end method

.method public final getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 0

    .line 617
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Shame on you for calling the hidden API getPackageSizeInfo(). Shame!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageUid(Ljava/lang/String;JI)I
    .locals 0

    .line 625
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    return p0
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 6

    .line 646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 647
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 648
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "getPackagesForUid"

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 659
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 675
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 677
    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->isSafeMode()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/Computer;->getPersistentApplications(ZI)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/pm/PreferredActivityHelper;->getPreferredActivities(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPreferredActivityBackup(I)[B
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->getPreferredActivityBackup(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getPrivateFlagsForUid(I)I
    .locals 0

    .line 702
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPrivateFlagsForUid(I)I

    move-result p0

    return p0
.end method

.method public final getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;
    .locals 6

    .line 709
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 712
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    .line 713
    const-string v5, "getPropertyAsUser"

    const/4 v3, 0x0

    move v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 716
    invoke-interface {v0, p2, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 721
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    return-object p0
.end method

.method public final getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .locals 0

    .line 729
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 736
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getRotationResolverPackageName()Ljava/lang/String;
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    const v2, 0x1040252

    .line 744
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object p0

    .line 743
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSdkSandboxPackageName()Ljava/lang/String;
    .locals 0

    .line 796
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .locals 0

    .line 753
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mServicesExtensionPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSetupWizardPackageName()Ljava/lang/String;
    .locals 2

    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 769
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object p0

    .line 767
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Non-system caller"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 776
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 0

    .line 790
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemCaptionsServicePackageName()Ljava/lang/String;
    .locals 3

    .line 802
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    const v2, 0x1040259

    .line 803
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object p0

    .line 802
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 4

    .line 811
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getSystemSharedLibraryNamesAndPaths()Landroid/util/ArrayMap;

    move-result-object p0

    .line 812
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 815
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 816
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 818
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getSystemSharedLibraryNamesAndPaths()Ljava/util/Map;
    .locals 0

    .line 826
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getSystemSharedLibraryNamesAndPaths()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemTextClassifierPackageName()Ljava/lang/String;
    .locals 0

    .line 832
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetSdkVersion(Ljava/lang/String;)I
    .locals 0

    .line 838
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUidForSharedUser(Ljava/lang/String;)I
    .locals 0

    .line 844
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getUidForSharedUser(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getWellbeingPackageName()Ljava/lang/String;
    .locals 3

    .line 851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 853
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/role/RoleManager;

    .line 854
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    const-string v2, "android.app.role.SYSTEM_WELLBEING"

    invoke-virtual {p0, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 853
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 858
    throw p0
.end method

.method public final grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 869
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    .line 870
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final hasSigningCertificate(Ljava/lang/String;[BI)Z
    .locals 0

    .line 878
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p0

    return p0
.end method

.method public final hasSystemFeature(Ljava/lang/String;I)Z
    .locals 0

    .line 884
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final hasSystemUidErrors()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasUidSigningCertificate(I[BI)Z
    .locals 0

    .line 898
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->hasUidSigningCertificate(I[BI)Z

    move-result p0

    return p0
.end method

.method public final isDeviceUpgrading()Z
    .locals 0

    .line 904
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p0

    return p0
.end method

.method public final isFirstBoot()Z
    .locals 0

    .line 910
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result p0

    return p0
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .locals 0

    .line 916
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isPackageAvailable(Ljava/lang/String;I)Z
    .locals 0

    .line 922
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageQuarantinedForUser(Ljava/lang/String;I)Z
    .locals 1

    .line 961
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageQuarantinedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 963
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown target package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 0

    .line 935
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result p0

    return p0
.end method

.method public final isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 0

    .line 942
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result p0

    return p0
.end method

.method public final isPackageStoppedForUser(Ljava/lang/String;I)Z
    .locals 1

    .line 971
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 973
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown target package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 1

    .line 950
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 952
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown target package: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isSafeMode()Z
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result p0

    return p0
.end method

.method public final isStorageLow()Z
    .locals 0

    .line 987
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result p0

    return p0
.end method

.method public final isUidPrivileged(I)Z
    .locals 0

    .line 993
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->isUidPrivileged(I)Z

    move-result p0

    return p0
.end method

.method public final performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z
    .locals 2

    move v0, p2

    move-object p2, p1

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p1

    if-nez v0, :cond_0

    .line 1010
    const-string v0, "PackageManager"

    const-string v1, "Ignored checkProfiles=false flag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/DexOptHelper;->performDexOptMode(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/DexOptHelper;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/Computer;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 3

    const-wide/32 v1, 0x40000

    .line 1036
    :try_start_0
    const-string/jumbo v0, "queryIntentActivities"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1038
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1042
    throw p0
.end method

.method public final queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 11

    .line 1068
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    .line 1068
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentActivityOptionsInternal(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 8

    .line 1078
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    .line 1078
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentContentProvidersInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 9

    .line 1087
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    .line 1087
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 11

    .line 1096
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1097
    new-instance v10, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, -0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    invoke-interface/range {v0 .. v9}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object p0

    invoke-direct {v10, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v10
.end method

.method public final querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->isSafeMode()Z

    move-result p0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/pm/Computer;->querySyncProviders(ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final removePermission(Ljava/lang/String;)V
    .locals 1

    .line 1113
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager;->removePermission(Ljava/lang/String;)V

    return-void
.end method

.method public final replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1120
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v2, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PreferredActivityHelper;->replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final resetApplicationPreferences(I)V
    .locals 0

    .line 1140
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->resetApplicationPreferences(I)V

    return-void
.end method

.method public final resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;
    .locals 6

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .locals 0

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/Computer;->resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .locals 12

    .line 1147
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v8, p5

    .line 1147
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .locals 10

    .line 1156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1157
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final restoreDefaultApps([BI)V
    .locals 0

    .line 1165
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->restoreDefaultApps([BI)V

    return-void
.end method

.method public final restorePreferredActivities([BI)V
    .locals 0

    .line 1171
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->restorePreferredActivities([BI)V

    return-void
.end method

.method public final setHomeActivity(Landroid/content/ComponentName;I)V
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->setHomeActivity(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    .locals 8

    .line 1184
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    new-instance v5, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v5, p4}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PreferredActivityHelper;->setLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public final setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setSystemAppInstallState(Ljava/lang/String;ZI)Z
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setSystemAppInstallState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/pm/Computer;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0
.end method

.method public final updateIntentVerificationStatus(Ljava/lang/String;II)Z
    .locals 0

    .line 1192
    iget-object p0, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p0, p1, p3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setLegacyUserState(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final verifyIntentFilter(IILjava/util/List;)V
    .locals 6

    .line 1198
    iget-object v0, p0, Lcom/android/server/pm/IPackageManagerBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/IPackageManagerBase;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 1199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 1198
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->queueLegacyVerifyResult(Landroid/content/Context;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;IILjava/util/List;I)V

    return-void
.end method
