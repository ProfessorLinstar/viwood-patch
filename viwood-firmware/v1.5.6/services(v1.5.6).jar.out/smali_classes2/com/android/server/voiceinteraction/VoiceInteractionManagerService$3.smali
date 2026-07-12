.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "VoiceInteractionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .locals 0

    .line 2800
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2824
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-$$Nest$fgetmServiceStub(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    move-result-object p0

    return-object p0
.end method

.method public onSetUiHints(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onVoiceSessionHidden()V
    .locals 0

    .line 0
    return-void
.end method

.method public onVoiceSessionShown()V
    .locals 0

    .line 0
    return-void
.end method

.method public onVoiceSessionWindowVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2815
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->stopHotwordTriggerToUiLatencySession(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
