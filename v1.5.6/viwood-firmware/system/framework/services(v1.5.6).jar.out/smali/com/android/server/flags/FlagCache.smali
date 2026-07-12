.class public Lcom/android/server/flags/FlagCache;
.super Ljava/lang/Object;
.source "FlagCache.java"


# instance fields
.field public final mCache:Ljava/util/Map;

.field public final mNewHashMap:Ljava/util/function/Function;


# direct methods
.method public static synthetic $r8$lambda$627xT1dedfgk5-2I2VGDthKmOCM(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 29
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/server/flags/FlagCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/flags/FlagCache$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/FlagCache;->mNewHashMap:Ljava/util/function/Function;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 52
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsNamespace(Ljava/lang/String;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object p0, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 98
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 101
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/flags/FlagCache;->mNewHashMap:Ljava/util/function/Function;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 67
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 72
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 70
    monitor-exit v0

    return p0

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
