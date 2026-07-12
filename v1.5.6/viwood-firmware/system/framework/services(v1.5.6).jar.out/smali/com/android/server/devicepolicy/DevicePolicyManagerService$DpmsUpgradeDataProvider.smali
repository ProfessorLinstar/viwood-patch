.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$1XZnrXYqX3nUSi0VOJ5CXq5s1Xo(Landroid/content/pm/UserInfo;)I
    .locals 0

    .line 3870
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0
.end method

.method public static synthetic $r8$lambda$KoOsW-zVydoprJ8Xj_6TTg441J8(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z
    .locals 1

    .line 3882
    const-string v0, "android"

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PZxVlhbp7zzAa4xBPp94W_xoy-0(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 0

    .line 3880
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$pZI5zCOGQyvh1W9mEETnR12eGuw(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;ILandroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->lambda$getAdminInfoSupplier$0(ILandroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    .line 3850
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public getAdminInfoSupplier(I)Ljava/util/function/Function;
    .locals 1

    .line 3863
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;I)V

    return-object v0
.end method

.method public getPlatformSuspendedPackages(I)Ljava/util/List;
    .locals 3

    .line 3875
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 3876
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager(I)Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v1, 0xc0000

    .line 3877
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object p0

    .line 3879
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 3880
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/PackageManagerInternal;I)V

    .line 3881
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3884
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getUsersForUpgrade()[I
    .locals 1

    .line 3869
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 3870
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getAdminInfoSupplier$0(ILandroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 1

    .line 3864
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mfindAdmin(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;IZ)Landroid/app/admin/DeviceAdminInfo;

    move-result-object p0

    return-object p0
.end method

.method public makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 1

    .line 3853
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v0, "device_policies.xml"

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmakeJournaledFile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    return-object p0
.end method

.method public makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 1

    .line 3858
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v0, "device_policies_version"

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmakeJournaledFile(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    return-object p0
.end method
