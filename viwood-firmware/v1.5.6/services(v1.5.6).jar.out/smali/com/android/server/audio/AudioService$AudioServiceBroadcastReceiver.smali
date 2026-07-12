.class public Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 11372
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 11375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 11376
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    const-string v2, "AS.AudioService"

    if-eqz v1, :cond_0

    .line 11377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11383
    :cond_0
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    .line 11384
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v5, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x9

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    :goto_0
    if-eq v0, v5, :cond_6

    if-nez v0, :cond_5

    .line 11406
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDockState(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, v5, :cond_6

    .line 11409
    :cond_5
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    const-string v2, "ACTION_DOCK_EVENT intent"

    invoke-virtual {v1, v5, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 11412
    :cond_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmDockState(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_4

    .line 11413
    :cond_7
    const-string v3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11414
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postReceiveBtEvent(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 11415
    :cond_8
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 11422
    const-string v0, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 11423
    const-string v3, "fake_hfp_broadcast"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v1, :cond_1c

    .line 11428
    const-string v0, "Skipped BLE TBS CG Audio State intent here,"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 11432
    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postReceiveBtEvent(Landroid/content/Intent;)V

    return-void

    .line 11435
    :cond_a
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 11436
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorRotation(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11437
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 11439
    :cond_b
    const-string/jumbo v0, "screen_state=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 11440
    :cond_c
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 11441
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorRotation(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11443
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 11445
    :cond_d
    const-string/jumbo v0, "screen_state=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 11446
    :cond_e
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 11447
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x36

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 11453
    :cond_f
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 11455
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->maybeDiscardAudioFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 11456
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUserSwitchedReceived(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 11459
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    .line 11461
    :cond_10
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmUserSwitchedReceived(Lcom/android/server/audio/AudioService;Z)V

    .line 11463
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSupportsMicPrivacyToggle(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11464
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSensorPrivacyManagerInternal(Lcom/android/server/audio/AudioService;)Landroid/hardware/SensorPrivacyManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 11465
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmMicMuteFromPrivacyToggle(Lcom/android/server/audio/AudioService;Z)V

    .line 11467
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/AudioService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$msetMicrophoneMuteNoCallerCheck(Lcom/android/server/audio/AudioService;I)V

    .line 11471
    :cond_11
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v6}, Lcom/android/server/audio/AudioService;->-$$Nest$mreadAudioSettings(Lcom/android/server/audio/AudioService;Z)V

    .line 11473
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 11478
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11473
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 11479
    :cond_12
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Failed to apply DISALLOW_RECORD_AUDIO restriction: "

    const-string/jumbo v7, "no_record_audio"

    const/4 v8, -0x1

    const-string v9, "android.intent.extra.user_handle"

    if-eqz v1, :cond_14

    .line 11481
    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_13

    .line 11484
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 11485
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mkillBackgroundUserProcessesWithRecordAudioPermission(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 11488
    :cond_13
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v7, v6, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 11491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 11493
    :cond_14
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 11495
    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 11497
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v7, v4, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 11500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 11502
    :cond_15
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 11503
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_3

    .line 11505
    :cond_16
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 11506
    const-string v0, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 11507
    const-string v1, "android.intent.extra.changed_package_list"

    .line 11508
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 11509
    array-length v2, v1

    array-length v3, v0

    if-eq v2, v3, :cond_17

    goto :goto_2

    .line 11513
    :cond_17
    :goto_1
    array-length v2, v0

    if-ge v4, v2, :cond_1c

    .line 11514
    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 11515
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    aget-object v3, v1, v4

    aget v5, v0, v4

    invoke-virtual {v2, v3, v5}, Lcom/android/server/audio/MediaFocusControl;->noFocusForSuspendedApp(Ljava/lang/String;I)V

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_19
    :goto_2
    return-void

    .line 11519
    :cond_1a
    const-string v1, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 11520
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundDoseHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundDoseHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v2

    .line 11521
    invoke-virtual {v2, v5, v4}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v2

    .line 11520
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/SoundDoseHelper;->onCheckMusicActive(Ljava/lang/String;Z)V

    goto :goto_4

    .line 11504
    :cond_1b
    :goto_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMusicFxHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MusicFxHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/MusicFxHelper;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 11524
    :cond_1c
    :goto_4
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mediatek/server/audio/AudioServiceExt;->onReceiveExt(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
