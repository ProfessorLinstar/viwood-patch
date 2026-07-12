.class public final Lcom/android/server/timedetector/ServerFlags;
.super Ljava/lang/Object;
.source "ServerFlags.java"


# static fields
.field public static final OPTIONAL_FALSE:Ljava/util/Optional;

.field public static final OPTIONAL_TRUE:Ljava/util/Optional;

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timedetector/ServerFlags;


# instance fields
.field public final mListeners:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$51NkVFa7jyQxEfAmpAEeHsOYfYQ(Lcom/android/server/timedetector/ServerFlags;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServerFlags;->handlePropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    .line 53
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServerFlags;)V

    .line 237
    const-string/jumbo p0, "system_time"

    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static containsAny(Ljava/util/Set;Ljava/lang/Iterable;)Z
    .locals 1

    .line 284
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;
    .locals 2

    .line 245
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Lcom/android/server/timedetector/ServerFlags;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServerFlags;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 249
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    monitor-exit v0

    return-object p0

    .line 250
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static parseOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    if-nez p0, :cond_0

    .line 375
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 377
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V
    .locals 1

    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 307
    iget-object p2, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 308
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 386
    const-string/jumbo p0, "system_time"

    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;
    .locals 2

    .line 397
    const-string/jumbo p0, "system_time"

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    return-object p2

    .line 401
    :cond_0
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    .line 368
    const-string/jumbo p0, "system_time"

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 369
    invoke-static {p0}, Lcom/android/server/timedetector/ServerFlags;->parseOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalInstant(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    .line 349
    const-string/jumbo p0, "system_time"

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 351
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 355
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 356
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 358
    :catch_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalString(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    .line 318
    const-string/jumbo p0, "system_time"

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getOptionalStringArray(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 330
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 335
    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 336
    const-string p1, "_[]_"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 337
    new-array p0, p0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 340
    :cond_1
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final handlePropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 258
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    iget-object p0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 270
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v4

    .line 271
    invoke-static {v3, v4}, Lcom/android/server/timedetector/ServerFlags;->containsAny(Ljava/util/Set;Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/StateChangeListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 275
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    check-cast v0, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 278
    invoke-interface {v0}, Lcom/android/server/timezonedetector/StateChangeListener;->onChange()V

    goto :goto_1

    :cond_2
    return-void

    .line 275
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
