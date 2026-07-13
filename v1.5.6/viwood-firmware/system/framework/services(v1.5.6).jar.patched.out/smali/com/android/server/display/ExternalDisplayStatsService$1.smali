.class public Lcom/android/server/display/ExternalDisplayStatsService$1;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "ExternalDisplayStatsService.java"


# instance fields
.field public final mLogStateAfterAudioSinkDisabled:Ljava/lang/Runnable;

.field public final mLogStateAfterAudioSinkEnabled:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public static synthetic $r8$lambda$Cj-EJU6YsGBJ9rKOhbSxbmOtcW8(Lcom/android/server/display/ExternalDisplayStatsService$1;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService$1;->lambda$$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tcwJoo-_exI5c_sLDvuHlIXb8y0(Lcom/android/server/display/ExternalDisplayStatsService$1;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService$1;->lambda$$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    .line 107
    new-instance p1, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$1;)V

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Ljava/lang/Runnable;

    .line 109
    new-instance p1, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/display/ExternalDisplayStatsService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$1;)V

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final isExternalDisplayUsedForAudio(Ljava/util/List;)Z
    .locals 7

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 120
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v1

    const-string v2, " type="

    const-string v3, " isSink="

    const-string v4, " isActive="

    const-string v5, "ExternalDisplayStatsService"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/16 v6, 0x9

    if-eq v1, v6, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/16 v6, 0xa

    if-eq v1, v6, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/16 v6, 0xb

    if-ne v1, v6, :cond_3

    .line 126
    :cond_1
    invoke-static {}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExternalDisplayUsedForAudio: use "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 135
    :cond_3
    invoke-static {}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExternalDisplayUsedForAudio: drop "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$$0()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$mlogStateAfterAudioSinkChanged(Lcom/android/server/display/ExternalDisplayStatsService;Z)V

    return-void
.end method

.method public final synthetic lambda$$1()V
    .locals 1

    .line 110
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$mlogStateAfterAudioSinkChanged(Lcom/android/server/display/ExternalDisplayStatsService;Z)V

    return-void
.end method

.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService$1;->isExternalDisplayUsedForAudio(Ljava/util/List;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService$1;->scheduleAudioSinkChange(Z)V

    return-void
.end method

.method public final scheduleAudioSinkChange(Z)V
    .locals 3

    .line 150
    invoke-static {}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleAudioSinkChange: mIsExternalDisplayUsedForAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {v1}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmIsExternalDisplayUsedForAudio(Lcom/android/server/display/ExternalDisplayStatsService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isAudioOnExternalDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalDisplayStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {v0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmInjector(Lcom/android/server/display/ExternalDisplayStatsService;)Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {v0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmInjector(Lcom/android/server/display/ExternalDisplayStatsService;)Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkEnabled:Ljava/lang/Runnable;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->mLogStateAfterAudioSinkDisabled:Ljava/lang/Runnable;

    :goto_0
    if-eqz p1, :cond_2

    .line 162
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmInjector(Lcom/android/server/display/ExternalDisplayStatsService;)Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 164
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$1;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-static {p0}, Lcom/android/server/display/ExternalDisplayStatsService;->-$$Nest$fgetmInjector(Lcom/android/server/display/ExternalDisplayStatsService;)Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
