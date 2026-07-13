.class public Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
.super Lcom/android/server/pm/IPackageManagerBase;
.source "PackageManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$-WnwDDeInCym2X53IW0Td3Vy25Q(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$deleteApplicationCacheFilesAsUser$1(Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$107O-99MWAqaO6h5r6u1g7EngjI(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$freeStorageAndNotify$4(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1ThB1_MVixkgV9lRpo84oBSDvvY(ILjava/lang/CharSequence;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6206
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6207
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$2NddH3htADh36HyI3YxBub1FK4o(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$verifyPendingInstall$23(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$3qEint7AQ9Mzq6gVTIPNnWim-wc(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V
    .locals 1

    .line 5843
    :try_start_0
    iget-boolean v0, p2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->success:Z

    iget-object p2, p2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;->message:Ljava/lang/String;

    invoke-interface {p0, p1, v0, p2}, Landroid/content/pm/IDexModuleRegisterCallback;->onDexModuleRegistered(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5846
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to callback after module registration "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$5HOMIWkD7FzApasIIZgs1M7NI4U(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/IntentSender;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$freeStorage$3(Ljava/lang/String;JILandroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5xPjBimifLxcG9GYgS9c4BAnyh8(ILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 5930
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setCategoryOverride(I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$CaZ04l8HtG7Y61tWA_YcGmrDnCU(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;IIIJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$extendVerificationTimeout$2(IIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CqB8bxC4gDP0_fWNoqvGiZU5pnI(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/Computer;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setInstallerPackageName$13(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/Computer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IUC2njBA6F_S5cBzr2babfko2QQ(Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 1

    const/4 v0, 0x0

    .line 6391
    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setUpdateOwner(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$K-IU-J3gey18tj9poi6l48dFgqk(Lcom/android/server/pm/Computer;IILjava/lang/String;)Z
    .locals 0

    .line 5814
    invoke-interface {p0, p3, p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$LkYZxaA-VNUTmLOD_icXu8eEv08(IZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6092
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setHidden(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$Mcfwl54XiGnEHpRH3a7UDE6tg-M(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setMimeGroup$18(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OCkFQ7taVAoQTB34utwzETeAwAw(Landroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4870
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4872
    :catch_0
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$Pe8vbhpdl0Jq5-S3wgyqrQj-wOQ(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6584
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setUpdateAvailable(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$RsVa2mF45EoVYf3CpE8scb7kg4A(ZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6515
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setRequiredForSystemUser(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$WLAVyYP3V__zIRx7NCQfUF8Jb4M(ILjava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6576
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$c2heQtlO6TofUAIsLSKx7u0f7_s(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$movePackage$5(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dF4NNU2jLw1TkoeDVn3FmcWWLoY(Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6455
    invoke-interface {p2, p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$kCQ2BqcsdLUsUaXqxeER8T489SI(IILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6547
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setMinAspectRatio(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$tIC3HLOKgh-Lj48Ibj4WTyOEG7U(Ljava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6344
    invoke-interface {p2, p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setInstaller(Ljava/lang/String;I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$uG5lRCL0U9tFlrQwzWyTBhTh6SE(ILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 5981
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setPageSizeAppCompatFlags(I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$wiOPGFx4UPFnjd8jvuyQq_2aeAM(Ljava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .locals 0

    .line 6337
    invoke-interface {p2, p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setInstaller(Ljava/lang/String;I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$zOtQV_eqmOwOvY2WrNe4NKLNCXY(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->lambda$setApplicationCategoryHint$9(ILjava/lang/String;ILjava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 15

    move-object/from16 v1, p1

    .line 4823
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4824
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmModuleInfoProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object v5

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDomainVerificationConnection(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DomainVerificationConnection;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/IPackageManagerBase;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/ModuleInfoProvider;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/pm/ResolveIntentHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DomainVerificationConnection;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageProperty;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkPackageStartable(Ljava/lang/String;I)V
    .locals 1

    .line 4833
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4834
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->checkPackageStartable(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    return-void
.end method

.method public clearApplicationProfileData(Ljava/lang/String;)V
    .locals 7

    .line 4839
    const-string v0, "Only the system or shell can clear all profile data"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 4842
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 4843
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 4844
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 4845
    const-string v4, "clearApplicationProfileData"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p1

    .line 4848
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4849
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 4850
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 4851
    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_2

    .line 4848
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz p1, :cond_3

    .line 4844
    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    .locals 6

    .line 4858
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData_enforcePermission()V

    .line 4860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4861
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    .line 4862
    const-string v5, "clear application data"

    const/4 v3, 0x1

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4865
    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    .line 4868
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda21;

    invoke-direct {p3, p2, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda21;-><init>(Landroid/content/pm/IPackageDataObserver;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 4878
    :cond_1
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {p3, v2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 4882
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    .line 4883
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0, p1}, [Ljava/lang/Object;

    move-result-object p3

    const/16 v0, 0xc3c

    invoke-static {v0, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4887
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;

    move-object v5, p2

    move v4, v1

    move v3, v2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    move-object v2, p1

    .line 4879
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot clear data for a protected package: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearCrossProfileIntentFilters(ILjava/lang/String;)V
    .locals 3

    .line 4939
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters_enforcePermission()V

    .line 4940
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4941
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 4942
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v1, p2, v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 4943
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    const-string/jumbo v2, "no_debugging_features"

    invoke-static {v1, v2, v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 4945
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCrossProfileIntentFilterHelper()Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 4946
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 4948
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void
.end method

.method public final deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 1

    .line 4993
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4994
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 7

    .line 5000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5001
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_DELETE_CACHE_FILES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5005
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DELETE_CACHE_FILES"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5008
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calling uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not have "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", silently ignoring"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5013
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5016
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    .line 5017
    const-string v5, "delete application cache files"

    const/4 v3, 0x1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5019
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 5021
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    .line 5022
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0, p1}, [Ljava/lang/Object;

    move-result-object p2

    const/16 v0, 0xc3c

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5026
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda18;

    move-object v6, p3

    move v3, v1

    move v5, v2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 6771
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "PackageManager"

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 6772
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6773
    new-instance v3, Lcom/android/server/pm/KnownPackages;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDefaultAppProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v5, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    move-object v12, v11

    iget-object v11, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v5, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    move-object v14, v13

    iget-object v13, v5, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    move-object v15, v14

    iget-object v14, v5, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v5, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v5, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object/from16 v18, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    const-string v17, "com.android.companiondevicemanager"

    move-object/from16 v19, v3

    iget-object v3, v5, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v20, v3

    iget-object v3, v5, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    move-object/from16 v21, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v21

    invoke-direct/range {v3 .. v20}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6792
    new-instance v11, Landroid/util/ArrayMap;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v11, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 6794
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v4

    .line 6795
    :try_start_0
    new-instance v12, Landroid/util/ArraySet;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-direct {v12, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 6796
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v3

    .line 6797
    new-instance v3, Lcom/android/server/pm/DumpHelper;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v5, v4

    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmStorageEventHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/StorageEventHelper;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v8, v7

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    move-object v9, v8

    iget-object v8, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 6800
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v13

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSnapshotStatistics(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SnapshotStatistics;

    move-result-object v14

    move-object v6, v9

    move-object/from16 v9, v17

    invoke-direct/range {v3 .. v14}, Lcom/android/server/pm/DumpHelper;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;[Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;Lcom/android/server/pm/SnapshotStatistics;)V

    move-object/from16 v0, p1

    move-object v4, v3

    move-object/from16 v3, p3

    .line 6801
    invoke-virtual {v4, v2, v0, v1, v3}, Lcom/android/server/pm/DumpHelper;->doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6796
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enterSafeMode()V
    .locals 1

    .line 5063
    const-string v0, "Only the system can request entering safe mode"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 5066
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSystemReady(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5067
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fputmSafeMode(Lcom/android/server/pm/PackageManagerService;Z)V

    :cond_0
    return-void
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 10

    if-ltz p1, :cond_0

    .line 5077
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can extend verification timeouts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5081
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5083
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda14;

    move-object v4, p0

    move v5, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;IIIJ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public flushPackageRestrictionsAsUser(I)V
    .locals 7

    .line 5112
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5114
    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5117
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    .line 5120
    const-string v6, "flushPackageRestrictions"

    const/4 v4, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5123
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 5124
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, v3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V

    .line 5125
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .locals 8

    .line 5133
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->freeStorage_enforcePermission()V

    .line 5134
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .locals 8

    .line 5160
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify_enforcePermission()V

    .line 5161
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda11;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAllApexDirectories()Ljava/util/List;
    .locals 3

    .line 6734
    const-string v0, "getAllApexDirectories can only be called by system or root"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6737
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    .line 6738
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6739
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 6740
    iget-object v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 5350
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getAppMetadataFd_enforcePermission()V

    .line 5351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5352
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 5353
    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5359
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 5363
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    .line 5365
    :try_start_0
    invoke-static {p2, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1

    .line 5356
    :cond_1
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public getAppMetadataSource(Ljava/lang/String;I)I
    .locals 1

    .line 5374
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getAppMetadataSource_enforcePermission()V

    .line 5375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5376
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 5377
    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5383
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppMetadataSource()I

    move-result p0

    return p0

    .line 5380
    :cond_0
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 6669
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageArchiver;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getArchivedPackage(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;
    .locals 0

    .line 6663
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getArchivedPackageInternal(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object p0

    return-object p0
.end method

.method public getChangedPackages(II)Landroid/content/pm/ChangedPackages;
    .locals 6

    .line 5181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5182
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5183
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 5186
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    const/4 v4, 0x0

    .line 5189
    const-string v5, "getChangedPackages"

    const/4 v3, 0x0

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5191
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ChangedPackagesTracker;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5195
    invoke-virtual {p0}, Landroid/content/pm/ChangedPackages;->getPackageNames()Ljava/util/List;

    move-result-object p1

    .line 5196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    .line 5199
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5200
    invoke-interface {v0, v3, v1, v2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5201
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public getDomainVerificationAgent(I)Landroid/content/ComponentName;
    .locals 3

    .line 6711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6712
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6715
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 6716
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    .line 6718
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6717
    invoke-interface {v1, v2, v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6723
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6724
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object p0

    .line 6713
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to query domain verification agent"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDomainVerificationBackup(I)[B
    .locals 4

    .line 5211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 5216
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5217
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 5218
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v3, 0x1

    invoke-interface {v2, p0, v1, v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 5220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5221
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5216
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 5223
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz p1, :cond_0

    .line 5224
    const-string p1, "PackageManager"

    const-string v0, "Unable to write domain verification for backup"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 5212
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call getDomainVerificationBackup()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHoldLockToken()Landroid/os/IBinder;
    .locals 3

    .line 5232
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 5236
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    const-string v2, "getHoldLockToken requires INJECT_EVENTS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5240
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 5241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-object v0

    .line 5233
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "getHoldLockToken requires a debuggable build"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInitialNonStoppedSystemPackages()Ljava/util/List;
    .locals 1

    .line 5477
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 5478
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 5248
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppAndroidId_enforcePermission()V

    .line 5249
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "getInstantAppAndroidId"

    const/4 v4, 0x1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5254
    invoke-interface {v1, p1, v3}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5257
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstantAppCookie(Ljava/lang/String;I)[B
    .locals 7

    .line 5266
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5267
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "getInstantAppCookie"

    const/4 v4, 0x1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 5273
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5274
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5277
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppCookie(Lcom/android/server/pm/pkg/AndroidPackage;I)[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 5286
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {v1, v0, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5288
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    const-string v3, "getInstantAppIcon"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5291
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "getInstantAppIcon"

    const/4 v4, 0x1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5295
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getInstantApps(I)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 5304
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {v1, v0, p1}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5306
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    const-string v3, "getEphemeralApplications"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5309
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "getEphemeralApplications"

    const/4 v4, 0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5313
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApps(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5315
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 5322
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/pm/PreferredActivityHelper;->getLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .locals 7

    .line 5329
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ResolveIntentHelper;->getLaunchIntentSenderForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method public getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 5335
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5336
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 5337
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMoveStatus(I)I
    .locals 0

    .line 5343
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus_enforcePermission()V

    .line 5344
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 6007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6008
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 6009
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 6011
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6015
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6016
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6021
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/PackageState;->getPageSizeCompatWarningMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6012
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be the system or root."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .locals 4

    .line 5388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5389
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5390
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 5391
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5393
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    return-object p0

    .line 5396
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PermissionController is not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRuntimePermissionsVersion(I)I
    .locals 2

    .line 5402
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 5403
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "getRuntimePermissionVersion"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 5405
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDefaultRuntimePermissionsVersion(I)I

    move-result p0

    return p0
.end method

.method public getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 5410
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    .line 5412
    const-string v5, "getSplashScreenTheme"

    const/4 v3, 0x0

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5415
    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5418
    :cond_0
    invoke-interface {p0, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3

    .line 5434
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5435
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 5436
    invoke-interface {p0, p1, v1, v2, p2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 5441
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 5437
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to calling uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 5447
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5448
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 5450
    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 5453
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object p0

    invoke-virtual {p0, v2, p1, p2, v1}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/content/pm/UserPackage;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5455
    iget-object p0, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 5465
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5466
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5467
    new-instance p0, Landroid/content/pm/FeatureInfo;

    invoke-direct {p0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 5468
    const-string/jumbo v1, "ro.opengles.version"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 5470
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5472
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    .line 5483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5484
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUSPEND_APPS"

    const-string v2, "getUnsuspendablePackagesForUser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5486
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5487
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 5488
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot query getUnsuspendablePackagesForUser for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5494
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->getUnsuspendablePackagesForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserMinAspectRatio(Ljava/lang/String;I)I
    .locals 1

    .line 5424
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 5425
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5427
    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5429
    :cond_0
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result p0

    return p0
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    .line 5501
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity_enforcePermission()V

    .line 5503
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 5504
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/pm/Settings;->getVerifierDeviceIdentityLPw(Lcom/android/server/pm/Computer;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 5505
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public holdLock(Landroid/os/IBinder;I)V
    .locals 1

    .line 5545
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmTestUtilityService(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/TestUtilityService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/TestUtilityService;->verifyHoldLockToken(Landroid/os/IBinder;)V

    .line 5547
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0

    int-to-long p1, p2

    .line 5548
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 5549
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I
    .locals 7

    .line 5558
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmInstallPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstallPackageHelper;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 5559
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isAppArchivable(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    .line 6675
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->isAppArchivable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .locals 2

    .line 5564
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v0, 0x61

    .line 5566
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5564
    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageStateProtected(Ljava/lang/String;I)Z
    .locals 7

    .line 5572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5573
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 5575
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x1

    .line 5576
    const-string v5, "isPackageStateProtected"

    const/4 v3, 0x0

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5579
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 5580
    invoke-interface {v0, p2, v1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5582
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must have the android.permission.MANAGE_DEVICE_ADMINS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5586
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPageSizeCompatEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 5990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5991
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 5992
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 5994
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5998
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5999
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, v0, v2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6002
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isPageSizeAppCompatEnabled()Z

    move-result p0

    return p0

    .line 5995
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be the system or root."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 5593
    const-string v0, "android.net.netmon.lingerExpired"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.server.sip.SipWakeupTimer"

    .line 5594
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.internal.telephony.data-reconnect"

    .line 5595
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.netmon.launchCaptivePortalApp"

    .line 5596
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 5601
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v0

    .line 5602
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 5603
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$deleteApplicationCacheFilesAsUser$1(Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V
    .locals 2

    .line 5029
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5030
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5034
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 5039
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p2

    .line 5042
    :try_start_0
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    .line 5045
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 5047
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;

    move-result-object p0

    const/16 v0, 0x27

    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 5049
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    :cond_1
    if-eqz p5, :cond_2

    const/4 p0, 0x1

    .line 5053
    :try_start_1
    invoke-interface {p5, p1, p0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 5055
    :catch_0
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    .line 5039
    :try_start_2
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
.end method

.method public final synthetic lambda$extendVerificationTimeout$2(IIIJ)V
    .locals 2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    .line 5085
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v0, :cond_4

    .line 5086
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageVerificationState;->extendTimeout(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5091
    :cond_1
    new-instance v0, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    const-wide/32 p2, 0x36ee80

    cmp-long v1, p4, p2

    if-lez v1, :cond_2

    move-wide p4, p2

    :cond_2
    const-wide/16 p2, 0x0

    cmp-long v1, p4, p2

    if-gez v1, :cond_3

    move-wide p4, p2

    .line 5102
    :cond_3
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 5103
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 5104
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5105
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final synthetic lambda$freeStorage$3(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .locals 11

    .line 5135
    const-string v1, "PackageManager"

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 5137
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 5140
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v2

    :goto_0
    if-eqz p5, :cond_0

    .line 5144
    :try_start_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    .line 5145
    invoke-virtual {p0, v2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 5147
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p5

    .line 5146
    invoke-virtual/range {v3 .. v10}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 5150
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public final synthetic lambda$freeStorageAndNotify$4(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .locals 1

    .line 5162
    const-string v0, "PackageManager"

    .line 5164
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5167
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .line 5171
    :try_start_1
    invoke-interface {p5, p1, p0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 5173
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public final synthetic lambda$movePackage$5(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 6

    .line 5635
    :try_start_0
    new-instance v0, Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/MovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 5637
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/MovePackageHelper;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, p1

    move v3, p3

    goto :goto_0

    .line 5640
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to move "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PackageManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5641
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p1, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    return-void
.end method

.method public final synthetic lambda$setApplicationCategoryHint$9(ILjava/lang/String;ILjava/lang/String;ILcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .locals 2

    .line 5906
    invoke-interface {p7, p1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    .line 5910
    invoke-interface {p7, p2, v0, v1, p3}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 5916
    invoke-interface {p7, p4, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5923
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5922
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5928
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    move-result p1

    if-eq p1, p5, :cond_0

    .line 5929
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance p1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda23;

    invoke-direct {p1, p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-virtual {p0, p6, p4, p1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 5924
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Calling package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not installer for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5919
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown target package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5912
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not belong to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5907
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic lambda$setInstallerPackageName$13(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/pm/Computer;)Ljava/lang/Boolean;
    .locals 3

    .line 6238
    invoke-interface {p5, p1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6239
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 6243
    :cond_0
    invoke-interface {p5, p2, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 p2, 0x0

    if-eqz p4, :cond_2

    .line 6251
    invoke-interface {p5, p4, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 6254
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown installer package: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object p3, p2

    .line 6260
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 6262
    invoke-interface {p5, v1}, Lcom/android/server/pm/Computer;->getPackageOrSharedUser(I)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 6264
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 6265
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_1

    .line 6267
    :cond_3
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/SharedUserApi;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    :goto_1
    if-eqz p3, :cond_5

    .line 6277
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p3

    .line 6276
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p3

    if-nez p3, :cond_4

    goto :goto_2

    .line 6279
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller does not have same cert as new installer package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6288
    :cond_5
    :goto_2
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-nez p3, :cond_6

    goto :goto_3

    .line 6290
    :cond_6
    invoke-interface {p5, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_8

    .line 6294
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 6293
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_5

    .line 6296
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller does not have same cert as old installer package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6300
    :cond_8
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p2, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_a

    .line 6305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, ""

    const-string p5, "150857253"

    filled-new-array {p5, p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    const p4, 0x534e4554

    invoke-static {p4, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 6309
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object p0

    const-wide/32 v0, 0x8fde625

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0

    if-nez p0, :cond_9

    .line 6317
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6320
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 6312
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Neither user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nor current process has "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6320
    :goto_4
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6321
    throw p0

    .line 6324
    :cond_a
    :goto_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 6270
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown calling UID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6246
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown target package: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic lambda$setMimeGroup$18(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .locals 12

    .line 6459
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    .line 6462
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 6463
    new-instance v6, Ljava/util/ArrayList;

    .line 6464
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6465
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    .line 6466
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v1

    const/4 v2, 0x0

    move v11, v2

    .line 6468
    :goto_0
    array-length v2, v1

    if-ge v11, v2, :cond_1

    .line 6470
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v2

    aget v4, v1, v11

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-eqz v2, :cond_0

    .line 6471
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6472
    aget v2, v1, v11

    invoke-static {v2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 6473
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmBroadcastHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BroadcastHelper;

    move-result-object v2

    const-string v8, "The mimeGroup is changed"

    const-string/jumbo v9, "mime_group_changed"

    const/4 v5, 0x1

    move-object v4, p1

    move v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    move-object v4, p1

    move v10, p3

    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object p1, v4

    move p3, v10

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic lambda$verifyPendingInstall$23(III)V
    .locals 2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    .line 6608
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageVerificationState;

    if-nez v0, :cond_1

    goto :goto_1

    .line 6612
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageVerificationState;->checkRequiredVerifierUid(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6613
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageVerificationState;->checkSufficientVerifierUid(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    .line 6618
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6619
    new-instance v1, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v1, p3, p2}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 6621
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 6622
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6623
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 5613
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 5614
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5617
    :cond_0
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 5620
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 5621
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v3, p5

    move v8, p6

    .line 5620
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ProcessLoggingHandler;->logAppProcessStart(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public makeProviderVisible(ILjava/lang/String;)V
    .locals 9

    .line 5510
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 5511
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5513
    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/Computer;->getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 5517
    :cond_0
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5518
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5519
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 5518
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    return-void
.end method

.method public makeUidVisible(II)V
    .locals 10

    .line 5526
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->makeUidVisible_enforcePermission()V

    .line 5527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5528
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5529
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5530
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    .line 5531
    const-string v5, "makeUidVisible"

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v9, v2

    .line 5533
    const-string v5, "makeUidVisible"

    move v2, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const/4 v7, 0x0

    .line 5535
    const-string v8, "makeUidVisible"

    const/4 v6, 0x0

    move v4, p1

    move-object v3, v0

    move v5, v2

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5538
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5539
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/4 v8, 0x0

    move v4, v9

    const/4 v9, 0x0

    const/4 v5, 0x0

    move v7, p2

    .line 5538
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    return-void
.end method

.method public movePackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 5628
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->movePackage_enforcePermission()V

    .line 5630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 5631
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 5632
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmNextMoveId(Lcom/android/server/pm/PackageManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 5633
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v4
.end method

.method public movePrimaryStorage(Ljava/lang/String;)I
    .locals 3

    .line 5650
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage_enforcePermission()V

    .line 5652
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmNextMoveId(Lcom/android/server/pm/PackageManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 5653
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5654
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5655
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    .line 5657
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;I)V

    .line 5669
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 5670
    invoke-virtual {p0, p1, v1}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    return v0
.end method

.method public notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 10

    .line 5678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5679
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 5684
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result v2

    const-string v3, "PackageManager"

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 5685
    invoke-interface {v1, p1, v0, v2}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5690
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 5688
    const-string p1, "Invalid dex load report. loadingPackageName=%s, uid=%d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5687
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5694
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 5695
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 5708
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 5711
    const-class p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 5712
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 5713
    invoke-interface {p0, v0, v2}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p0

    if-eqz p3, :cond_2

    .line 5718
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5722
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5724
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 5727
    :cond_1
    :goto_0
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5726
    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5728
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid loaderIsa in notifyDexLoad call from "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": expected "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", got "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5756
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    return-void

    .line 5746
    :cond_2
    :try_start_1
    invoke-virtual {v4, p0, p1, p2}, Lcom/android/server/art/DexUseManagerLocal;->notifyDexContainersLoaded(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 5749
    :try_start_2
    sget-boolean p2, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    if-eqz p2, :cond_5

    .line 5750
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unsupported isa \'arm\'"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5751
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Non-native isa \'arm\'"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5752
    :cond_3
    const-string p1, "Dex with art service is conflict with hbt_translator"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz p0, :cond_4

    .line 5756
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_4
    return-void

    .line 5754
    :cond_5
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz p0, :cond_6

    .line 5711
    :try_start_4
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1

    :cond_7
    const-wide/16 v4, 0x0

    .line 5759
    invoke-interface {v1, p1, v4, v5, v8}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-nez v5, :cond_8

    .line 5761
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Loading a package that does not exist for the calling user. package="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5766
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;

    move-result-object v4

    .line 5767
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v9

    move-object v6, p2

    move-object v7, p3

    .line 5766
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V

    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .locals 4

    .line 5773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5774
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5775
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 5777
    invoke-interface {v2, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5778
    invoke-interface {v2, p1, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 5780
    invoke-interface {v2, p1, v1, v0}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 5787
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    return-void
.end method

.method public notifyPackagesReplacedReceived([Ljava/lang/String;)V
    .locals 4

    .line 6654
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6655
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 6656
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6657
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 6763
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 6764
    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;-><init>(Landroid/content/pm/IPackageManager;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 6765
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 6749
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6751
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_0

    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_0

    instance-of p1, p0, Landroid/os/ParcelableException;

    if-nez p1, :cond_0

    .line 6753
    const-string p1, "PackageManager"

    const-string p2, "Package Manager Unexpected Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6755
    :cond_0
    throw p0
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V
    .locals 1

    .line 5793
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5796
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void

    .line 5794
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Override label should be a valid String"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performDexOptWithStatusByOption(Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 0

    .line 5802
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    return p0
.end method

.method public queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 5808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5809
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5810
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5811
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 5812
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;

    move-result-object p0

    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/Computer;II)V

    .line 5813
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/pm/PackageProperty;->queryProperty(Ljava/lang/String;ILjava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5818
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5820
    :cond_0
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V
    .locals 1

    .line 5834
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignored unsupported registerDexModule call for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5837
    new-instance p1, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 p3, 0x0

    const-string/jumbo v0, "registerDexModule call not supported since Android U"

    invoke-direct {p1, p3, v0}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    if-eqz p4, :cond_0

    .line 5841
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda12;

    invoke-direct {p3, p4, p2, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda12;-><init>(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 0

    .line 5856
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback_enforcePermission()V

    .line 5857
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->register(Landroid/content/pm/IPackageMoveObserver;)V

    return-void
.end method

.method public registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V
    .locals 7

    .line 6629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6630
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6632
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 6630
    const-string/jumbo v5, "registerPackageMonitorCallback"

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 6633
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageMonitorCallbackHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->registerPackageMonitorCallback(Landroid/os/IRemoteCallback;II)V

    return-void
.end method

.method public relinquishUpdateOwnership(Ljava/lang/String;)V
    .locals 4

    .line 6361
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6362
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 6363
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6366
    invoke-interface {v2, p1, v0, v1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6373
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 6376
    :cond_0
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 6382
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 6383
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 6387
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not the current update owner."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6390
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v0, v3, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6392
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    return-void

    .line 6369
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown target package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)Z
    .locals 7

    .line 4957
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->removeCrossProfileIntentFilter_enforcePermission()V

    .line 4958
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4959
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-static {v1, v2, p2, v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 4960
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p4, v0, v2}, Lcom/android/server/pm/UserManagerService;->enforceCrossProfileIntentFilterAccess(IIIZ)V

    .line 4962
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    const-string/jumbo v3, "no_debugging_features"

    invoke-static {v1, v3, v0, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 4966
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4967
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 4968
    invoke-virtual {v1, p3}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v1

    .line 4970
    new-instance v3, Landroid/util/ArraySet;

    .line 4971
    invoke-virtual {v1}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move v4, v2

    .line 4972
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 4973
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4974
    iget-object v6, v5, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-static {v6, p1}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4975
    invoke-virtual {v5}, Lcom/android/server/pm/CrossProfileIntentFilter;->getOwnerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4976
    invoke-virtual {v5}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v6

    if-ne v6, p4, :cond_0

    .line 4977
    invoke-virtual {v5}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v6

    if-ne v6, p5, :cond_0

    .line 4978
    invoke-virtual {v1, v5}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4983
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v2, :cond_2

    .line 4985
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_2
    return v2

    .line 4983
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    .locals 11

    .line 6647
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 6649
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v10

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 6647
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PackageManagerService;->requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-void
.end method

.method public restoreDomainVerification([BI)V
    .locals 1

    .line 5862
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 5867
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5868
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    .line 5872
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->restoreSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 5873
    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5875
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz p1, :cond_0

    .line 5876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception restoring domain verification: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 5863
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call restorePreferredActivities()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public restoreLabelAndIcon(Landroid/content/ComponentName;I)V
    .locals 1

    .line 5883
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/pm/PackageManagerService;->updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public sendDeviceCustomizationReadyBroadcast()V
    .locals 2

    .line 5888
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SEND_DEVICE_CUSTOMIZATION_READY"

    const-string/jumbo v1, "sendDeviceCustomizationReadyBroadcast"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5891
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5893
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/BroadcastHelper;->sendDeviceCustomizationReadyBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5896
    throw p0
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 5902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5903
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5905
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda20;

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;I)V

    .line 5936
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5937
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object p0

    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eqz p0, :cond_0

    .line 5938
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isStateChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isSpecificPackageNull()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5941
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 5942
    :try_start_0
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object p0

    iget-object p2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 5943
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 5946
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isCommitted()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5947
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    :cond_1
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1

    .line 5954
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_1

    .line 5956
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    .line 5959
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p4, p5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    .locals 13

    move v0, p2

    move/from16 v4, p3

    .line 6028
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser_enforcePermission()V

    .line 6029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6030
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6031
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setApplicationHiddenSetting for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6034
    const-string v5, "PackageManager"

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, p1, v4}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6035
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not hiding package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": has active device admin"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 6040
    :cond_0
    const-string v7, "android"

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Cannot hide package: "

    if-nez v7, :cond_9

    const-class v7, Landroid/content/pm/PackageManagerInternal;

    .line 6041
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 6042
    invoke-virtual {v7}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 6047
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 6049
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    .line 6114
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 6055
    :cond_2
    :try_start_1
    invoke-interface {v7, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 6057
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v12

    if-eq v12, v0, :cond_8

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 6058
    invoke-interface {v2, v7, v3, v4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    .line 6065
    :cond_3
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 6068
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 6069
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providing SDK library: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6071
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6069
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6114
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 6077
    :cond_4
    :try_start_2
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 6078
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providing static shared library: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6080
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6078
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6114
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_5
    if-eqz v0, :cond_6

    .line 6085
    :try_start_3
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 6086
    invoke-virtual {v2, v4, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6087
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not hiding protected package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6114
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 6091
    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, v4, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;-><init>(IZ)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, p1, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6094
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 6096
    invoke-interface {v2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-eqz v0, :cond_7

    .line 6099
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    const-string v4, "hiding pkg"

    const/16 v5, 0xd

    move-object v1, p1

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    move v4, v3

    .line 6101
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmBroadcastHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BroadcastHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, v6, v4, v2}, Lcom/android/server/pm/BroadcastHelper;->sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;ILcom/android/server/pm/PackageSender;)V

    goto :goto_0

    .line 6105
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmBroadcastHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BroadcastHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v6

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZILjava/lang/String;)V

    .line 6111
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6114
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6115
    throw p0

    .line 6043
    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    .locals 3

    .line 6122
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser_enforcePermission()V

    .line 6123
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6124
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6125
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6126
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    .line 6128
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6129
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot block uninstall of package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " providing SDK library: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6130
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6129
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6136
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6137
    const-string p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot block uninstall of package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " providing static shared library: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6138
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6137
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6142
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 6143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p3, p1, p2}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V

    .line 6144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 6146
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 6144
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V
    .locals 1

    .line 6153
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_1

    .line 6155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    .line 6158
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, p4, p5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public setComponentEnabledSettings(Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    .line 6166
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 6167
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    .line 6171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .line 6173
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 6168
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The list of enabled settings is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 6

    .line 6179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 6180
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 6181
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "setDistractingPackageRestrictionsAsUser"

    invoke-static {v0, v5, p3, v2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceCanSetDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    .line 6183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6184
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;

    move-result-object v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DistractingPackageHelper;->setDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;III)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 7

    .line 6191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6192
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 6194
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x1

    .line 6195
    const-string/jumbo v5, "setHarmfulAppInfo"

    const/4 v3, 0x1

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6198
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "android.permission.SET_HARMFUL_APP_WARNINGS"

    .line 6199
    invoke-interface {v0, p3, v1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 6201
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6205
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, v2, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;-><init>(ILjava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p2

    .line 6208
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isSpecificPackageNull()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6211
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void

    .line 6209
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInstallLocation(I)Z
    .locals 2

    .line 6217
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation_enforcePermission()V

    .line 6218
    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->getInstallLocation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 6224
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_install_location"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 6234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6235
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 6237
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;)V

    .line 6326
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object p0

    .line 6327
    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v5, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 6332
    :cond_0
    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    const-wide/16 v6, 0x0

    invoke-interface {p1, v5, v6, v7, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    .line 6335
    :goto_0
    iget-object p2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p2

    .line 6336
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v5, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p0

    .line 6339
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isPackagesChanged()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isStateChanged()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 6340
    :cond_1
    :goto_1
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6341
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6343
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, v5, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6349
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 6351
    :cond_2
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    .line 6352
    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 6353
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 6354
    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 6355
    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 6347
    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 6349
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    .line 6353
    :goto_3
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_4
    return-void
.end method

.method public setInstantAppCookie(Ljava/lang/String;[BI)Z
    .locals 7

    .line 6401
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 6402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x1

    const-string/jumbo v6, "setInstantAppCookie"

    const/4 v4, 0x1

    move v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-interface {v1, p1, p3}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 6409
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6410
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 6413
    :cond_1
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6414
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result p0

    .line 6413
    invoke-virtual {p3, p1, p2, p0, v3}, Lcom/android/server/pm/InstantAppRegistry;->setInstantAppCookie(Lcom/android/server/pm/pkg/AndroidPackage;[BII)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public setKeepUninstalledPackages(Ljava/util/List;)V
    .locals 3

    .line 6419
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.KEEP_UNINSTALLED_PACKAGES"

    const-string/jumbo v2, "setKeepUninstalledPackages requires KEEP_UNINSTALLED_PACKAGES permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6424
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/IPackageManagerBase;->snapshot()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V

    return-void
.end method

.method public setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .line 6429
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6430
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6431
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 6432
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    const/4 v2, 0x0

    .line 6433
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6434
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6435
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MIME type length exceeds 255 characters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6438
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 6439
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getMimeGroups()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_5

    .line 6444
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 6445
    invoke-interface {v2, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 6448
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-gt v2, v3, :cond_4

    .line 6453
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6454
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;

    invoke-direct {v3, p2, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    const/4 v2, 0x0

    invoke-virtual {p3, v2, p1, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6457
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p3, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-virtual {v2, p3, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6458
    new-instance p2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 6481
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    return-void

    .line 6449
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Max limit on MIME types for MIME group "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exceeded for package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6441
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown MIME group "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for package "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPackageStoppedState(Ljava/lang/String;ZI)V
    .locals 1

    .line 6486
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6487
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;
    .locals 11

    .line 6495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 6498
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object/from16 v0, p7

    move/from16 v8, p9

    .line 6501
    invoke-static {v8, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v7

    .line 6502
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "setPackagesSuspendedAsUser"

    const/4 v10, 0x0

    move-object v3, v7

    move v5, v8

    move v4, v9

    move v2, v10

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;ZLandroid/content/pm/UserPackage;IILjava/lang/String;)V

    .line 6504
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;

    move-result-object v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/SuspendPackageHelper;->setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Landroid/content/pm/UserPackage;IIZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setPageSizeAppCompatFlagsSettingsOverride(Ljava/lang/String;Z)V
    .locals 2

    .line 5965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5966
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5968
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    .line 5975
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 p2, 0x0

    .line 5976
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p2

    .line 5982
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isSpecificPackageNull()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5985
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    return-void

    .line 5983
    :cond_1
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

    .line 5969
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be the system or root."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRequiredForSystemUser(Ljava/lang/String;Z)Z
    .locals 2

    .line 6511
    const-string/jumbo v0, "setRequiredForSystemUser can only be run by the system or root"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6514
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda15;-><init>(Z)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p1

    .line 6516
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6520
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    const/4 p0, 0x1

    return p0
.end method

.method public setRuntimePermissionsVersion(II)V
    .locals 2

    .line 6553
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 6554
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 6555
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "setRuntimePermissionVersion"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 6557
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->setDefaultRuntimePermissionsVersion(II)V

    return-void
.end method

.method public setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 6563
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6564
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    .line 6565
    const-string/jumbo v5, "setSplashScreenTheme"

    const/4 v3, 0x0

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6567
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p3, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 6569
    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 6575
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance p3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda9;

    invoke-direct {p3, v2, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda9;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-void
.end method

.method public setUpdateAvailable(Ljava/lang/String;Z)V
    .locals 1

    .line 6582
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setUpdateAvailable_enforcePermission()V

    .line 6583
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;-><init>(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-void
.end method

.method public setUserMinAspectRatio(Ljava/lang/String;II)V
    .locals 6

    .line 6528
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setUserMinAspectRatio_enforcePermission()V

    .line 6529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6530
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x0

    .line 6531
    const-string/jumbo v5, "setUserMinAspectRatio"

    const/4 v3, 0x0

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 6534
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 6537
    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6542
    :cond_0
    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result p2

    if-ne p2, p3, :cond_1

    :goto_0
    return-void

    .line 6546
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance p2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;

    invoke-direct {p2, v2, p3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;-><init>(II)V

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-void
.end method

.method public unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 0

    .line 6590
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback_enforcePermission()V

    .line 6591
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->unregister(Landroid/content/pm/IPackageMoveObserver;)V

    return-void
.end method

.method public unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 6639
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmPackageMonitorCallbackHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public verifyPendingInstall(II)V
    .locals 3

    if-ltz p1, :cond_0

    .line 6600
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    const-string v2, "Only package verification agents can verify applications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6604
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6606
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public waitForHandler(JZ)Z
    .locals 4

    .line 6687
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz p3, :cond_0

    .line 6689
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6691
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6693
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 6694
    :catch_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_2

    .line 6696
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long p0, v2, p0

    cmp-long p2, p0, p2

    if-gtz p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 6700
    :cond_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    return v1
.end method
