.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"

# interfaces
.implements Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;


# instance fields
.field public mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/pkg/mutate/PackageStateMutator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public putSuspendParams(Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->putSuspendParams(Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public removeSuspension(Landroid/content/pm/UserPackage;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->removeSuspension(Landroid/content/pm/UserPackage;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz p0, :cond_0

    .line 449
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDistractionFlags(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setHidden(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setMinAspectRatio(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setMinAspectRatio(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setNotLaunched(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Z

    :cond_0
    return-object p0
.end method

.method public setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    :cond_0
    return-object p0
.end method

.method public setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setStates(Lcom/android/server/pm/pkg/PackageUserStateImpl;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    return-object p0
.end method

.method public setStopped(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method

.method public setUninstallReason(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_0
    return-object p0
.end method
