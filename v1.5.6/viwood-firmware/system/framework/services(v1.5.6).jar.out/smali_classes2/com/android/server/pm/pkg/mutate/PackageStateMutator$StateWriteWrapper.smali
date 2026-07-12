.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"

# interfaces
.implements Lcom/android/server/pm/pkg/mutate/PackageStateWrite;


# instance fields
.field public mState:Lcom/android/server/pm/PackageSetting;

.field public final mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;-><init>(Lcom/android/server/pm/pkg/mutate/PackageStateMutator-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/pkg/mutate/PackageStateMutator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_0
    return-void
.end method

.method public setCategoryOverride(I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;

    :cond_0
    return-object p0
.end method

.method public setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    :cond_0
    return-object p0
.end method

.method public setInstaller(Ljava/lang/String;I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackage(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    :cond_0
    return-object p0
.end method

.method public setLoadingCompletedTime(J)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setLoadingCompletedTime(J)Lcom/android/server/pm/PackageSetting;

    :cond_0
    return-object p0
.end method

.method public setLoadingProgress(F)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    :cond_0
    return-object p0
.end method

.method public setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Z

    :cond_0
    return-object p0
.end method

.method public setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    :cond_0
    return-object p0
.end method

.method public setPageSizeAppCompatFlags(I)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;

    :cond_0
    return-object p0
.end method

.method public setRequiredForSystemUser(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p1

    or-int/lit16 p1, p1, 0x200

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    return-object p0

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p1

    and-int/lit16 p1, p1, -0x201

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    :cond_1
    return-object p0
.end method

.method public setState(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public setUpdateAvailable(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;

    :cond_0
    return-object p0
.end method

.method public setUpdateOwner(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    :cond_0
    return-object p0
.end method

.method public userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageSetting;->getOrCreateUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setWatchable(Lcom/android/server/utils/Watchable;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 198
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mUserStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->setStates(Lcom/android/server/pm/pkg/PackageUserStateImpl;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object p0

    return-object p0
.end method
