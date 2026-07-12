.class public Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;
.super Ljava/lang/Object;
.source "SynchedDeviceConfig.java"


# instance fields
.field public final mDeviceConfigEntries:Ljava/util/Map;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mNamespace:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/server/wm/SynchedDeviceConfig-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    new-instance v1, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;-><init>(Ljava/lang/String;ZZLcom/android/server/wm/SynchedDeviceConfig-IA;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Key already present: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public build()Lcom/android/server/wm/SynchedDeviceConfig;
    .locals 4

    .line 148
    new-instance v0, Lcom/android/server/wm/SynchedDeviceConfig;

    iget-object v1, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mNamespace:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/server/wm/SynchedDeviceConfig;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/Map;Lcom/android/server/wm/SynchedDeviceConfig-IA;)V

    .line 149
    invoke-static {v0}, Lcom/android/server/wm/SynchedDeviceConfig;->-$$Nest$mupdateFlags(Lcom/android/server/wm/SynchedDeviceConfig;)Lcom/android/server/wm/SynchedDeviceConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/SynchedDeviceConfig;->-$$Nest$mstart(Lcom/android/server/wm/SynchedDeviceConfig;)Lcom/android/server/wm/SynchedDeviceConfig;

    move-result-object p0

    return-object p0
.end method
