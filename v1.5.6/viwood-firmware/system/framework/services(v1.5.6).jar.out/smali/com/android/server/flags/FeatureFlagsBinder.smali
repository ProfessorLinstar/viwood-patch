.class Lcom/android/server/flags/FeatureFlagsBinder;
.super Landroid/flags/IFeatureFlags$Stub;
.source "FeatureFlagsBinder.java"


# instance fields
.field public final mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

.field public final mFlagCache:Lcom/android/server/flags/FlagCache;

.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

.field public final mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

.field public final mShellCommand:Lcom/android/server/flags/FlagsShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/FlagOverrideStore;Lcom/android/server/flags/FlagsShellCommand;Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/flags/IFeatureFlags$Stub;-><init>()V

    .line 37
    new-instance v0, Lcom/android/server/flags/FlagCache;

    invoke-direct {v0}, Lcom/android/server/flags/FlagCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 45
    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 46
    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    .line 47
    new-instance p2, Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-direct {p2, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;-><init>(Lcom/android/server/flags/FlagOverrideStore;)V

    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 48
    iput-object p3, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    return-void
.end method


# virtual methods
.method public final assertSyncPermission()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertSyncPermission()V

    .line 148
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    return-void
.end method

.method public final assertWritePermission()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertWritePermission()V

    .line 153
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 163
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 164
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 166
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/flags/FlagsShellCommand;->process([Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;)I

    move-result p0

    return p0
.end method

.method public overrideFlag(Landroid/flags/SyncableFlag;)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsBinder;->assertWritePermission()V

    .line 108
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryFlags(Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 119
    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsBinder;->assertSyncPermission()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/SyncableFlag;

    .line 122
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v3

    .line 125
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :goto_1
    move v11, v5

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 128
    :goto_2
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_3
    move-object v9, v2

    goto :goto_4

    .line 131
    :cond_2
    iget-object v5, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 133
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    :cond_3
    if-nez v4, :cond_4

    .line 135
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v9, v4

    .line 139
    :goto_4
    new-instance v6, Landroid/flags/SyncableFlag;

    .line 140
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v10

    invoke-direct/range {v6 .. v11}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 139
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->registerCallback(ILandroid/flags/IFeatureFlagsCallback;)V

    return-void
.end method

.method public resetFlag(Landroid/flags/SyncableFlag;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsBinder;->assertWritePermission()V

    .line 114
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/FlagOverrideStore;->erase(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncFlags(Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 67
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/flags/FeatureFlagsBinder;->assertSyncPermission()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    move-object v5, v3

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v5, v4

    move v4, v2

    .line 79
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/flags/SyncableFlag;

    if-nez v4, :cond_1

    .line 80
    invoke-static {v6}, Lcom/android/internal/flags/CoreFlags;->isCoreFlag(Landroid/flags/SyncableFlag;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    throw v5

    .line 84
    :cond_1
    :goto_2
    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 88
    iget-object v7, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-virtual {v7, v0, v6}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->syncDynamicFlag(ILandroid/flags/SyncableFlag;)Landroid/flags/SyncableFlag;

    move-result-object v6

    goto :goto_6

    .line 90
    :cond_2
    iget-object v9, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    monitor-enter v9

    .line 91
    :try_start_1
    iget-object v10, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v10, v7, v8}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_5

    .line 93
    sget-boolean v10, Landroid/os/Build;->IS_USER:Z

    if-eqz v10, :cond_3

    move-object v10, v3

    goto :goto_3

    :cond_3
    iget-object v10, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {v10, v7, v8}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_4

    goto :goto_4

    .line 94
    :cond_4
    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 95
    :goto_4
    iget-object v11, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v11, v7, v8, v10}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_7

    .line 97
    :cond_5
    :goto_5
    new-instance v7, Landroid/flags/SyncableFlag;

    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6, v10, v2}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    .line 100
    :goto_6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :goto_7
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    return-object v1
.end method

.method public unregisterCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->unregisterCallback(ILandroid/flags/IFeatureFlagsCallback;)V

    return-void
.end method
