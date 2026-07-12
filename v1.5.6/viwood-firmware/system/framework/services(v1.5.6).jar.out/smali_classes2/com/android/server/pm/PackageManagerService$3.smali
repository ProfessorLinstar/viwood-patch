.class public Lcom/android/server/pm/PackageManagerService$3;
.super Lcom/android/internal/pm/parsing/PackageParser2$Callback;
.source "PackageManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$platformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    .line 2040
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$3;->val$platformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {p0}, Lcom/android/internal/pm/parsing/PackageParser2$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getHiddenApiWhitelistedApps()Ljava/util/Set;
    .locals 0

    .line 2053
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getHiddenApiWhitelistedApps()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getInstallConstraintsAllowlist()Ljava/util/Set;
    .locals 0

    .line 2058
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getInstallConstraintsAllowlist()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 1

    .line 2048
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 2043
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$3;->val$platformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method
