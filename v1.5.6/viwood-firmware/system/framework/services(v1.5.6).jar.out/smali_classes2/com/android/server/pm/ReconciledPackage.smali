.class public final Lcom/android/server/pm/ReconciledPackage;
.super Ljava/lang/Object;
.source "ReconciledPackage.java"


# instance fields
.field public final mAllPackages:Ljava/util/Map;

.field public final mAllowedSharedLibraryInfos:Ljava/util/List;

.field public mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

.field public final mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

.field public final mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mInstallRequests:Ljava/util/List;

.field public final mRemoveAppKeySetData:Z

.field public final mSharedUserSignaturesChanged:Z

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    .line 55
    iput-object p3, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 56
    iput-object p4, p0, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    .line 57
    iput-object p5, p0, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    .line 58
    iput-object p6, p0, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 59
    iput-boolean p7, p0, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    .line 60
    iput-boolean p8, p0, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    return-void
.end method


# virtual methods
.method public getCombinedAvailablePackages()Ljava/util/Map;
    .locals 3

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    .line 70
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 72
    iget-object v1, p0, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 74
    iget-object p0, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 75
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
