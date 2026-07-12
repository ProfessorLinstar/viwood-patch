.class public Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAttributes:Landroid/media/AudioAttributes;

.field public final mCallingUid:I

.field public final mClientId:Ljava/lang/String;

.field public mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field public mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field public final mFocusGainRequest:I

.field public mFocusLossFadeLimbo:Z

.field public mFocusLossReceived:I

.field public mFocusLossWasNotified:Z

.field public final mGrantFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mSdkTarget:I

.field public final mSourceRef:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/audio/FocusRequester;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;ILcom/android/server/utils/EventLogger;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 116
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 117
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 118
    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 119
    iput-object p7, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 120
    iput-object p8, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 121
    iput p9, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 122
    iput p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 123
    iput p3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 p2, 0x1

    .line 125
    iput-boolean p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 126
    iput-boolean p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 127
    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 128
    iput p11, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 129
    iput-object p12, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/utils/EventLogger;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 136
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 139
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v1, 0x1

    .line 141
    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 143
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 144
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getSdkTarget()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 146
    iput-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 147
    iput-object p3, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 148
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 149
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 150
    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DELAY_OK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    and-int/lit8 v1, p0, 0x4

    .line 254
    const-string/jumbo v2, "|"

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PAUSES_ON_DUCKABLE_LOSS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static focusChangeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 229
    :pswitch_0
    const-string p0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object p0

    .line 227
    :pswitch_1
    const-string p0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object p0

    .line 225
    :pswitch_2
    const-string p0, "GAIN_TRANSIENT"

    return-object p0

    .line 223
    :pswitch_3
    const-string p0, "GAIN"

    return-object p0

    .line 221
    :pswitch_4
    const-string/jumbo p0, "none"

    return-object p0

    .line 231
    :pswitch_5
    const-string p0, "LOSS"

    return-object p0

    .line 233
    :pswitch_6
    const-string p0, "LOSS_TRANSIENT"

    return-object p0

    .line 235
    :pswitch_7
    const-string p0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
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
.method public dispatchFocusChange(ILjava/lang/String;)I
    .locals 7

    .line 532
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v1, 0x0

    .line 533
    const-string v2, "FocusRequester"

    if-nez v0, :cond_1

    .line 534
    sget-boolean p0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "dispatchFocusChange: no focus dispatcher"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_3

    .line 538
    sget-boolean p0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "dispatchFocusChange: AUDIOFOCUS_NONE"

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    if-ne p1, v4, :cond_5

    .line 540
    :cond_4
    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    if-eq v3, p1, :cond_5

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus gain was requested with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dispatching "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v3, -0x3

    if-eq p1, v3, :cond_6

    const/4 v3, -0x2

    if-eq p1, v3, :cond_6

    const/4 v3, -0x1

    if-ne p1, v3, :cond_7

    .line 550
    :cond_6
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 553
    :cond_7
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p2

    .line 557
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    .line 558
    invoke-virtual {v3, v4, v2}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 557
    invoke-virtual {v0, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v1
.end method

.method public dispatchFocusChangeWithFadeLocked(ILjava/util/List;)I
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 572
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 573
    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl;->shouldEnforceFade()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 574
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 576
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, v4, p0}, Lcom/android/server/audio/MediaFocusControl;->fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    iput-boolean v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 581
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 583
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 582
    invoke-virtual {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v1

    .line 581
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->postDelayedLossAfterFade(Lcom/android/server/audio/FocusRequester;J)V

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 571
    iget-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p2, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 588
    :cond_3
    const-string p2, "focus with fade"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public dispatchFocusResultFromExtPolicy(I)V
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 593
    const-string v1, "FocusRequester"

    if-nez v0, :cond_0

    .line 594
    sget-boolean p0, Lcom/android/server/audio/MediaFocusControl;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 595
    const-string p0, "dispatchFocusResultFromExtPolicy: no focus dispatcher"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 599
    :cond_0
    sget-boolean v2, Lcom/android/server/audio/FocusRequester;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatching result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchFocusResultFromExtPolicy: error talking to focus listener"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->focusGainToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 270
    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->focusLossToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- notified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -- limbo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- sdk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 266
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 304
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final focusGainToString()Ljava/lang/String;
    .locals 0

    .line 242
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-static {p0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final focusLossForGainRequest(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x3

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 316
    :cond_0
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_8

    if-eqz v0, :cond_8

    .line 325
    :cond_1
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_7

    .line 334
    :cond_2
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq p0, v1, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v3, :cond_3

    if-eqz p0, :cond_5

    .line 344
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FocusRequester"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    return v3

    :cond_4
    return v2

    :cond_5
    return v1

    :cond_6
    return v3

    :cond_7
    return v2

    :cond_8
    return v3
.end method

.method public final focusLossToString()Ljava/lang/String;
    .locals 0

    .line 246
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {p0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final frameworkHandleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)Z
    .locals 4

    .line 480
    iget v0, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 492
    const-string/jumbo p1, "not ducking uid "

    const-string v0, "FocusRequester"

    if-nez p3, :cond_1

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 496
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " - flags"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-nez p3, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getSdkTarget()I

    move-result v1

    const/16 v3, 0x19

    if-gt v1, v3, :cond_2

    .line 502
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " - old SDK"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 506
    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/audio/MediaFocusControl;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result p0

    return p0

    :cond_3
    const/4 p3, -0x1

    if-ne p1, p3, :cond_4

    .line 515
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/audio/MediaFocusControl;->fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 520
    iput-boolean p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 521
    iget-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 523
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p3

    .line 522
    invoke-virtual {p2, p3}, Lcom/android/server/audio/MediaFocusControl;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0

    .line 521
    invoke-virtual {p2, p0, v0, v1}, Lcom/android/server/audio/MediaFocusControl;->postDelayedLossAfterFade(Lcom/android/server/audio/FocusRequester;J)V

    return p1

    :cond_4
    return v2
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public getClientUid()I
    .locals 0

    .line 195
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    return p0
.end method

.method public getGainRequest()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    return p0
.end method

.method public getGrantFlags()I
    .locals 0

    .line 207
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkTarget()I
    .locals 0

    .line 215
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    return p0
.end method

.method public handleFocusGain(I)V
    .locals 7

    .line 369
    const-string v0, "FocusRequester"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 370
    iput-boolean v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    .line 371
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 373
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v2, :cond_1

    .line 374
    iget-boolean v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    if-eqz v3, :cond_1

    .line 375
    sget-boolean v3, Lcom/android/server/audio/FocusRequester;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    .line 379
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    const-string v4, "handleGain"

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_1

    .line 382
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    if-eqz v2, :cond_2

    .line 383
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    const-string v4, "handleGain no listener"

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    const/4 v4, 0x2

    .line 384
    invoke-virtual {v3, v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v3

    .line 383
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 386
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v2, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 388
    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGain exc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    .line 389
    invoke-virtual {v4, v1, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 388
    invoke-virtual {v3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public handleFocusGainFromRequest(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 396
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    :cond_0
    return-void
.end method

.method public handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V
    .locals 7

    .line 403
    sget-boolean v0, Lcom/android/server/audio/FocusRequester;->DEBUG:Z

    const-string v1, "FocusRequester"

    if-eqz v0, :cond_0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFocusLoss for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v2, :cond_8

    .line 407
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v2, 0x0

    .line 408
    iput-boolean v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 415
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl;->mustNotifyFocusOwnerOnDuck()Z

    move-result v3

    const-string v4, "NOT dispatching "

    const-string v5, " to "

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v6, -0x3

    if-ne v3, v6, :cond_2

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {p2}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", to be handled externally"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 424
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p0

    .line 423
    invoke-virtual {p1, p0, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 431
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->frameworkHandleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {p2}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", response handled by framework"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_4
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 440
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p0

    .line 439
    invoke-virtual {p1, p0, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    return-void

    .line 444
    :cond_5
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_6

    .line 447
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatching "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_6
    iget-object p3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 451
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 450
    invoke-virtual {p3, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 452
    iput-boolean p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 454
    :try_start_0
    iget p3, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 455
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const-string v2, "handleLoss"

    invoke-direct {p3, p0, v0, v2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 458
    iget-object p3, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLoss failed exc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v2, p1}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    .line 460
    invoke-virtual {v0, p2, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 458
    invoke-virtual {p3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_1

    .line 463
    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const-string v2, "handleLoss failed no listener"

    invoke-direct {p3, p0, v0, v2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    .line 465
    invoke-virtual {p3, p2, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 463
    invoke-virtual {p1, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z
    .locals 2

    .line 358
    sget-boolean v0, Lcom/android/server/audio/FocusRequester;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFocusLossFromGain for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusRequester"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FocusRequester;->focusLossForGainRequest(I)I

    move-result p1

    .line 362
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasSameBinder(Landroid/os/IBinder;)Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSameClient(Ljava/lang/String;)Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/media/IAudioFocusDispatcher;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSamePackage(Ljava/lang/String;)Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSameUid(I)Z
    .locals 0

    .line 185
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAlwaysVisibleUser()Z
    .locals 1

    .line 189
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 190
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInFocusLossLimbo()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    return p0
.end method

.method public isLockedFocusOwner()Z
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public maybeRelease()V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 291
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 294
    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 298
    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    return-void
.end method

.method public toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .locals 9

    .line 611
    new-instance v0, Landroid/media/AudioFocusInfo;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    iget v6, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    iget v8, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0
.end method
