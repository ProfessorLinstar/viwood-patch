.class public interface abstract Lcom/android/server/display/mode/Vote;
.super Ljava/lang/Object;
.source "Vote.java"


# direct methods
.method public static forBaseModeRefreshRate(F)Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 233
    new-instance v0, Lcom/android/server/display/mode/BaseModeRefreshRateVote;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/BaseModeRefreshRateVote;-><init>(F)V

    return-object v0
.end method

.method public static forDisableRefreshRateSwitching()Lcom/android/server/display/mode/Vote;
    .locals 2

    .line 229
    new-instance v0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    return-object v0
.end method

.method public static forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;
    .locals 3

    .line 201
    new-instance v0, Lcom/android/server/display/mode/CombinedVote;

    new-instance v1, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;-><init>(FF)V

    new-instance v2, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v2, p0}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    .line 202
    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/CombinedVote;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static forRejectedModes(Ljava/util/Set;)Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 256
    new-instance v0, Lcom/android/server/display/mode/RejectedModesVote;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RejectedModesVote;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 210
    new-instance v0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;-><init>(FF)V

    return-object v0
.end method

.method public static forRequestedRefreshRate(F)Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 237
    new-instance v0, Lcom/android/server/display/mode/RequestedRefreshRateVote;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/RequestedRefreshRateVote;-><init>(F)V

    return-object v0
.end method

.method public static forSize(II)Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 214
    new-instance v0, Lcom/android/server/display/mode/SizeVote;

    invoke-direct {v0, p0, p1, p0, p1}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    return-object v0
.end method

.method public static forSizeAndPhysicalRefreshRatesRange(IIIIFF)Lcom/android/server/display/mode/Vote;
    .locals 2

    .line 219
    new-instance v0, Lcom/android/server/display/mode/CombinedVote;

    new-instance v1, Lcom/android/server/display/mode/SizeVote;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    new-instance p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    invoke-direct {p0, p4, p5}, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;-><init>(FF)V

    new-instance p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    cmpl-float p2, p4, p5

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p1, p2}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    .line 220
    invoke-static {v1, p0, p1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/CombinedVote;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static forSupportedModes(Ljava/util/List;)Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 252
    new-instance v0, Lcom/android/server/display/mode/SupportedModesVote;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/SupportedModesVote;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/Vote;
    .locals 4

    .line 241
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/SupportedModeData;

    .line 246
    new-instance v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    iget v3, v1, Lcom/android/server/display/config/SupportedModeData;->refreshRate:F

    iget v1, v1, Lcom/android/server/display/config/SupportedModeData;->vsyncRate:F

    invoke-direct {v2, v3, v1}, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_1
    new-instance p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/SupportedRefreshRatesVote;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 310
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :pswitch_0
    const-string p0, "PRIORITY_UDFPS"

    return-object p0

    .line 278
    :pswitch_1
    const-string p0, "PRIORITY_PROXIMITY"

    return-object p0

    .line 284
    :pswitch_2
    const-string p0, "PRIORITY_SKIN_TEMPERATURE"

    return-object p0

    .line 274
    :pswitch_3
    const-string p0, "PRIORITY_FLICKER_REFRESH_RATE_SWITCH"

    return-object p0

    .line 282
    :pswitch_4
    const-string p0, "PRIORITY_LOW_POWER_MODE_RENDER_RATE"

    return-object p0

    .line 280
    :pswitch_5
    const-string p0, "PRIORITY_LOW_POWER_MODE_MODES"

    return-object p0

    .line 308
    :pswitch_6
    const-string p0, "PRIORITY_SYSTEM_REQUESTED_MODES"

    return-object p0

    .line 306
    :pswitch_7
    const-string p0, "PRIORITY_LAYOUT_LIMITED_FRAME_RATE"

    return-object p0

    .line 304
    :pswitch_8
    const-string p0, "PRIORITY_LAYOUT_LIMITED_REFRESH_RATE"

    return-object p0

    .line 302
    :pswitch_9
    const-string p0, "PRIORITY_AUTH_OPTIMIZER_RENDER_FRAME_RATE"

    return-object p0

    .line 292
    :pswitch_a
    const-string p0, "PRIORITY_LIMIT_MODE"

    return-object p0

    .line 296
    :pswitch_b
    const-string p0, "PRIORITY_SYNCHRONIZED_RENDER_FRAME_RATE"

    return-object p0

    .line 294
    :pswitch_c
    const-string p0, "PRIORITY_SYNCHRONIZED_REFRESH_RATE"

    return-object p0

    .line 300
    :pswitch_d
    const-string p0, "PRIORITY_USER_SETTING_PEAK_RENDER_FRAME_RATE"

    return-object p0

    .line 298
    :pswitch_e
    const-string p0, "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE"

    return-object p0

    .line 268
    :pswitch_f
    const-string p0, "PRIORITY_REJECTED_MODES"

    return-object p0

    .line 266
    :pswitch_10
    const-string p0, "PRIORITY_APP_REQUEST_SIZE"

    return-object p0

    .line 262
    :pswitch_11
    const-string p0, "PRIORITY_APP_REQUEST_BASE_MODE_REFRESH_RATE"

    return-object p0

    .line 264
    :pswitch_12
    const-string p0, "PRIORITY_APP_REQUEST_RENDER_FRAME_RATE_RANGE"

    return-object p0

    .line 290
    :pswitch_13
    const-string p0, "PRIORITY_USER_SETTING_DISPLAY_PREFERRED_SIZE"

    return-object p0

    .line 288
    :pswitch_14
    const-string p0, "PRIORITY_USER_SETTING_MIN_RENDER_FRAME_RATE"

    return-object p0

    .line 276
    :pswitch_15
    const-string p0, "PRIORITY_HIGH_BRIGHTNESS_MODE"

    return-object p0

    .line 272
    :pswitch_16
    const-string p0, "PRIORITY_FLICKER_REFRESH_RATE"

    return-object p0

    .line 270
    :pswitch_17
    const-string p0, "PRIORITY_DEFAULT_REFRESH_RATE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
.end method
