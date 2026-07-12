.class public final Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;
.super Landroid/hardware/tv/mediaquality/IMediaQualityCallback$Stub;
.source "MediaQualityService.java"


# instance fields
.field public mAmbientBacklightClientPackageName:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 2002
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/IMediaQualityCallback$Stub;-><init>()V

    .line 2004
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 2125
    :try_start_0
    const-string v0, "ac19fd80413145bec55462874afb34c24a47a12b"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public handleAmbientBacklightEnabled(Z)V
    .locals 4

    .line 2041
    new-instance v0, Landroid/media/quality/AmbientBacklightEvent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v1, 0x0

    .line 2044
    invoke-direct {v0, p1, v1}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V

    .line 2045
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 2046
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    :try_start_1
    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v1, v0}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 2050
    :try_start_2
    const-string v2, "MediaQualityService"

    const-string v3, "Deliver ambient backlight enabled event failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2053
    :cond_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public handleAmbientBacklightInterrupted()V
    .locals 4

    .line 2018
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2019
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2020
    const-string p0, "MediaQualityService"

    const-string v1, "Invalid package name in interrupted event"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2023
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    if-nez p0, :cond_1

    .line 2026
    const-string p0, "MediaQualityService"

    const-string v1, "Callback record not found for ambient backlight"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    monitor-exit v0

    return-void

    .line 2029
    :cond_1
    new-instance v1, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {p0, v1}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2035
    :try_start_2
    const-string v1, "MediaQualityService"

    const-string v2, "Deliver ambient backlight interrupted event failed"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2037
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public handleAmbientBacklightMetadataEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;)V
    .locals 10

    .line 2059
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget v1, v1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->uid:I

    .line 2060
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 2061
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    const-string p0, "MediaQualityService"

    const-string p1, "Invalid package name in metadata event"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2066
    :cond_0
    iget-object v0, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->zonesColors:[Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;

    .line 2067
    array-length v1, v0

    new-array v9, v1, [I

    const/4 v1, 0x0

    move v2, v1

    .line 2069
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 2070
    aget-object v4, v0, v2

    aput v1, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2073
    :cond_1
    new-instance v2, Landroid/media/quality/AmbientBacklightMetadata;

    iget-byte v4, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->compressAlgorithm:B

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget-byte v5, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->source:B

    iget v6, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorFormat:I

    iget v7, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hZonesNumber:I

    iget v8, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->vZonesNumber:I

    invoke-direct/range {v2 .. v9}, Landroid/media/quality/AmbientBacklightMetadata;-><init>(Ljava/lang/String;IIIII[I)V

    .line 2082
    new-instance p1, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v0, 0x3

    invoke-direct {p1, v0, v2}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V

    .line 2086
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 2087
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object p0

    .line 2088
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    if-nez p0, :cond_2

    .line 2090
    const-string p0, "MediaQualityService"

    const-string p1, "Callback record not found for ambient backlight metadata"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 2095
    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {p0, p1}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 2097
    :try_start_2
    const-string p1, "MediaQualityService"

    const-string v0, "Deliver ambient backlight metadata event failed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2099
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public notifyAmbientBacklightEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;)V
    .locals 3

    .line 2105
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2106
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getTag()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2108
    invoke-virtual {p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2110
    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightEnabled(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 2112
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightEnabled(Z)V

    goto :goto_0

    .line 2114
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getTag()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2116
    invoke-virtual {p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getMetadata()Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightMetadataEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;)V

    goto :goto_0

    .line 2118
    :cond_2
    const-string p0, "MediaQualityService"

    const-string p1, "Invalid event type in ambient backlight event"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAmbientBacklightClientPackageName(Ljava/lang/String;)V
    .locals 2

    .line 2008
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2009
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2010
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightInterrupted()V

    .line 2013
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    .line 2014
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
