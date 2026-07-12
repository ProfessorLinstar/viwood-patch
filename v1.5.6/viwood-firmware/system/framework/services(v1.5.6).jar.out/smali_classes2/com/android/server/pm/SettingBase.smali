.class public abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

.field public mPkgFlags:I

.field public mPkgPrivateFlags:I

.field public final mWatchable:Lcom/android/server/utils/Watchable;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 100
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 105
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 100
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final copySettingBase(Lcom/android/server/pm/SettingBase;)V
    .locals 1

    .line 115
    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 116
    iget v0, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    iget-object p1, p1, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public getFlags()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    return p0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    return-object p0
.end method

.method public getPrivateFlags()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    return p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public onChanged()V
    .locals 0

    .line 91
    invoke-static {}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->onPackageStateChanged()V

    .line 92
    invoke-virtual {p0, p0}, Lcom/android/server/pm/SettingBase;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public setFlags(I)Lcom/android/server/pm/SettingBase;
    .locals 0

    .line 127
    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPrivateFlags(I)Lcom/android/server/pm/SettingBase;
    .locals 0

    .line 133
    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {p0, p1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method
