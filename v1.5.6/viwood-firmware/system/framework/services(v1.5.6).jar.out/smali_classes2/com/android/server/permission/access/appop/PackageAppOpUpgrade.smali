.class public final Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;
.super Ljava/lang/Object;
.source "PackageAppOpUpgrade.kt"


# instance fields
.field public final policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/PackageAppOpPolicy;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    return-void
.end method


# virtual methods
.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 7

    const/4 v0, 0x2

    if-gt p4, v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 33
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 35
    const-string p4, "android:run_in_background"

    .line 32
    invoke-virtual {v1, p1, p0, p3, p4}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 38
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 40
    const-string v5, "android:run_any_in_background"

    move-object v2, p1

    move v4, p3

    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)Z

    :cond_0
    return-void
.end method
