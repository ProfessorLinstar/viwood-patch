.class public Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "AudioSystemAdapter.java"

# interfaces
.implements Landroid/media/AudioSystem$RoutingUpdateCallback;
.implements Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# static fields
.field public static final sDeviceCacheLock:Ljava/lang/Object;

.field public static sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

.field public static final sRoutingListenerLock:Ljava/lang/Object;

.field public static sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

.field public static sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

.field public static final sVolRangeInitReqListenerLock:Ljava/lang/Object;


# instance fields
.field public mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

.field public mDevicesForAttributesCacheClearTimeMs:J

.field public final mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

.field public mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

.field public mMethodCacheHit:[I

.field public mMethodNames:[Ljava/lang/String;

.field public final mRegisteredAttributesMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "getDevicesForAttributes"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodNames:[Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static final declared-synchronized getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .locals 5

    const-class v0, Lcom/android/server/audio/AudioSystemAdapter;

    monitor-enter v0

    .line 268
    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Lcom/android/server/audio/AudioSystemAdapter;

    invoke-direct {v1}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    sput-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 270
    invoke-static {v1}, Landroid/media/AudioSystem;->setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V

    .line 271
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {v1}, Landroid/media/AudioSystem;->setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V

    .line 273
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :try_start_1
    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 275
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v3, v2, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 276
    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    .line 277
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 284
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static setRoutingListener(Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;)V
    .locals 1

    .line 163
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setVolRangeInitReqListener(Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;)V
    .locals 1

    .line 257
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 259
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 0

    .line 473
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 474
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->addDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;ZLandroid/media/IDevicesForAttributesCallback;)V
    .locals 5

    .line 185
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p3}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p3}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 194
    :cond_0
    :goto_0
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 195
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    return-void

    .line 197
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public clearDevicesRoleForCapturePreset(II)I
    .locals 0

    .line 484
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 485
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public clearDevicesRoleForStrategy(II)I
    .locals 0

    .line 434
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 435
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForStrategy(II)I

    move-result p0

    return p0
.end method

.method public clearPreferredMixerAttributes(Landroid/media/AudioAttributes;II)I
    .locals 0

    .line 741
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->clearPreferredMixerAttributes(Landroid/media/AudioAttributes;II)I

    move-result p0

    return p0
.end method

.method public clearRoutingCache()V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8

    .line 789
    const-string v0, "\nAudioSystemAdapter:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    const-string v0, "MM-dd HH:mm:ss:SSS"

    .line 791
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 792
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 793
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 794
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " last cache clear time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 796
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 795
    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    const-string v0, " mDevicesForAttrCache:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_1

    .line 800
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 801
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioAttributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :try_start_1
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v3

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " forVolume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    .line 808
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 812
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t dump failed for attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    const-string v2, "AudioSystemAdapter"

    const-string v3, "dump failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 817
    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .locals 0

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributesImpl(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getDevicesForAttributesImpl(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .locals 3

    .line 324
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 328
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 329
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 337
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    const/4 p1, 0x0

    aget p2, p0, p1

    add-int/lit8 p2, p2, 0x1

    aput p2, p0, p1

    .line 350
    monitor-exit v1

    return-object v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRegisteredPolicyMixes()Ljava/util/List;
    .locals 3

    .line 636
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    invoke-static {p0}, Landroid/media/AudioSystem;->getRegisteredPolicyMixes(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 639
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot fetch registered policy mixes. Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 397
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final invalidateRoutingCache()V
    .locals 3

    .line 291
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCacheClearTimeMs:J

    .line 295
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 297
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 299
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isMicrophoneMuted()Z
    .locals 0

    .line 504
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result p0

    return p0
.end method

.method public isStreamActive(II)Z
    .locals 0

    .line 531
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p0

    return p0
.end method

.method public isStreamActiveRemotely(II)Z
    .locals 0

    .line 541
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p0

    return p0
.end method

.method public listenForSystemPropertyChange(Ljava/lang/String;Ljava/lang/Runnable;)J
    .locals 0

    .line 754
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->listenForSystemPropertyChange(Ljava/lang/String;Ljava/lang/Runnable;)J

    move-result-wide p0

    return-wide p0
.end method

.method public muteMicrophone(Z)I
    .locals 0

    .line 516
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    move-result p0

    return p0
.end method

.method public onRoutingUpdated()V
    .locals 8

    .line 120
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 122
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {v1}, Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;->onRoutingUpdatedFromNative()V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 133
    iget-object v3, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    .line 134
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/IDevicesForAttributesCallback;

    .line 135
    iget-object v4, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    .line 136
    invoke-interface {v3}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 142
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 143
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/media/AudioAttributes;

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    .line 144
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 145
    iget-object v7, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    .line 146
    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/audio/AudioSystemAdapter;->sameDeviceList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 148
    :cond_2
    :goto_2
    :try_start_2
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/media/AudioAttributes;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 149
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 148
    invoke-interface {v3, v7, v5, v6}, Landroid/media/IDevicesForAttributesCallback;->onDevicesForAttributesChanged(Landroid/media/AudioAttributes;ZLjava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attribute list must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 155
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 124
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onVolumeRangeInitializationRequested()V
    .locals 1

    .line 244
    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter p0

    .line 245
    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;->onVolumeRangeInitRequestFromNative()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 246
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerAudioVolumeGroupCallback(Landroid/media/INativeAudioVolumeGroupCallback;)I
    .locals 0

    .line 769
    invoke-static {p1}, Landroid/media/AudioSystem;->registerAudioVolumeGroupCallback(Landroid/media/INativeAudioVolumeGroupCallback;)I

    move-result p0

    return p0
.end method

.method public registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .locals 0

    .line 624
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 625
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result p0

    return p0
.end method

.method public removeDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 0

    .line 460
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 461
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public removeDevicesRoleForStrategy(IILjava/util/List;)I
    .locals 0

    .line 423
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 424
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    const-string p0, "AudioSystemAdapter"

    const-string/jumbo p1, "listener to be removed is not found."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 216
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeUidDeviceAffinities(I)I
    .locals 0

    .line 678
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 679
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result p0

    return p0
.end method

.method public removeUserIdDeviceAffinities(I)I
    .locals 0

    .line 701
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 702
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUserIdDeviceAffinities(I)I

    move-result p0

    return p0
.end method

.method public final sameDeviceList(Ljava/util/List;Ljava/util/List;)Z
    .locals 2

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 226
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 230
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioDeviceAttributes;

    .line 231
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public setAllowedCapturePolicy(II)I
    .locals 0

    .line 579
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result p0

    return p0
.end method

.method public setCurrentImeUid(I)I
    .locals 0

    .line 524
    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    move-result p0

    return p0
.end method

.method public setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I
    .locals 0

    .line 613
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I
    .locals 0

    .line 372
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 373
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p0

    return p0
.end method

.method public setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 0

    .line 447
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 448
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setDevicesRoleForStrategy(IILjava/util/List;)I
    .locals 0

    .line 410
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 411
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setForceUse(II)I
    .locals 0

    .line 589
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 590
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result p0

    return p0
.end method

.method public setMasterMute(Z)I
    .locals 0

    .line 750
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    move-result p0

    return p0
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 0

    .line 494
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 495
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setPhoneState(II)I
    .locals 0

    .line 568
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 569
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setPhoneState(II)I

    move-result p0

    return p0
.end method

.method public setPreferredMixerAttributes(Landroid/media/AudioAttributes;IILandroid/media/AudioMixerAttributes;)I
    .locals 0

    .line 729
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setPreferredMixerAttributes(Landroid/media/AudioAttributes;IILandroid/media/AudioMixerAttributes;)I

    move-result p0

    return p0
.end method

.method public setStreamVolumeIndexAS(IIZI)I
    .locals 0

    .line 552
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(IIZI)I

    move-result p0

    return p0
.end method

.method public setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .locals 0

    .line 668
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 669
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
    .locals 0

    .line 691
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 692
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IZI)I
    .locals 0

    .line 558
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IZI)I

    move-result p0

    return p0
.end method

.method public triggerSystemPropertyUpdate(J)V
    .locals 0

    .line 758
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->triggerSystemPropertyUpdate(J)V

    return-void
.end method

.method public updateMixingRules([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;)I
    .locals 0

    .line 656
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 657
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->updatePolicyMixes([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;)I

    move-result p0

    return p0
.end method
