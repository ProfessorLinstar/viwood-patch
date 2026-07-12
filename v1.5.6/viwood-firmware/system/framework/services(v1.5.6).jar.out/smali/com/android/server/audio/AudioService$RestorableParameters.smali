.class public Lcom/android/server/audio/AudioService$RestorableParameters;
.super Ljava/lang/Object;
.source "AudioService.java"


# instance fields
.field public mMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$JVps76o3ZM2FTHiX-AHAgS-pysM(Ljava/util/function/BooleanSupplier;)Z
    .locals 0

    .line 1127
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l7AV0DaGl0hY4s25VX3wTbeGuso(Ljava/lang/String;)Z
    .locals 0

    .line 1083
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    new-instance v0, Lcom/android/server/audio/AudioService$RestorableParameters$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$RestorableParameters$1;-><init>(Lcom/android/server/audio/AudioService$RestorableParameters;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$RestorableParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public queueRestoreWithRemovalIfTrue(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    .line 1105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1106
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 1108
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1110
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restoreAll()V
    .locals 2

    .line 1123
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1078
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1079
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 1080
    :try_start_0
    invoke-static {p2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1082
    new-instance v2, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioService$RestorableParameters;->queueRestoreWithRemovalIfTrue(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1087
    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    .line 1088
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
