.class public final Lcom/android/server/pm/ComputerLocked;
.super Lcom/android/server/pm/ComputerEngine;
.source "ComputerLocked.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V
    .locals 1

    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V

    return-void
.end method


# virtual methods
.method public androidApplication()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getCoreAndroidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public resolveComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getResolveComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method
