.class public final Lcom/android/server/pm/PackageInstallerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "PackageInstallerService.java"


# instance fields
.field public final mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 296
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$Lifecycle;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Lifecycle;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$monBroadcastReady(Lcom/android/server/pm/PackageInstallerService;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method
