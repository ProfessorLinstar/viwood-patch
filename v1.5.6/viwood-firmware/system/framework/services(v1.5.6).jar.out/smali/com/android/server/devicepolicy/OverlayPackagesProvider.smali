.class public Lcom/android/server/devicepolicy/OverlayPackagesProvider;
.super Ljava/lang/Object;
.source "OverlayPackagesProvider.java"


# static fields
.field public static final sActionToMetadataKeyMap:Ljava/util/Map;

.field public static final sAllowedActions:Ljava/util/Set;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mRecursiveStringArrayResourceResolver:Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;


# direct methods
.method public static synthetic $r8$lambda$3E9LftquJJwQKjbYZVbYgoZnplQ(I)[Ljava/lang/String;
    .locals 0

    .line 379
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$8fE0w5L9mBDN45HMGaSGzNyLpKE(I)[Ljava/lang/String;
    .locals 0

    .line 350
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$AgvqN3ACCsQvAonVzz3UNrxhaHI(I)[Ljava/lang/String;
    .locals 0

    .line 355
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Bpjpq7H0ZG9cFZSBuC5EGmSvass(I)[Ljava/lang/String;
    .locals 0

    .line 366
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$E4bSHfMDQZoM2Ov4YSaLYAT9_t4(I)[Ljava/lang/String;
    .locals 0

    .line 348
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$I0-s-JSLF5g9FufW_YOqabQDof4(I)[Ljava/lang/String;
    .locals 0

    .line 363
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$NzqhlktApwF1oiRBpnqDoLN3694(I)[Ljava/lang/String;
    .locals 0

    .line 357
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Uwai4rObQEoI1nHq8I8uV6pqJ5Q(I)[Ljava/lang/String;
    .locals 0

    .line 373
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zc-HKCg2M3bZJ_9l2v3XK68XZRc(I)[Ljava/lang/String;
    .locals 0

    .line 359
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$sTWJC8t6yX8DrrM2220p8pxQmvk(I)[Ljava/lang/String;
    .locals 0

    .line 352
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$v4hXO-GM_I95TUz9ZBGDfE9WXS4(I)[Ljava/lang/String;
    .locals 0

    .line 376
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$wON8JPwohRauKszRcb44jdGS1rU(I)[Ljava/lang/String;
    .locals 0

    .line 369
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    .line 73
    const-string v1, "android.app.REQUIRED_APP_MANAGED_USER"

    const-string v2, "android.app.action.PROVISION_MANAGED_USER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "android.app.REQUIRED_APP_MANAGED_PROFILE"

    const-string v3, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "android.app.REQUIRED_APP_MANAGED_DEVICE"

    const-string v4, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    .line 81
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 93
    new-instance v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;-><init>(Lcom/android/server/devicepolicy/OverlayPackagesProvider-IA;)V

    new-instance v1, Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;-><init>(Landroid/content/res/Resources;)V

    .line 93
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;-><init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 140
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 141
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mRecursiveStringArrayResourceResolver:Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 344
    const-string v0, "OverlayPackagesProvider"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const v0, 0x107010b

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 347
    const-string/jumbo v1, "required_apps_managed_device"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x107010d

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 349
    const-string/jumbo v1, "required_apps_managed_user"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x107010c

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 351
    const-string/jumbo v1, "required_apps_managed_profile"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x10700f7

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 354
    const-string v2, "disallowed_apps_managed_device"

    invoke-static {p1, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v1, 0x10700f9

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v1

    new-instance v3, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 356
    const-string v3, "disallowed_apps_managed_user"

    invoke-static {p1, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 358
    invoke-static {p1, v2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x107011c

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 361
    const-string/jumbo v1, "vendor_required_apps_managed_device"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x107011e

    .line 365
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 364
    const-string/jumbo v1, "vendor_required_apps_managed_user"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x107011d

    .line 368
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 367
    const-string/jumbo v1, "vendor_required_apps_managed_profile"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x107011a

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 371
    const-string/jumbo v1, "vendor_disallowed_apps_managed_user"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x1070118

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 374
    const-string/jumbo v1, "vendor_disallowed_apps_managed_device"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x1070119

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 377
    const-string/jumbo v0, "vendor_disallowed_apps_managed_profile"

    invoke-static {p1, v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getDeviceManagerRoleHolders()Ljava/util/Set;
    .locals 2

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 181
    invoke-interface {v1, p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final getDisallowedApps(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 285
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getVendorDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 307
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p1, 0x10700f8

    goto :goto_1

    :pswitch_1
    const p1, 0x10700f9

    goto :goto_1

    :pswitch_2
    const p1, 0x10700f7

    .line 310
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36de2734 -> :sswitch_2
        -0x1ea9303f -> :sswitch_1
        -0x1450e22d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLaunchableApps(I)Ljava/util/Set;
    .locals 2

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const v1, 0xc2200

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 257
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 258
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 259
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getNonRequiredApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .locals 1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    sget-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getLaunchableApps(I)Ljava/util/Set;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredApps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getSystemInputMethods(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 171
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDisallowedApps(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 173
    invoke-virtual {p0, v0, p3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredAppsMainlineModules(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 172
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDeviceManagerRoleHolders()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getRequiredApps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 277
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getVendorRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 280
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getRequiredAppsMainlineModules(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isMainlineModule(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isRequiredAppDeclaredInMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 296
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p1, 0x107010c

    goto :goto_1

    :pswitch_1
    const p1, 0x107010d

    goto :goto_1

    :pswitch_2
    const p1, 0x107010b

    .line 299
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36de2734 -> :sswitch_2
        -0x1ea9303f -> :sswitch_1
        -0x1450e22d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSystemInputMethods(I)Ljava/util/Set;
    .locals 2

    .line 265
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    .line 266
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 267
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 268
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 269
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final getVendorDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 329
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p1, 0x1070119

    goto :goto_1

    :pswitch_1
    const p1, 0x107011a

    goto :goto_1

    :pswitch_2
    const p1, 0x1070118

    .line 332
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36de2734 -> :sswitch_2
        -0x1ea9303f -> :sswitch_1
        -0x1450e22d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getVendorRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 318
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p1, 0x107011d

    goto :goto_1

    :pswitch_1
    const p1, 0x107011e

    goto :goto_1

    :pswitch_2
    const p1, 0x107011c

    .line 321
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36de2734 -> :sswitch_2
        -0x1ea9303f -> :sswitch_1
        -0x1450e22d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isApkInApexMainlineModule(Ljava/lang/String;)Z
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isMainlineModule(Ljava/lang/String;)Z
    .locals 1

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isRegularMainlineModule(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isApkInApexMainlineModule(Ljava/lang/String;)Z

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

.method public final isRegularMainlineModule(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 235
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public final isRequiredAppDeclaredInMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 214
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    sget-object p1, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 222
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final resolveStringArray(I)Ljava/util/Set;
    .locals 1

    .line 339
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
