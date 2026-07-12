.class public Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 4

    const-wide/32 v0, 0x80000

    .line 560
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsPull-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    const/16 v2, 0x2716

    if-eq p1, v2, :cond_9

    const/16 v2, 0x2717

    if-eq p1, v2, :cond_8

    const/16 v2, 0x2744

    if-eq p1, v2, :cond_7

    const/16 v2, 0x2745

    if-eq p1, v2, :cond_6

    const/16 v2, 0x2752

    if-eq p1, v2, :cond_5

    const/16 v2, 0x2753

    if-eq p1, v2, :cond_4

    const/16 v2, 0x2755

    if-eq p1, v2, :cond_3

    const/16 v2, 0x2756

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2762

    if-eq p1, v2, :cond_1

    const/16 v2, 0x2763

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    .line 853
    :try_start_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    .line 660
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :try_start_1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1
    move-exception p0

    .line 662
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0

    .line 794
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 795
    :try_start_4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2
    move-exception p0

    .line 796
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    .line 674
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 675
    :try_start_7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3
    move-exception p0

    .line 676
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    .line 790
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 791
    :try_start_a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4
    move-exception p0

    .line 792
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw p0

    .line 786
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 787
    :try_start_d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_5
    move-exception p0

    .line 788
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw p0

    .line 652
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 653
    :try_start_10
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_6
    move-exception p0

    .line 654
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw p0

    .line 764
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 765
    :try_start_13
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_7
    move-exception p0

    .line 766
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    throw p0

    .line 711
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 712
    :try_start_16
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v3, 0x4

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_8
    move-exception p0

    .line 714
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    throw p0

    .line 756
    :pswitch_8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 757
    :try_start_19
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_9
    move-exception p0

    .line 758
    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :try_start_1b
    throw p0

    .line 752
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 753
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_a
    move-exception p0

    .line 754
    :try_start_1d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    :try_start_1e
    throw p0

    .line 760
    :pswitch_a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 761
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_b
    move-exception p0

    .line 762
    :try_start_20
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :try_start_21
    throw p0

    .line 646
    :pswitch_b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 647
    :try_start_22
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_c
    move-exception p0

    .line 648
    :try_start_23
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    :try_start_24
    throw p0

    .line 851
    :sswitch_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPressureStallInformation(ILjava/util/List;)I

    move-result p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 566
    :sswitch_1
    :try_start_25
    sget-boolean v2, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 568
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransfer(Ljava/util/List;)I

    move-result p0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 849
    :sswitch_2
    :try_start_26
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 630
    :sswitch_3
    :try_start_27
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 631
    :try_start_28
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullUwbActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_d
    move-exception p0

    .line 632
    :try_start_29
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    :try_start_2a
    throw p0

    .line 847
    :sswitch_4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 728
    :sswitch_5
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 729
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_e
    move-exception p0

    .line 730
    :try_start_2d
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_e

    :try_start_2e
    throw p0

    .line 724
    :sswitch_6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 725
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_f
    move-exception p0

    .line 726
    :try_start_30
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    :try_start_31
    throw p0

    .line 845
    :sswitch_7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 843
    :sswitch_8
    :try_start_32
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemServerPinnerStats(ILjava/util/List;)I

    move-result p0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 841
    :sswitch_9
    :try_start_33
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMediaCapabilitiesStats(ILjava/util/List;)I

    move-result p0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 839
    :sswitch_a
    :try_start_34
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I

    move-result p0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 837
    :sswitch_b
    :try_start_35
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I

    move-result p0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 668
    :sswitch_c
    :try_start_36
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)I

    move-result p0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 823
    :sswitch_d
    :try_start_37
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    .line 824
    :try_start_38
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_10

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_10
    move-exception p0

    .line 825
    :try_start_39
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_10

    :try_start_3a
    throw p0

    .line 664
    :sswitch_e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    move-result p0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 835
    :sswitch_f
    :try_start_3b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    move-result p0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 778
    :sswitch_10
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    .line 779
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_11

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_11
    move-exception p0

    .line 780
    :try_start_3e
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_11

    :try_start_3f
    throw p0

    .line 608
    :sswitch_11
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I

    move-result p0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 600
    :sswitch_12
    :try_start_40
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    .line 601
    :try_start_41
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_12

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_12
    move-exception p0

    .line 602
    :try_start_42
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_12

    :try_start_43
    throw p0

    .line 590
    :sswitch_13
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    .line 591
    :try_start_44
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_13

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_13
    move-exception p0

    .line 592
    :try_start_45
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_13

    :try_start_46
    throw p0

    .line 666
    :sswitch_14
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)I

    move-result p0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 819
    :sswitch_15
    :try_start_47
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    .line 820
    :try_start_48
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_14

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_14
    move-exception p0

    .line 821
    :try_start_49
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_14

    :try_start_4a
    throw p0

    .line 815
    :sswitch_16
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    .line 816
    :try_start_4b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_15

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_15
    move-exception p0

    .line 817
    :try_start_4c
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_15

    :try_start_4d
    throw p0

    .line 650
    :sswitch_17
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshot(ILjava/util/List;)I

    move-result p0
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 748
    :sswitch_18
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    .line 749
    :try_start_4f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_16

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_16
    move-exception p0

    .line 750
    :try_start_50
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_16

    :try_start_51
    throw p0

    .line 744
    :sswitch_19
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0

    .line 745
    :try_start_52
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_17

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_17
    move-exception p0

    .line 746
    :try_start_53
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_17

    :try_start_54
    throw p0

    .line 740
    :sswitch_1a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0

    .line 741
    :try_start_55
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_18

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_18
    move-exception p0

    .line 742
    :try_start_56
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_18

    :try_start_57
    throw p0

    .line 720
    :sswitch_1b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_0

    .line 721
    :try_start_58
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_19

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_19
    move-exception p0

    .line 722
    :try_start_59
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_19

    :try_start_5a
    throw p0

    .line 736
    :sswitch_1c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_0

    .line 737
    :try_start_5b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1a

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1a
    move-exception p0

    .line 738
    :try_start_5c
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_1a

    :try_start_5d
    throw p0

    .line 732
    :sswitch_1d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_0

    .line 733
    :try_start_5e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1b
    move-exception p0

    .line 734
    :try_start_5f
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_1b

    :try_start_60
    throw p0

    .line 706
    :sswitch_1e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_0

    .line 707
    :try_start_61
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v3, 0x1

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1c

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1c
    move-exception p0

    .line 709
    :try_start_62
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1c

    :try_start_63
    throw p0

    .line 716
    :sswitch_1f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_0

    .line 717
    :try_start_64
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1d

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1d
    move-exception p0

    .line 718
    :try_start_65
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_1d

    :try_start_66
    throw p0

    .line 702
    :sswitch_20
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_0

    .line 703
    :try_start_67
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_1e

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1e
    move-exception p0

    .line 704
    :try_start_68
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_1e

    :try_start_69
    throw p0

    .line 698
    :sswitch_21
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_0

    .line 699
    :try_start_6a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_1f

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1f
    move-exception p0

    .line 700
    :try_start_6b
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_1f

    :try_start_6c
    throw p0

    .line 694
    :sswitch_22
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_0

    .line 695
    :try_start_6d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_20

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_20
    move-exception p0

    .line 696
    :try_start_6e
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_20

    :try_start_6f
    throw p0

    .line 690
    :sswitch_23
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_0

    .line 691
    :try_start_70
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_21

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_21
    move-exception p0

    .line 692
    :try_start_71
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_21

    :try_start_72
    throw p0

    .line 686
    :sswitch_24
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_0

    .line 687
    :try_start_73
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_22

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_22
    move-exception p0

    .line 688
    :try_start_74
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_22

    :try_start_75
    throw p0

    .line 682
    :sswitch_25
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_0

    .line 683
    :try_start_76
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_23

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_23
    move-exception p0

    .line 684
    :try_start_77
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_23

    :try_start_78
    throw p0

    .line 678
    :sswitch_26
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_0

    .line 679
    :try_start_79
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_24

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_24
    move-exception p0

    .line 680
    :try_start_7a
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_24

    :try_start_7b
    throw p0

    .line 670
    :sswitch_27
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_0

    .line 671
    :try_start_7c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_25

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_25
    move-exception p0

    .line 672
    :try_start_7d
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_25

    :try_start_7e
    throw p0

    .line 811
    :pswitch_c
    :sswitch_28
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_0

    .line 812
    :try_start_7f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHealthHalLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_26

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_26
    move-exception p0

    .line 813
    :try_start_80
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_26

    :try_start_81
    throw p0

    .line 614
    :pswitch_d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_0

    .line 615
    :try_start_82
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_27

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_27
    move-exception p0

    .line 616
    :try_start_83
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_27

    :try_start_84
    throw p0

    .line 610
    :pswitch_e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_0

    .line 611
    :try_start_85
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_28

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_28
    move-exception p0

    .line 612
    :try_start_86
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_28

    :try_start_87
    throw p0

    .line 638
    :pswitch_f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_0

    .line 639
    :try_start_88
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_29

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_29
    move-exception p0

    .line 640
    :try_start_89
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_29

    :try_start_8a
    throw p0

    .line 634
    :pswitch_10
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_0

    .line 635
    :try_start_8b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2a

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2a
    move-exception p0

    .line 636
    :try_start_8c
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_2a

    :try_start_8d
    throw p0

    .line 642
    :pswitch_11
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_0

    .line 643
    :try_start_8e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_2b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2b
    move-exception p0

    .line 644
    :try_start_8f
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_2b

    :try_start_90
    throw p0

    .line 622
    :pswitch_12
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_0

    .line 623
    :try_start_91
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_2c

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2c
    move-exception p0

    .line 624
    :try_start_92
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_2c

    :try_start_93
    throw p0

    .line 618
    :pswitch_13
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_0

    .line 619
    :try_start_94
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_2d

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2d
    move-exception p0

    .line 620
    :try_start_95
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_2d

    :try_start_96
    throw p0

    .line 604
    :pswitch_14
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_0

    .line 605
    :try_start_97
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_2e

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2e
    move-exception p0

    .line 606
    :try_start_98
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_2e

    :try_start_99
    throw p0

    .line 594
    :pswitch_15
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_0

    .line 595
    :try_start_9a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_2f

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2f
    move-exception p0

    .line 596
    :try_start_9b
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_2f

    :try_start_9c
    throw p0

    .line 586
    :pswitch_16
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_0

    .line 587
    :try_start_9d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_30

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_30
    move-exception p0

    .line 588
    :try_start_9e
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_30

    :try_start_9f
    throw p0

    .line 578
    :cond_1
    :pswitch_17
    :sswitch_29
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_0

    .line 579
    :try_start_a0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_31

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_31
    move-exception p0

    .line 580
    :try_start_a1
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_31

    :try_start_a2
    throw p0

    .line 656
    :cond_2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_0

    .line 657
    :try_start_a3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_32

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_32
    move-exception p0

    .line 658
    :try_start_a4
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_32

    :try_start_a5
    throw p0

    .line 798
    :cond_3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_0

    .line 799
    :try_start_a6
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_33

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_33
    move-exception p0

    .line 800
    :try_start_a7
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_33

    :try_start_a8
    throw p0

    .line 770
    :cond_4
    :pswitch_18
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_0

    .line 771
    :try_start_a9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_34

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_34
    move-exception p0

    .line 772
    :try_start_aa
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_34

    :try_start_ab
    throw p0

    .line 802
    :cond_5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_0

    .line 803
    :try_start_ac
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_35

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_35
    move-exception p0

    .line 804
    :try_start_ad
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_35

    :try_start_ae
    throw p0

    .line 782
    :cond_6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_0

    .line 783
    :try_start_af
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_36

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_36
    move-exception p0

    .line 784
    :try_start_b0
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_36

    :try_start_b1
    throw p0

    .line 774
    :cond_7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_0

    .line 775
    :try_start_b2
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_37

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_37
    move-exception p0

    .line 776
    :try_start_b3
    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_37

    :try_start_b4
    throw p0

    .line 626
    :cond_8
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_0

    .line 627
    :try_start_b5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_38

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_38
    move-exception p0

    .line 628
    :try_start_b6
    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_38

    :try_start_b7
    throw p0

    .line 582
    :cond_9
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b7
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_0

    .line 583
    :try_start_b8
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_39

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_39
    move-exception p0

    .line 584
    :try_start_b9
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_39

    :try_start_ba
    throw p0
    :try_end_ba
    .catchall {:try_start_ba .. :try_end_ba} :catchall_0

    .line 856
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 857
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2719
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2723 -> :sswitch_28
        0x2724 -> :sswitch_28
        0x2725 -> :sswitch_27
        0x2726 -> :sswitch_26
        0x2727 -> :sswitch_25
        0x2728 -> :sswitch_24
        0x2729 -> :sswitch_23
        0x272a -> :sswitch_22
        0x272b -> :sswitch_21
        0x272c -> :sswitch_20
        0x272d -> :sswitch_1f
        0x272e -> :sswitch_28
        0x272f -> :sswitch_1e
        0x2730 -> :sswitch_1d
        0x2731 -> :sswitch_1c
        0x2732 -> :sswitch_1b
        0x2733 -> :sswitch_1a
        0x2735 -> :sswitch_19
        0x2737 -> :sswitch_18
        0x2750 -> :sswitch_17
        0x275b -> :sswitch_16
        0x2760 -> :sswitch_15
        0x276c -> :sswitch_14
        0x276f -> :sswitch_13
        0x2770 -> :sswitch_12
        0x2772 -> :sswitch_11
        0x2774 -> :sswitch_29
        0x2776 -> :sswitch_10
        0x2777 -> :sswitch_f
        0x2779 -> :sswitch_e
        0x2782 -> :sswitch_d
        0x2785 -> :sswitch_c
        0x2786 -> :sswitch_f
        0x2787 -> :sswitch_f
        0x2788 -> :sswitch_f
        0x2789 -> :sswitch_f
        0x278a -> :sswitch_f
        0x278b -> :sswitch_f
        0x278c -> :sswitch_f
        0x278d -> :sswitch_f
        0x278f -> :sswitch_b
        0x2790 -> :sswitch_a
        0x2792 -> :sswitch_9
        0x27a6 -> :sswitch_8
        0x27a7 -> :sswitch_7
        0x27bb -> :sswitch_6
        0x27bc -> :sswitch_5
        0x27bf -> :sswitch_4
        0x27cc -> :sswitch_3
        0x27cd -> :sswitch_2
        0x27d8 -> :sswitch_29
        0x27dc -> :sswitch_1
        0x27ec -> :sswitch_28
        0x27f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x273a
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2748
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
