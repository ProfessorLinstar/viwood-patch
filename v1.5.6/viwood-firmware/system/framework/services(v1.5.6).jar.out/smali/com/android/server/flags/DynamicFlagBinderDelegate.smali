.class public Lcom/android/server/flags/DynamicFlagBinderDelegate;
.super Ljava/lang/Object;
.source "DynamicFlagBinderDelegate.java"


# static fields
.field public static final NEW_CALLBACK_SET:Ljava/util/function/Function;


# instance fields
.field public final mCallbacks:Ljava/util/Map;

.field public final mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mDynamicFlags:Lcom/android/server/flags/FlagCache;

.field public final mFlagChangeCallback:Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;

.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;


# direct methods
.method public static synthetic $r8$lambda$fWvFD6E6pxuCvm1CYmzUojbk9uM(Landroid/flags/SyncableFlag;Landroid/flags/IFeatureFlagsCallback;)V
    .locals 0

    .line 107
    :try_start_0
    invoke-interface {p1, p0}, Landroid/flags/IFeatureFlagsCallback;->onFlagChange(Landroid/flags/SyncableFlag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 109
    :catch_0
    const-string p0, "FeatureFlagsService"

    const-string p1, "Failed to communicate flag change to client."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$qiqeobqWainxV-HWXiQLJqnkHyo(Lcom/android/server/flags/DynamicFlagBinderDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->lambda$new$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vcppf9Un-gROJ-J-LEIMgIKeYoY(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 51
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/flags/DynamicFlagBinderDelegate;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDynamicFlags(Lcom/android/server/flags/DynamicFlagBinderDelegate;)Lcom/android/server/flags/FlagCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlagChangeCallback(Lcom/android/server/flags/DynamicFlagBinderDelegate;)Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagChangeCallback:Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlagStore(Lcom/android/server/flags/DynamicFlagBinderDelegate;)Lcom/android/server/flags/FlagOverrideStore;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/flags/FlagOverrideStore;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/server/flags/FlagCache;

    invoke-direct {v0}, Lcom/android/server/flags/FlagCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 70
    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V

    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagChangeCallback:Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;

    .line 117
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/server/flags/FlagOverrideStore;->setChangeCallback(Lcom/android/server/flags/FlagOverrideStore$FlagChangeCallback;)V

    return-void
.end method


# virtual methods
.method public getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/flags/DynamicFlagBinderDelegate-IA;)V

    .line 195
    iget-object v2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-object v0, v1

    .line 198
    :goto_0
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 199
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 204
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/flags/FlagCache;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_3

    .line 85
    invoke-virtual {v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->getDefaultValue()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    .line 92
    :cond_4
    :goto_1
    invoke-virtual {v0, p3}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 96
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 98
    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 99
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->containsPid(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    iget-object v5, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 103
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    new-instance p0, Landroid/flags/SyncableFlag;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    new-instance p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/flags/SyncableFlag;)V

    invoke-interface {v2, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 103
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public registerCallback(ILandroid/flags/IFeatureFlagsCallback;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Ljava/util/function/Function;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 162
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    invoke-interface {p2}, Landroid/flags/IFeatureFlagsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;ILcom/android/server/flags/DynamicFlagBinderDelegate-IA;)V

    const/4 p1, 0x0

    invoke-interface {v0, v2, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 167
    :catch_0
    const-string p1, "FeatureFlagsService"

    const-string v0, "Failed to link to binder death. Callback not registered."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    monitor-enter p0

    .line 171
    :try_start_2
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    .line 163
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public syncDynamicFlag(ILandroid/flags/SyncableFlag;)Landroid/flags/SyncableFlag;
    .locals 4

    .line 122
    invoke-virtual {p2}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p2}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 136
    invoke-virtual {p2}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v3, v0}, Lcom/android/server/flags/FlagCache;->containsNamespace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 139
    invoke-static {v0, v3, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 142
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->addClientPid(I)V

    .line 143
    invoke-virtual {v2, v1}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->setValue(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->setDefaultValue(Ljava/lang/String;)V

    .line 148
    new-instance p0, Landroid/flags/SyncableFlag;

    invoke-virtual {p2}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public unregisterCallback(ILandroid/flags/IFeatureFlagsCallback;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Ljava/util/function/Function;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 182
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
