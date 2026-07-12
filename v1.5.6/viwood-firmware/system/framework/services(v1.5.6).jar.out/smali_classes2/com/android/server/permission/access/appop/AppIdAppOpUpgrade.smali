.class public final Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;
.super Ljava/lang/Object;
.source "AppIdAppOpUpgrade.kt"


# instance fields
.field public final policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    return-void
.end method


# virtual methods
.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 7

    const/4 v1, 0x2

    if-gt p4, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 32
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    const-string v5, "android:run_in_background"

    invoke-virtual {v1, p1, v3, p3, v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v6

    .line 34
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 36
    const-string v5, "android:run_any_in_background"

    move-object v2, p1

    move v4, p3

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_0
    const/16 v1, 0xd

    if-gt p4, v1, :cond_1

    const/16 v1, 0x6b

    .line 42
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 44
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 47
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    .line 49
    const-string v6, "android:schedule_exact_alarm"

    .line 46
    invoke-virtual {v1, p1, v5, p3, v6}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v5

    .line 52
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-ne v5, v3, :cond_1

    .line 55
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 57
    const-string v5, "android:schedule_exact_alarm"

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p3

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_1
    const/16 v1, 0xf

    if-gt p4, v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppIdAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 66
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 69
    const-string v3, "android:access_restricted_settings"

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    .line 74
    const-string v4, "android:access_restricted_settings"

    const/4 v5, 0x0

    move v3, p3

    move v2, v1

    move-object v1, p1

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_2
    return-void
.end method
