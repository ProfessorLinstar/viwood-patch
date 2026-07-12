.class public final Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "AudioService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;)V
    .locals 0

    .line 14986
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;->this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;Lcom/android/server/audio/AudioService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;-><init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;)V

    return-void
.end method


# virtual methods
.method public onCapturedContentResize(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCapturedContentVisibilityChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 14988
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;->this$1:Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method
