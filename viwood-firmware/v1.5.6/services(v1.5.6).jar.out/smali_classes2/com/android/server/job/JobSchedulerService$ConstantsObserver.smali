.class public Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public mCacheConfigChanges:Z

.field public mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 491
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    return-void
.end method


# virtual methods
.method public getValueLocked(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 497
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 500
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 526
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 528
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->prepareForUpdatedConstantsLocked()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    if-eqz v2, :cond_1

    .line 533
    const-string v2, "jobscheduler"

    new-array v3, v0, [Ljava/lang/String;

    .line 534
    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 536
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_3

    goto :goto_2

    .line 540
    :cond_3
    sget-boolean v9, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    if-eqz v9, :cond_5

    .line 541
    :cond_4
    const-string v9, "JobScheduler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceConfig "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " changed to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 542
    invoke-virtual {p1, v7, v11}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 541
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v9, "abandoned_job_timeouts_before_aggressive_backoff"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x16

    goto/16 :goto_4

    :sswitch_1
    const-string v9, "conn_prefetch_relax_frac"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x18

    goto/16 :goto_4

    :sswitch_2
    const-string/jumbo v9, "runtime_min_ui_guarantee_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x22

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v9, "runtime_free_quota_max_limit_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1f

    goto/16 :goto_4

    :sswitch_4
    const-string/jumbo v9, "runtime_min_ui_data_transfer_guarantee_buffer_factor"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x24

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v9, "max_cpu_only_job_batch_delay_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xf

    goto/16 :goto_4

    :sswitch_6
    const-string/jumbo v9, "persist_in_split_files"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x29

    goto/16 :goto_4

    :sswitch_7
    const-string v9, "aq_schedule_throw_exception"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x5

    goto/16 :goto_4

    :sswitch_8
    const-string/jumbo v9, "system_stop_to_failure_ratio"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x15

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v9, "min_ready_non_active_jobs_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xe

    goto/16 :goto_4

    :sswitch_a
    const-string v9, "conn_max_connectivity_job_batch_delay_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1a

    goto/16 :goto_4

    :sswitch_b
    const-string/jumbo v9, "runtime_cumulative_ui_limit_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x26

    goto/16 :goto_4

    :sswitch_c
    const-string/jumbo v9, "min_linear_backoff_time_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x13

    goto/16 :goto_4

    :sswitch_d
    const-string v9, "es_u_timeout_ej_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x7

    goto/16 :goto_4

    :sswitch_e
    const-string v9, "es_u_timeout_window_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xa

    goto/16 :goto_4

    :sswitch_f
    const-string v9, "es_u_timeout_reg_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x8

    goto/16 :goto_4

    :sswitch_10
    const-string v9, "heavy_use_factor"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x11

    goto/16 :goto_4

    :sswitch_11
    const-string/jumbo v9, "min_exp_backoff_time_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x14

    goto/16 :goto_4

    :sswitch_12
    const-string v9, "es_u_timeout_uij_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x6

    goto/16 :goto_4

    :sswitch_13
    const-string/jumbo v9, "runtime_use_data_estimates_for_limits"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x27

    goto/16 :goto_4

    :sswitch_14
    const-string/jumbo v9, "max_non_active_job_batch_delay_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x10

    goto/16 :goto_4

    :sswitch_15
    const-string v9, "conn_congestion_delay_frac"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x17

    goto/16 :goto_4

    :sswitch_16
    const-string v9, "aq_schedule_return_failure"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x4

    goto/16 :goto_4

    :sswitch_17
    const-string v9, "es_u_anr_window_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xc

    goto/16 :goto_4

    :sswitch_18
    const-string/jumbo v9, "max_num_persisted_job_work_items"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x28

    goto/16 :goto_4

    :sswitch_19
    const-string v9, "conn_low_signal_strength_relax_frac"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x19

    goto/16 :goto_4

    :sswitch_1a
    const-string/jumbo v9, "runtime_min_ui_data_transfer_guarantee_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x25

    goto/16 :goto_4

    :sswitch_1b
    const-string v9, "es_u_anr_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xb

    goto/16 :goto_4

    :sswitch_1c
    const-string/jumbo v9, "moderate_use_factor"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x12

    goto/16 :goto_4

    :sswitch_1d
    const-string/jumbo v9, "runtime_ui_limit_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x23

    goto/16 :goto_4

    :sswitch_1e
    const-string/jumbo v9, "min_ready_cpu_only_jobs_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0xd

    goto/16 :goto_4

    :sswitch_1f
    const-string/jumbo v9, "runtime_min_guarantee_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x20

    goto/16 :goto_4

    :sswitch_20
    const-string v9, "conn_transport_batch_threshold"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1b

    goto/16 :goto_4

    :sswitch_21
    const-string v9, "aq_schedule_window_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    goto :goto_4

    :sswitch_22
    const-string v9, "enable_execution_safeguards_udc"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v8

    goto :goto_4

    :sswitch_23
    const-string v9, "conn_update_all_jobs_min_interval_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1d

    goto :goto_4

    :sswitch_24
    const-string/jumbo v9, "prefetch_force_batch_relax_threshold_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1e

    goto :goto_4

    :sswitch_25
    const-string v9, "conn_use_cell_signal_strength"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x1c

    goto :goto_4

    :sswitch_26
    const-string/jumbo v9, "runtime_min_ej_guarantee_ms"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x21

    goto :goto_4

    :sswitch_27
    const-string v9, "enable_api_quotas"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v0

    goto :goto_4

    :sswitch_28
    const-string v9, "aq_schedule_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x2

    goto :goto_4

    :sswitch_29
    const-string v9, "es_u_timeout_total_count"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x9

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, -0x1

    :goto_4
    packed-switch v9, :pswitch_data_0

    .line 615
    const-string v9, "concurrency_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez v4, :cond_7

    .line 617
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v4}, Lcom/android/server/job/JobConcurrencyManager;->updateConfigLocked()V

    move v4, v8

    goto/16 :goto_2

    :cond_7
    move v8, v0

    .line 620
    :goto_5
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v9, v9, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 621
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v9, v9, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/StateController;

    .line 622
    invoke-virtual {v9, p1, v7}, Lcom/android/server/job/controllers/StateController;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :pswitch_0
    if-nez v5, :cond_2

    .line 609
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdatePersistingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 610
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v5, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    invoke-virtual {v7, v5}, Lcom/android/server/job/JobStore;->setUseSplitFiles(Z)V

    move v5, v8

    goto/16 :goto_2

    :pswitch_1
    if-nez v6, :cond_2

    .line 602
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateRuntimeConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    move v6, v8

    goto/16 :goto_2

    .line 590
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdatePrefetchConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2

    .line 587
    :pswitch_3
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateConnectivityConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2

    .line 578
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBackoffConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2

    .line 572
    :pswitch_5
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateUseFactorConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2

    .line 568
    :pswitch_6
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateBatchingConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    goto/16 :goto_2

    :pswitch_7
    if-nez v3, :cond_2

    .line 559
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService$Constants;->-$$Nest$mupdateApiQuotaConstantsLocked(Lcom/android/server/job/JobSchedulerService$Constants;)V

    .line 560
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    move v3, v8

    goto/16 :goto_2

    .line 628
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_9

    .line 629
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/StateController;

    .line 630
    invoke-virtual {p1}, Lcom/android/server/job/controllers/StateController;->onConstantsUpdatedLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 632
    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 632
    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e1c1925 -> :sswitch_29
        -0x6a91caaa -> :sswitch_28
        -0x61ffed04 -> :sswitch_27
        -0x57ab4ebd -> :sswitch_26
        -0x4e49277a -> :sswitch_25
        -0x4bd6b576 -> :sswitch_24
        -0x48789375 -> :sswitch_23
        -0x472b630d -> :sswitch_22
        -0x3f51c6e4 -> :sswitch_21
        -0x38d906c3 -> :sswitch_20
        -0x3816e2ef -> :sswitch_1f
        -0x34c37a87 -> :sswitch_1e
        -0x2fdd43f2 -> :sswitch_1d
        -0x2b109c3d -> :sswitch_1c
        -0x28f70f26 -> :sswitch_1b
        -0x2074138d -> :sswitch_1a
        -0x1d5723de -> :sswitch_19
        -0x1673d94c -> :sswitch_18
        -0x8486d60 -> :sswitch_17
        -0x6861eec -> :sswitch_16
        -0x36a3a91 -> :sswitch_15
        -0x2ba94ab -> :sswitch_14
        0xcb38358 -> :sswitch_13
        0xddf302d -> :sswitch_12
        0xfb016b2 -> :sswitch_11
        0x11402d7f -> :sswitch_10
        0x12da7deb -> :sswitch_f
        0x1335a09c -> :sswitch_e
        0x185b7bce -> :sswitch_d
        0x2a4571b4 -> :sswitch_c
        0x306220f0 -> :sswitch_b
        0x39707b23 -> :sswitch_a
        0x3be1abc4 -> :sswitch_9
        0x46a7f6df -> :sswitch_8
        0x46ad01bd -> :sswitch_7
        0x4da62ac3 -> :sswitch_6
        0x4e8bc38a -> :sswitch_5
        0x5343e941 -> :sswitch_4
        0x57aac0d8 -> :sswitch_3
        0x642d8bb4 -> :sswitch_2
        0x64e397f2 -> :sswitch_1
        0x76257c6d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCacheConfigChangesLocked(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 505
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 506
    new-array v0, v0, [Ljava/lang/String;

    .line 507
    const-string v1, "jobscheduler"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    .line 511
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 516
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 515
    const-string v1, "jobscheduler"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x0

    .line 517
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
