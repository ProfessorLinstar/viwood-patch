.class public Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 9

    .line 1220
    const-string v0, "freezer_cutoff_adj"

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 1224
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0x43

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v8, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v7, 0x42

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v8, "tiered_cached_adj_ui_tier_size"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v7, 0x41

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v7, 0x40

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "deferred_fgs_notification_interval_for_short"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v7, 0x3f

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "fgs_start_foreground_timeout"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x3e

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v7, 0x3d

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v8, "use_tiered_cached_adj"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v7, 0x3c

    goto/16 :goto_1

    :sswitch_8
    const-string v8, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v7, 0x3b

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v8, "proc_state_debug_uids"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0x3a

    goto/16 :goto_1

    :sswitch_a
    const-string v8, "follow_up_oomadj_update_wait_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v7, 0x39

    goto/16 :goto_1

    :sswitch_b
    const-string v8, "enable_wait_for_finish_attach_application"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v7, 0x38

    goto/16 :goto_1

    :sswitch_c
    const-string v8, "deferred_fgs_notifications_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v7, 0x37

    goto/16 :goto_1

    :sswitch_d
    const-string v8, "extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v7, 0x36

    goto/16 :goto_1

    :sswitch_e
    const-string v8, "disable_app_profiler_pss_profiling"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v7, 0x35

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v8, "media_processing_fgs_timeout_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v7, 0x34

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v8, "short_fgs_proc_state_extra_wait_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v7, 0x33

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v8, "kill_bg_restricted_cached_idle"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v7, 0x32

    goto/16 :goto_1

    :sswitch_12
    const-string v8, "boot_time_temp_allowlist_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v7, 0x31

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v8, "low_swap_threshold_percent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v7, 0x30

    goto/16 :goto_1

    :sswitch_14
    const-string v8, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v7, 0x2f

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v8, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v7, 0x2e

    goto/16 :goto_1

    :sswitch_16
    const-string v8, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v7, 0x2d

    goto/16 :goto_1

    :sswitch_17
    const-string v8, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v7, 0x2c

    goto/16 :goto_1

    :sswitch_18
    const-string v8, "enable_extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v7, 0x2b

    goto/16 :goto_1

    :sswitch_19
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v7, 0x2a

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v8, "system_exempt_power_restrictions_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v7, 0x29

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v8, "proactive_kills_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v7, 0x28

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v8, "tiered_cached_adj_decay_time"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v7, 0x27

    goto/16 :goto_1

    :sswitch_1d
    const-string v8, "defer_boot_completed_broadcast"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v7, 0x26

    goto/16 :goto_1

    :sswitch_1e
    const-string v8, "fgs_crash_extra_wait_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v7, 0x25

    goto/16 :goto_1

    :sswitch_1f
    const-string v8, "imperceptible_kill_exempt_packages"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v7, 0x24

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v8, "top_to_fgs_grace_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v7, 0x23

    goto/16 :goto_1

    :sswitch_21
    const-string v8, "deferred_fgs_notifications_api_gated"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v7, 0x22

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v8, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v7, 0x21

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v8, "push_messaging_over_quota_behavior"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v7, 0x20

    goto/16 :goto_1

    :sswitch_24
    const-string v8, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v7, 0x1f

    goto/16 :goto_1

    :sswitch_25
    const-string v8, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    goto/16 :goto_1

    :cond_26
    const/16 v7, 0x1e

    goto/16 :goto_1

    :sswitch_26
    const-string v8, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    goto/16 :goto_1

    :cond_27
    const/16 v7, 0x1d

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v8, "pss_to_rss_threshold_modifier"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_28

    goto/16 :goto_1

    :cond_28
    const/16 v7, 0x1c

    goto/16 :goto_1

    :sswitch_28
    const-string/jumbo v8, "service_start_foreground_timeout_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    goto/16 :goto_1

    :cond_29
    const/16 v7, 0x1b

    goto/16 :goto_1

    :sswitch_29
    const-string v8, "fgs_atom_sample_rate"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    goto/16 :goto_1

    :cond_2a
    const/16 v7, 0x1a

    goto/16 :goto_1

    :sswitch_2a
    const-string/jumbo v8, "prioritize_alarm_broadcasts"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    goto/16 :goto_1

    :cond_2b
    const/16 v7, 0x19

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v8, "process_kill_timeout"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    goto/16 :goto_1

    :cond_2c
    move v7, v1

    goto/16 :goto_1

    :sswitch_2c
    const-string/jumbo v8, "min_assoc_log_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    goto/16 :goto_1

    :cond_2d
    const/16 v7, 0x17

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v8, "network_access_timeout_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    goto/16 :goto_1

    :cond_2e
    const/16 v7, 0x16

    goto/16 :goto_1

    :sswitch_2e
    const-string v8, "data_sync_fgs_timeout_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    goto/16 :goto_1

    :cond_2f
    const/16 v7, 0x15

    goto/16 :goto_1

    :sswitch_2f
    const-string/jumbo v8, "max_empty_time_millis"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    goto/16 :goto_1

    :cond_30
    const/16 v7, 0x14

    goto/16 :goto_1

    :sswitch_30
    const-string/jumbo v8, "max_cached_processes"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    goto/16 :goto_1

    :cond_31
    const/16 v7, 0x13

    goto/16 :goto_1

    :sswitch_31
    const-string v8, "force_bg_check_on_restricted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    goto/16 :goto_1

    :cond_32
    const/16 v7, 0x12

    goto/16 :goto_1

    :sswitch_32
    const-string v8, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    goto/16 :goto_1

    :cond_33
    const/16 v7, 0x11

    goto/16 :goto_1

    :sswitch_33
    const-string/jumbo v8, "short_fgs_timeout_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34

    goto/16 :goto_1

    :cond_34
    const/16 v7, 0x10

    goto/16 :goto_1

    :sswitch_34
    const-string/jumbo v8, "max_phantom_processes"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    goto/16 :goto_1

    :cond_35
    const/16 v7, 0xf

    goto/16 :goto_1

    :sswitch_35
    const-string v8, "deferred_fgs_notification_interval"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    goto/16 :goto_1

    :cond_36
    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_36
    const-string/jumbo v8, "max_previous_time"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    goto/16 :goto_1

    :cond_37
    const/16 v7, 0xd

    goto/16 :goto_1

    :sswitch_37
    const-string/jumbo v8, "oomadj_update_policy"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_38

    goto/16 :goto_1

    :cond_38
    const/16 v7, 0xc

    goto/16 :goto_1

    :sswitch_38
    const-string/jumbo v8, "vis_to_invis_uij_schedule_grace_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    goto/16 :goto_1

    :cond_39
    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_39
    const-string/jumbo v8, "max_service_connections_per_process"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    goto/16 :goto_1

    :cond_3a
    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_3a
    const-string v8, "deferred_fgs_notification_exclusion_time_for_short"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    goto/16 :goto_1

    :cond_3b
    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_3b
    const-string v8, "fgs_start_denied_log_sample_rate"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    goto/16 :goto_1

    :cond_3c
    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_3c
    const-string v8, "fgs_allow_opt_out"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    goto :goto_1

    :cond_3d
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_3d
    const-string v8, "default_background_activity_starts_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    goto :goto_1

    :cond_3e
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_3e
    const-string v8, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    goto :goto_1

    :cond_3f
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_3f
    const-string/jumbo v8, "service_start_foreground_anr_delay_ms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    goto :goto_1

    :cond_40
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_40
    const-string v8, "default_fgs_starts_restriction_enabled"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    goto :goto_1

    :cond_41
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_41
    const-string/jumbo v8, "kill_bg_restricted_cached_idle_settle_time"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    goto :goto_1

    :cond_42
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_42
    const-string/jumbo v8, "short_fgs_anr_extra_wait_duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    goto :goto_1

    :cond_43
    move v7, v2

    goto :goto_1

    :sswitch_43
    const-string v8, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    goto :goto_1

    :cond_44
    move v7, v4

    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 1416
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v7, v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFGSPermissionEnforcementFlagsIfNecessary(Lcom/android/server/am/ActivityManagerConstants;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1343
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1256
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralIntervalForShort(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1301
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1410
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcStateDebugUids(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1413
    :pswitch_4
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFollowUpOomAdjUpdateWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1388
    :pswitch_5
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableWaitForFinishAttachApplication(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1244
    :pswitch_6
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1322
    :pswitch_7
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1404
    :pswitch_8
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDisableAppProfilerPssProfiling(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1367
    :pswitch_9
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMediaProcessingFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1364
    :pswitch_a
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsProcStateExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1313
    :pswitch_b
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1292
    :pswitch_c
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1382
    :pswitch_d
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateLowSwapThresholdPercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1295
    :pswitch_e
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1346
    :pswitch_f
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1241
    :pswitch_10
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1253
    :pswitch_11
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1325
    :pswitch_12
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1399
    :pswitch_13
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$sfgetDEFAULT_FREEZER_CUTOFF_ADJ()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    move v5, v2

    goto/16 :goto_0

    .line 1262
    :pswitch_14
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateSystemExemptPowerRestrictionsEnabled(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1379
    :pswitch_15
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProactiveKillsEnabled(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1396
    :pswitch_16
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateUseTieredCachedAdj(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1334
    :pswitch_17
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1376
    :pswitch_18
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsCrashExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1385
    :pswitch_19
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateTopToFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1247
    :pswitch_1a
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1349
    :pswitch_1b
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1265
    :pswitch_1c
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1238
    :pswitch_1d
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1307
    :pswitch_1e
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1407
    :pswitch_1f
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePssToRssThresholdModifier(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1337
    :pswitch_20
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1304
    :pswitch_21
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1331
    :pswitch_22
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePrioritizeAlarmBroadcasts(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1328
    :pswitch_23
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1278
    :pswitch_24
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1355
    :pswitch_25
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1370
    :pswitch_26
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDataSyncFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1352
    :pswitch_27
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1226
    :pswitch_28
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1275
    :pswitch_29
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1232
    :pswitch_2a
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1361
    :pswitch_2b
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1289
    :pswitch_2c
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1250
    :pswitch_2d
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1391
    :pswitch_2e
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPreviousTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1268
    :pswitch_2f
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1298
    :pswitch_30
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1358
    :pswitch_31
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxServiceConnectionsPerProcess(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1259
    :pswitch_32
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTimeForShort(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1310
    :pswitch_33
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1319
    :pswitch_34
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1229
    :pswitch_35
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1286
    :pswitch_36
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1340
    :pswitch_37
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1235
    :pswitch_38
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1316
    :pswitch_39
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1373
    :pswitch_3a
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsAnrExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    .line 1272
    :pswitch_3b
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V

    goto/16 :goto_0

    :cond_45
    if-eqz v5, :cond_46

    .line 1421
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_46

    .line 1424
    invoke-virtual {p0, v1}, Landroid/app/ActivityManagerInternal;->updateOomAdj(I)V

    :cond_46
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ba4b562 -> :sswitch_43
        -0x798468db -> :sswitch_42
        -0x76fa06f8 -> :sswitch_41
        -0x719878d5 -> :sswitch_40
        -0x71781c6f -> :sswitch_3f
        -0x6d209d2c -> :sswitch_3e
        -0x6a37b8d0 -> :sswitch_3d
        -0x62f6cce1 -> :sswitch_3c
        -0x61c0c900 -> :sswitch_3b
        -0x5f5f6d14 -> :sswitch_3a
        -0x58658d02 -> :sswitch_39
        -0x569d8d6f -> :sswitch_38
        -0x53dc231d -> :sswitch_37
        -0x4f213486 -> :sswitch_36
        -0x4db39f74 -> :sswitch_35
        -0x48c35170 -> :sswitch_34
        -0x4852209e -> :sswitch_33
        -0x476d69e0 -> :sswitch_32
        -0x47037762 -> :sswitch_31
        -0x41254a05 -> :sswitch_30
        -0x3eef3615 -> :sswitch_2f
        -0x3daa35b2 -> :sswitch_2e
        -0x397974d2 -> :sswitch_2d
        -0x3099a4da -> :sswitch_2c
        -0x2ddb96b0 -> :sswitch_2b
        -0x2b65dd00 -> :sswitch_2a
        -0x28b1facc -> :sswitch_29
        -0x226e8ce7 -> :sswitch_28
        -0x1f869333 -> :sswitch_27
        -0x1ac3af47 -> :sswitch_26
        -0x13aa2fbd -> :sswitch_25
        -0x116849e6 -> :sswitch_24
        -0xf17951c -> :sswitch_23
        -0xd5a912d -> :sswitch_22
        -0xceeb9d0 -> :sswitch_21
        -0x502f0de -> :sswitch_20
        -0x2e7b9c6 -> :sswitch_1f
        -0xa23b96 -> :sswitch_1e
        0x14ce72d -> :sswitch_1d
        0x47243c9 -> :sswitch_1c
        0x61ee68b -> :sswitch_1b
        0xa61fe73 -> :sswitch_1a
        0xca1df59 -> :sswitch_19
        0x105030a5 -> :sswitch_18
        0x257a0925 -> :sswitch_17
        0x34db0a33 -> :sswitch_16
        0x350b53bb -> :sswitch_15
        0x39ca177c -> :sswitch_14
        0x425eee10 -> :sswitch_13
        0x45611472 -> :sswitch_12
        0x477b2286 -> :sswitch_11
        0x49dfc388 -> :sswitch_10
        0x4d171cd0 -> :sswitch_f
        0x4f9e4f36 -> :sswitch_e
        0x50949369 -> :sswitch_d
        0x524459dd -> :sswitch_c
        0x5611b47e -> :sswitch_b
        0x58bdb2f7 -> :sswitch_a
        0x59f1b6c6 -> :sswitch_9
        0x59fe4888 -> :sswitch_8
        0x5e055050 -> :sswitch_7
        0x5f40529e -> :sswitch_6
        0x60f0152f -> :sswitch_5
        0x6fb61593 -> :sswitch_4
        0x710abd04 -> :sswitch_3
        0x729c862a -> :sswitch_2
        0x7805f2e7 -> :sswitch_1
        0x7bd2ee58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_36
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_3b
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_36
        :pswitch_16
        :pswitch_36
        :pswitch_2
        :pswitch_1
        :pswitch_36
        :pswitch_16
        :pswitch_0
        :pswitch_36
    .end packed-switch
.end method
