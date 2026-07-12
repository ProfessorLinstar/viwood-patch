.class public final Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "LoudnessCodecHelper.java"


# instance fields
.field public final mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/LoudnessCodecHelper;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;->mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/media/ILoudnessCodecUpdatesDispatcher;Ljava/lang/Object;)V
    .locals 3

    .line 118
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Lcom/android/server/audio/LoudnessCodecHelper;->-$$Nest$sfgetsLogger()Lcom/android/server/utils/EventLogger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->getClientDied(I)Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 126
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;->mLoudnessCodecHelper:Lcom/android/server/audio/LoudnessCodecHelper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/audio/LoudnessCodecHelper;->-$$Nest$monClientPidDied(Lcom/android/server/audio/LoudnessCodecHelper;I)V

    .line 128
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Landroid/media/ILoudnessCodecUpdatesDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;->onCallbackDied(Landroid/media/ILoudnessCodecUpdatesDispatcher;Ljava/lang/Object;)V

    return-void
.end method
