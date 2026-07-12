.class public Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;
.super Lcom/android/server/ExtconStateObserver;
.source "WiredAccessoryManager.java"


# instance fields
.field public final mExtconInfos:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public static bridge synthetic -$$Nest$minit(Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 3

    .line 512
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Lcom/android/server/ExtconStateObserver;-><init>()V

    .line 513
    const-string p1, "HDMI"

    const-string v0, "LINE-OUT"

    const-string v1, "HEADPHONE"

    const-string v2, "MICROPHONE"

    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 6

    .line 522
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->mExtconInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 525
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/ExtconStateObserver;->parseStateFromFile(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    .line 530
    :goto_1
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " while attempting to determine initial state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 530
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 527
    :goto_2
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found while attempting to determine initial state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_0

    .line 538
    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->updateStateInt(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V

    .line 540
    :cond_0
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetLOG()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "observing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/ExtconUEventObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    .line 548
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetLOG()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    .line 549
    filled-new-array {p0, p0}, [I

    move-result-object v0

    .line 552
    const-string v1, "HEADPHONE"

    invoke-virtual {p1, v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 553
    invoke-static {v0, v2, p2, v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_1
    const-string v1, "MICROPHONE"

    invoke-virtual {p1, v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 556
    invoke-static {v0, v3, p2, v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_2
    const-string v1, "HDMI"

    invoke-virtual {p1, v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    .line 559
    invoke-static {v0, v2, p2, v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_3
    const-string v1, "LINE-OUT"

    invoke-virtual {p1, v1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x20

    .line 562
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_4
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetLOG()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mask "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, p0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_5
    aget p0, v0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aget p1, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 3

    .line 571
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 572
    :try_start_0
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 573
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 574
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    not-int v2, p3

    and-int/2addr v2, v0

    not-int v2, v2

    and-int/2addr v1, v2

    and-int/2addr p3, v0

    or-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;IZ)V

    .line 578
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 579
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 509
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public final updateStateInt(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 4

    .line 585
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 586
    :try_start_0
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 587
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 592
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 593
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    not-int v3, p3

    and-int/2addr v3, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v0

    or-int/2addr p3, v1

    invoke-static {p0, p2, p3, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 595
    :cond_0
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    and-int v3, v0, p3

    not-int p3, p3

    and-int/2addr p3, v0

    not-int p3, p3

    and-int/2addr p3, v3

    or-int/2addr p3, v1

    invoke-static {p0, p2, p3, v2}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;IZ)V

    .line 597
    :goto_0
    monitor-exit p1

    return-void

    .line 598
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
