.class public final Lcom/android/server/input/KeyRemapper;
.super Ljava/lang/Object;
.source "KeyRemapper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mHandler:Landroid/os/Handler;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;


# direct methods
.method public static synthetic $r8$lambda$N4TqxA4BYCMFcqyr3TCvlujPC84(Lcom/android/server/input/KeyRemapper;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyRemapper;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/server/input/KeyRemapper;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 52
    iput-object p3, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 53
    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyRemapper;)V

    invoke-direct {p1, p4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public clearAllKeyRemappings()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->supportRemapping()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 73
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final clearAllRemappingsInternal()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->getKeyRemapping()Ljava/util/Map;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 117
    iget-object v3, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v2}, Lcom/android/server/input/PersistentDataStore;->clearMappedKey(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 122
    iget-object v1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->getKeyRemapping()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyRemapper;->setKeyRemapping(Ljava/util/Map;)V

    .line 123
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 120
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 121
    throw v1

    .line 123
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public getKeyRemapping()Ljava/util/Map;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->supportRemapping()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->getKeyRemapping()Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->clearAllRemappingsInternal()V

    return v1

    .line 139
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/KeyRemapper;->remapKeyInternal(II)V

    return v1

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->updateExistingKeyMapping()V

    return v1
.end method

.method public remapKey(II)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->supportRemapping()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 65
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final remapKeyInternal(II)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    if-ne p1, p2, :cond_0

    .line 101
    :try_start_0
    iget-object p2, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p2, p1}, Lcom/android/server/input/PersistentDataStore;->clearMappedKey(I)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->remapKey(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 108
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->getKeyRemapping()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyRemapper;->setKeyRemapping(Ljava/util/Map;)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 106
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 107
    throw p1

    .line 109
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final setKeyRemapping(Ljava/util/Map;)V
    .locals 5

    .line 87
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 88
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setKeyRemapping([I[I)V

    return-void
.end method

.method public final supportRemapping()Z
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "settings_new_keyboard_modifier_key"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public systemRunning()V
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateExistingKeyMapping()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->supportRemapping()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->getKeyRemapping()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyRemapper;->setKeyRemapping(Ljava/util/Map;)V

    return-void
.end method
