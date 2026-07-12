.class public Lcom/android/server/utils/AnrTimer$FeatureEnabled;
.super Lcom/android/server/utils/AnrTimer$FeatureSwitch;
.source "AnrTimer.java"


# instance fields
.field public mNative:J

.field public mTotalRestarted:I

.field public final synthetic this$0:Lcom/android/server/utils/AnrTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AnrTimer;)V
    .locals 6

    .line 546
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    const-wide/16 v0, 0x0

    .line 539
    iput-wide v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const/4 v2, 0x0

    .line 542
    iput v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    .line 547
    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLabel(Lcom/android/server/utils/AnrTimer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmExtend(Lcom/android/server/utils/AnrTimer$Args;)Z

    move-result v4

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmInjector(Lcom/android/server/utils/AnrTimer$Args;)Lcom/android/server/utils/AnrTimer$Injector;

    move-result-object v5

    .line 549
    invoke-virtual {v5}, Lcom/android/server/utils/AnrTimer$Injector;->freezerEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 547
    :cond_0
    invoke-static {p1, v3, v4, v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnativeAnrTimerCreate(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;ZZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 551
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v0

    monitor-enter v0

    .line 552
    :try_start_0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 553
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 550
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unable to create native timer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
    .locals 6

    .line 608
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 609
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 611
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v1, "accept"

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 614
    :cond_0
    iget-wide v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v3, v4, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerAccept(JI)Z

    move-result p1

    .line 615
    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v4, "accept"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mtrace(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 619
    new-instance v2, Lcom/android/server/utils/AnrTimer$TimerLock;

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v2, p0, p1}, Lcom/android/server/utils/AnrTimer$TimerLock;-><init>(Lcom/android/server/utils/AnrTimer;I)V

    :cond_1
    monitor-exit v0

    return-object v2

    .line 620
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cancel(Ljava/lang/Object;)Z
    .locals 5

    .line 584
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 585
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 587
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 589
    :cond_0
    iget-wide v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerCancel(JI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I

    move-result p0

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 592
    monitor-exit v0

    return v2

    :cond_1
    const/4 p0, 0x1

    .line 594
    monitor-exit v0

    return p0

    .line 595
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 6

    .line 688
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v0

    monitor-enter v0

    .line 689
    :try_start_0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 690
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 691
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 692
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {v2, v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerClose(J)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 693
    :cond_0
    :goto_0
    iput-wide v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    .line 694
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 690
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public discard(Ljava/lang/Object;)Z
    .locals 4

    .line 630
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 631
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 633
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v1, "discard"

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 634
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 636
    :cond_0
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v2, v3, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerDiscard(JI)Z

    .line 637
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string p1, "discard"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mtrace(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;I)V

    const/4 p0, 0x1

    .line 638
    monitor-exit v0

    return p0

    .line 639
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Z)V
    .locals 4

    .line 666
    iget-object p2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 667
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 668
    const-string p0, "closed"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 669
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 671
    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerDump(J)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 673
    const-string/jumbo p0, "no-data"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 674
    monitor-exit p2

    return-void

    .line 676
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 677
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 681
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 3

    .line 651
    iget v0, p1, Lcom/android/server/utils/AnrTimer$TimerLock;->mTimerId:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    iget-wide v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerRelease(JI)Z

    move-result p0

    if-nez p0, :cond_1

    .line 653
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to release id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/utils/AnrTimer$TimerLock;->mTimerId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "AnrTimer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 705
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-object p1
.end method

.method public start(Ljava/lang/Object;IIJ)V
    .locals 8

    .line 561
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 564
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->cancel(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 566
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerStart(JIIJ)I

    move-result p2

    if-lez p2, :cond_1

    .line 568
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fputmTotalStarted(Lcom/android/server/utils/AnrTimer;I)V

    .line 571
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmMaxStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result p2

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fputmMaxStarted(Lcom/android/server/utils/AnrTimer;I)V

    .line 575
    monitor-exit v1

    return-void

    .line 573
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unable to start timer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
