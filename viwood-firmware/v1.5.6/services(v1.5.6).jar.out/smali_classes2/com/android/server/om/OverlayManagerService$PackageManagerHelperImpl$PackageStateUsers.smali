.class public Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"


# instance fields
.field public final mInstalledUsers:Ljava/util/Set;

.field public mPackageState:Lcom/android/server/pm/pkg/PackageState;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInstalledUsers(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageState(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;)Lcom/android/server/pm/pkg/PackageState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPackageState(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/PackageState;)V
    .locals 1

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    .line 1192
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/om/OverlayManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;-><init>(Lcom/android/server/pm/pkg/PackageState;)V

    return-void
.end method
