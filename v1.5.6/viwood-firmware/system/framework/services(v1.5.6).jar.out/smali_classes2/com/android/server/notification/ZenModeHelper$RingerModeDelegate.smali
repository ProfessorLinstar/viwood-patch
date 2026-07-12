.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 2647
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final areAllPriorityOnlyRingerSoundsMuted()Z
    .locals 1

    .line 2704
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmConfigLock(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2705
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2706
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public canVolumeDownEnterSilent()Z
    .locals 0

    .line 2748
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2

    or-int/lit8 v0, p1, 0x26

    .line 2759
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    or-int/lit16 p0, p1, 0x83e

    return p0

    :cond_0
    and-int/lit16 p0, v0, -0x819

    return p0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-ne v3, v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    const/4 v8, -0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto :goto_3

    .line 2731
    :cond_2
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_3

    move v7, v2

    :goto_2
    move v11, v4

    goto :goto_5

    :cond_3
    :goto_3
    move v7, v2

    :goto_4
    move v11, v8

    goto :goto_5

    :cond_4
    if-eqz v6, :cond_6

    .line 2720
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v8

    goto :goto_2

    :cond_6
    move v7, v3

    goto :goto_4

    :goto_5
    if-eq v11, v8, :cond_7

    .line 2737
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x3e8

    const/4 v12, 0x0

    const/4 v13, 0x5

    const-string/jumbo v14, "ringerModeExternal"

    move-object/from16 v15, p3

    invoke-static/range {v9 .. v17}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_6

    :cond_7
    move-object/from16 v15, p3

    .line 2741
    :goto_6
    invoke-static {v1, v2, v15, v3, v7}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    return v7
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 2660
    :goto_0
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v7, :cond_1

    if-ne v7, v5, :cond_2

    .line 2662
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->areAllPriorityOnlyRingerSoundsMuted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2665
    :cond_1
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    :cond_2
    const/4 v7, -0x1

    if-eqz v2, :cond_6

    const/4 v8, 0x2

    if-eq v2, v5, :cond_3

    if-eq v2, v8, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    .line 2679
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v9, v9, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v9, v8, :cond_4

    const/4 v8, 0x3

    if-eq v9, v8, :cond_4

    if-ne v9, v5, :cond_5

    .line 2683
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->areAllPriorityOnlyRingerSoundsMuted()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v11, v4

    move v4, v2

    goto :goto_4

    .line 2685
    :cond_5
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_8

    :goto_1
    move v11, v7

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_8

    move-object/from16 v4, p5

    .line 2670
    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v4, :cond_8

    .line 2671
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    move v5, v7

    .line 2674
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    move v4, v2

    move v11, v5

    goto :goto_4

    :cond_8
    :goto_3
    move v4, v2

    goto :goto_1

    :goto_4
    if-eq v11, v7, :cond_9

    .line 2692
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x3e8

    const/4 v12, 0x0

    const/4 v13, 0x5

    const-string/jumbo v14, "ringerModeInternal"

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    :cond_9
    if-nez v6, :cond_a

    if-ne v11, v7, :cond_a

    if-eq v3, v4, :cond_b

    :cond_a
    move-object/from16 v0, p3

    goto :goto_5

    :cond_b
    return v4

    .line 2697
    :goto_5
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 2650
    const-string p0, "ZenModeHelper"

    return-object p0
.end method
