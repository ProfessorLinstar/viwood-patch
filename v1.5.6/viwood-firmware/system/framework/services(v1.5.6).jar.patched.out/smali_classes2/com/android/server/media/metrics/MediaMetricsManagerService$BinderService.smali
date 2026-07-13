.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "MediaMetricsManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;Lcom/android/server/media/metrics/MediaMetricsManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    return-void
.end method


# virtual methods
.method public getBundleSessionId(I)Ljava/lang/String;
    .locals 0

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEditingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSessionId(I)Ljava/lang/String;
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecordingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionIdInternal(I)Ljava/lang/String;
    .locals 2

    const/16 p1, 0xc

    .line 257
    new-array p1, p1, [B

    .line 258
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmSecureRandom(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 p0, 0xb

    .line 259
    invoke-static {p1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 263
    new-instance p1, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v0, "metrics.manager"

    invoke-direct {p1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v1, "create"

    .line 264
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    .line 265
    invoke-virtual {p1, v0, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-object p0
.end method

.method public getTranscodingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final inList([Ljava/lang/String;Ljava/util/List;)Z
    .locals 5

    .line 694
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    .line 695
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 696
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final listNameToLoggingLevel(Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    .line 705
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "player_metrics_app_allowlist"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const p0, 0x1869f

    :pswitch_0
    return p0

    :pswitch_1
    const/16 p0, 0x3e8

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x70e7b2af -> :sswitch_2
        -0x4cdbea91 -> :sswitch_1
        0x71446e0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final loggingLevel()I
    .locals 8

    .line 573
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmLock(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 574
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 576
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 577
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v6, "media"

    const-string/jumbo v7, "media_metrics_mode"

    invoke-static {v6, v7, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 584
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    throw p0

    .line 588
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 589
    monitor-exit v0

    return v5

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x1869f

    if-nez v2, :cond_2

    .line 592
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    monitor-exit v0

    return v4

    .line 596
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 597
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 598
    array-length v6, v2

    if-nez v6, :cond_3

    goto/16 :goto_1

    .line 608
    :cond_3
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 609
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    .line 610
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_app_blocklist"

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 611
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    .line 613
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v0

    return v4

    .line 618
    :cond_4
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_app_blocklist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 621
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 623
    :cond_5
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    .line 624
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_per_app_attribution_blocklist"

    .line 625
    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 626
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    .line 628
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    monitor-exit v0

    return v4

    .line 633
    :cond_6
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 638
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 641
    :cond_7
    monitor-exit v0

    return v5

    .line 643
    :cond_8
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_d

    .line 644
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    .line 645
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_per_app_attribution_allowlist"

    .line 646
    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 647
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    .line 649
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    monitor-exit v0

    return v4

    .line 654
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 659
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 661
    :cond_a
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    .line 662
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v3, "player_metrics_app_allowlist"

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fputmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V

    .line 663
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    .line 665
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    monitor-exit v0

    return v4

    .line 670
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "player_metrics_app_allowlist"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 673
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 676
    :cond_c
    const-string p0, "MediaMetricsManagerService"

    const-string v1, "Logging level blocked: Not detected in any allowlist."

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    monitor-exit v0

    return v4

    .line 679
    :cond_d
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    const-string p0, "MediaMetricsManagerService"

    const-string v0, "Logging level blocked: Blocked by default."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 603
    :cond_e
    :goto_1
    :try_start_3
    const-string v2, "MediaMetricsManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty package from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_f

    const/16 v4, 0x3e8

    .line 606
    :cond_f
    monitor-exit v0

    return v4

    .line 679
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->inList([Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 688
    invoke-virtual {p0, p3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->listNameToLoggingLevel(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public releaseSessionId(Ljava/lang/String;I)V
    .locals 1

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Releasing sessionId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for userId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " [NOP]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .locals 4

    .line 204
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p1, 0x1869f

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    const-string p0, "bundlesession-statsd-atom"

    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x142

    if-eq p0, p1, :cond_1

    :goto_0
    return-void

    .line 218
    :cond_1
    const-string/jumbo p0, "playbackstateevent-sessionid"

    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    const-string/jumbo p3, "playbackstateevent-state"

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 220
    const-string/jumbo v0, "playbackstateevent-lifetime"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    if-eqz p0, :cond_3

    if-ltz p3, :cond_3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    goto :goto_1

    .line 227
    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p2

    .line 228
    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 229
    invoke-virtual {p1, p0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 234
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void

    .line 222
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dropping incomplete data for atom 322: _sessionId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " _state: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " _lifetime: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    .locals 41

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    const v1, 0x1869f

    if-ne v0, v1, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 375
    invoke-static {}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$sfgetEMPTY_MEDIA_ITEM_INFO()Landroid/media/metrics/MediaItemInfo;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaItemInfo;

    .line 377
    :goto_0
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    move-result-wide v2

    .line 380
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v4

    .line 379
    const-string v5, "audio/"

    invoke-static {v4, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v6

    .line 382
    const-string/jumbo v7, "video/"

    invoke-static {v6, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v8

    .line 385
    invoke-static {v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v9

    if-nez v9, :cond_2

    .line 388
    new-instance v9, Landroid/util/Size;

    .line 390
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    .line 389
    invoke-static {v9}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v9

    .line 392
    :cond_2
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    move-result-object v10

    .line 393
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const-string v12, ""

    if-nez v11, :cond_3

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v11, v12

    .line 394
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_4

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v10, v12

    .line 397
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v13

    if-nez v13, :cond_5

    .line 398
    invoke-static {}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$sfgetEMPTY_MEDIA_ITEM_INFO()Landroid/media/metrics/MediaItemInfo;

    move-result-object v13

    goto :goto_3

    .line 399
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v13

    .line 400
    :goto_3
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    move-result-wide v15

    .line 403
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v14

    .line 402
    invoke-static {v14, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 406
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    move-result-object v14

    .line 405
    invoke-static {v14, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v14

    .line 408
    invoke-static {v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v17

    if-nez v17, :cond_6

    .line 411
    new-instance v1, Landroid/util/Size;

    move-object/from16 v18, v0

    .line 413
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v0

    move-wide/from16 v19, v2

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/util/Size;-><init>(II)V

    .line 412
    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    move-result v17

    :goto_4
    move/from16 v0, v17

    goto :goto_5

    :cond_6
    move-object/from16 v18, v0

    move-wide/from16 v19, v2

    goto :goto_4

    .line 415
    :goto_5
    invoke-virtual {v13}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v3, v12

    .line 419
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v17, v8

    const/4 v8, 0x1

    if-le v2, v8, :cond_8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 420
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOperationTypes()J

    move-result-wide v1

    .line 422
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v8

    move-wide/from16 v21, v1

    const/16 v1, 0x31e

    .line 423
    invoke-virtual {v8, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    move-object/from16 v2, p1

    .line 424
    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalProgressPercent()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    move-object v2, v13

    move-object v8, v14

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x1

    and-long v23, v21, v13

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_9

    move-wide/from16 v23, v13

    const/4 v13, 0x1

    goto :goto_7

    :cond_9
    move-wide/from16 v23, v13

    const/4 v13, 0x0

    .line 429
    :goto_7
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x2

    and-long v27, v21, v13

    cmp-long v27, v27, v25

    if-eqz v27, :cond_a

    move-wide/from16 v27, v13

    const/4 v13, 0x1

    goto :goto_8

    :cond_a
    move-wide/from16 v27, v13

    const/4 v13, 0x0

    .line 434
    :goto_8
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x4

    and-long v29, v21, v13

    cmp-long v29, v29, v25

    if-eqz v29, :cond_b

    move-wide/from16 v29, v13

    const/4 v13, 0x1

    goto :goto_9

    :cond_b
    move-wide/from16 v29, v13

    const/4 v13, 0x0

    .line 439
    :goto_9
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x8

    and-long v31, v21, v13

    cmp-long v31, v31, v25

    if-eqz v31, :cond_c

    move-wide/from16 v31, v13

    const/4 v13, 0x1

    goto :goto_a

    :cond_c
    move-wide/from16 v31, v13

    const/4 v13, 0x0

    .line 442
    :goto_a
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x10

    and-long v33, v21, v13

    cmp-long v33, v33, v25

    if-eqz v33, :cond_d

    move-wide/from16 v33, v13

    const/4 v13, 0x1

    goto :goto_b

    :cond_d
    move-wide/from16 v33, v13

    const/4 v13, 0x0

    .line 445
    :goto_b
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x20

    and-long v35, v21, v13

    cmp-long v35, v35, v25

    if-eqz v35, :cond_e

    move-wide/from16 v35, v13

    const/4 v13, 0x1

    goto :goto_c

    :cond_e
    move-wide/from16 v35, v13

    const/4 v13, 0x0

    .line 450
    :goto_c
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x40

    and-long v37, v21, v13

    cmp-long v37, v37, v25

    if-eqz v37, :cond_f

    move-wide/from16 v37, v13

    const/4 v13, 0x1

    goto :goto_d

    :cond_f
    move-wide/from16 v37, v13

    const/4 v13, 0x0

    .line 455
    :goto_d
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x80

    and-long v21, v21, v13

    cmp-long v21, v21, v25

    if-eqz v21, :cond_10

    move-wide/from16 v21, v13

    const/4 v13, 0x1

    goto :goto_e

    :cond_10
    move-wide/from16 v21, v13

    const/4 v13, 0x0

    .line 457
    :goto_e
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getExporterName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getMuxerName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 462
    invoke-static/range {p2 .. p2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetThroughputFps(Landroid/media/metrics/EditingEndedEvent;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 464
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getSourceType()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v23

    cmp-long v13, v13, v25

    if-eqz v13, :cond_11

    const/4 v13, 0x1

    goto :goto_f

    :cond_11
    const/4 v13, 0x0

    .line 465
    :goto_f
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v27

    cmp-long v13, v13, v25

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    goto :goto_10

    :cond_12
    const/4 v13, 0x0

    .line 466
    :goto_10
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v29

    cmp-long v13, v13, v25

    if-eqz v13, :cond_13

    const/4 v13, 0x1

    goto :goto_11

    :cond_13
    const/4 v13, 0x0

    .line 467
    :goto_11
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v31

    cmp-long v13, v13, v25

    if-eqz v13, :cond_14

    const/4 v13, 0x1

    goto :goto_12

    :cond_14
    const/4 v13, 0x0

    .line 468
    :goto_12
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v33

    cmp-long v13, v13, v25

    if-eqz v13, :cond_15

    const/4 v13, 0x1

    goto :goto_13

    :cond_15
    const/4 v13, 0x0

    .line 469
    :goto_13
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v35

    cmp-long v13, v13, v25

    if-eqz v13, :cond_16

    const/4 v13, 0x1

    goto :goto_14

    :cond_16
    const/4 v13, 0x0

    .line 470
    :goto_14
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v37

    cmp-long v13, v13, v25

    if-eqz v13, :cond_17

    const/4 v13, 0x1

    goto :goto_15

    :cond_17
    const/4 v13, 0x0

    .line 471
    :goto_15
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v13, v19, v21

    cmp-long v13, v13, v25

    if-eqz v13, :cond_18

    const/4 v13, 0x1

    goto :goto_16

    :cond_18
    const/4 v13, 0x0

    .line 473
    :goto_16
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x100

    and-long v39, v19, v13

    cmp-long v39, v39, v25

    move-wide/from16 p1, v13

    if-eqz v39, :cond_19

    const/4 v13, 0x1

    goto :goto_17

    :cond_19
    const/4 v13, 0x0

    .line 478
    :goto_17
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x200

    and-long v39, v19, v13

    cmp-long v39, v39, v25

    if-eqz v39, :cond_1a

    move-wide/from16 v39, v13

    const/4 v13, 0x1

    goto :goto_18

    :cond_1a
    move-wide/from16 v39, v13

    const/4 v13, 0x0

    .line 479
    :goto_18
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const-wide/16 v13, 0x400

    and-long v19, v19, v13

    cmp-long v19, v19, v25

    if-eqz v19, :cond_1b

    move-wide/from16 v19, v13

    const/4 v13, 0x1

    goto :goto_19

    :cond_1b
    move-wide/from16 v19, v13

    const/4 v13, 0x0

    .line 481
    :goto_19
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 488
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    move-result-wide v13

    .line 487
    invoke-static {v13, v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v13

    .line 486
    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 491
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    move-result-wide v13

    .line 490
    invoke-static {v13, v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v13

    .line 489
    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 493
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 492
    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 494
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 495
    invoke-virtual {v1, v6}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 496
    invoke-static {v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetCodecEnum(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 499
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    move-result v4

    .line 498
    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredAudioSampleRateHz(I)I

    move-result v4

    .line 497
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 500
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 501
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 502
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 503
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 504
    invoke-virtual {v1, v9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 505
    invoke-static/range {v17 .. v17}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionAspectRatioEnum(Landroid/util/Size;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 506
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 509
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v4

    .line 508
    invoke-static {v4, v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    move-result v4

    .line 507
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 511
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 512
    invoke-virtual/range {v18 .. v18}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v4

    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 513
    invoke-virtual {v1, v11}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 514
    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v23

    cmp-long v4, v9, v25

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_1a

    :cond_1c
    const/4 v4, 0x0

    .line 515
    :goto_1a
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v27

    cmp-long v4, v9, v25

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1d
    const/4 v4, 0x0

    .line 516
    :goto_1b
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v29

    cmp-long v4, v9, v25

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1e
    const/4 v4, 0x0

    .line 517
    :goto_1c
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v31

    cmp-long v4, v9, v25

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1f
    const/4 v4, 0x0

    .line 518
    :goto_1d
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v33

    cmp-long v4, v9, v25

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_1e

    :cond_20
    const/4 v4, 0x0

    .line 519
    :goto_1e
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v35

    cmp-long v4, v9, v25

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    goto :goto_1f

    :cond_21
    const/4 v4, 0x0

    .line 520
    :goto_1f
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v37

    cmp-long v4, v9, v25

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    goto :goto_20

    :cond_22
    const/4 v4, 0x0

    .line 521
    :goto_20
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v21

    cmp-long v4, v9, v25

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    goto :goto_21

    :cond_23
    const/4 v4, 0x0

    .line 524
    :goto_21
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, p1

    cmp-long v4, v9, v25

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    goto :goto_22

    :cond_24
    const/4 v4, 0x0

    .line 529
    :goto_22
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v39

    cmp-long v4, v9, v25

    if-eqz v4, :cond_25

    const/4 v4, 0x1

    goto :goto_23

    :cond_25
    const/4 v4, 0x0

    .line 530
    :goto_23
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    and-long v9, v15, v19

    cmp-long v4, v9, v25

    if-eqz v4, :cond_26

    const/4 v4, 0x1

    goto :goto_24

    :cond_26
    const/4 v4, 0x0

    .line 532
    :goto_24
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 539
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    move-result-wide v9

    .line 538
    invoke-static {v9, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v9

    .line 537
    invoke-virtual {v1, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    move-result-wide v9

    .line 541
    invoke-static {v9, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    move-result-wide v9

    .line 540
    invoke-virtual {v1, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 544
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 543
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 545
    invoke-virtual {v1, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 546
    invoke-virtual {v1, v7}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 547
    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetCodecEnum(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 550
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    move-result v4

    .line 549
    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredAudioSampleRateHz(I)I

    move-result v4

    .line 548
    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 551
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 552
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 553
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 554
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 556
    invoke-static {v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionAspectRatioEnum(Landroid/util/Size;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 557
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    move-result v1

    .line 559
    invoke-static {v1, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    move-result v1

    .line 558
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v2}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    move-result v1

    .line 563
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {v0, v3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {v0, v12}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    .line 569
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .locals 0

    .line 323
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x141

    .line 328
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 329
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 331
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 334
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x143

    .line 310
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 311
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 312
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 313
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 318
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .locals 3

    .line 173
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/16 v0, 0x140

    .line 178
    invoke-virtual {p3, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    invoke-virtual {p3, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 183
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 184
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 185
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 186
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 187
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 188
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    new-array p1, v0, [B

    .line 189
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 190
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 191
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 192
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 193
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 194
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 197
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 200
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .locals 0

    .line 242
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x142

    .line 247
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 250
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 253
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result p0

    const p3, 0x1869f

    if-ne p0, p3, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const/16 p3, 0x144

    .line 345
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 346
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 347
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 348
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 349
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 350
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 351
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 352
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 353
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 354
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 355
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 356
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 357
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 358
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 359
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 360
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 361
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 364
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
