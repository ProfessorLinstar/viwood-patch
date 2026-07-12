.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;


# instance fields
.field public mController:Landroid/media/IVolumeController;

.field public mLongPressTimeout:I

.field public mNextLongPress:J

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 13653
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 13734
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13738
    :cond_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getController()Landroid/media/IVolumeController;
    .locals 0

    .line 13667
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    return-object p0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .locals 1

    .line 13730
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .locals 4

    .line 13671
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    const-string/jumbo v3, "long_press_timeout"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/server/audio/SettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    return-void
.end method

.method public postDismiss()V
    .locals 2

    .line 13803
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_0

    goto :goto_0

    .line 13806
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13808
    const-string v0, "VolumeController"

    const-string v1, "Error calling dismiss"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public postDisplayCsdWarning(II)V
    .locals 2

    .line 13761
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    const-string v0, "VolumeController"

    if-nez p0, :cond_0

    .line 13762
    const-string p0, "Unable to display CSD warning, no controller"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13766
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/media/IVolumeController;->displayCsdWarning(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13768
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling displayCsdWarning for warning "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 1

    .line 13748
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    or-int/lit8 p1, p1, 0x1

    .line 13752
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13754
    const-string p1, "VolumeController"

    const-string v0, "Error calling displaySafeVolumeWarning"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1

    .line 13783
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_0

    goto :goto_0

    .line 13786
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13788
    const-string p1, "VolumeController"

    const-string v0, "Error calling masterMuteChanged"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 0

    .line 13773
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_0

    goto :goto_0

    .line 13776
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13778
    const-string p1, "VolumeController"

    const-string p2, "Error calling volumeChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setA11yMode(I)V
    .locals 1

    .line 13813
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_0

    goto :goto_0

    .line 13816
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13818
    const-string p1, "VolumeController"

    const-string v0, "Error calling setA11Mode"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .locals 0

    .line 13662
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    const/4 p1, 0x0

    .line 13663
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 13793
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_0

    goto :goto_0

    .line 13796
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13798
    const-string p1, "VolumeController"

    const-string v0, "Error calling setLayoutDirection"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 13726
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x3

    if-ne p1, p3, :cond_6

    .line 13694
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz v1, :cond_6

    if-ne p1, p3, :cond_1

    .line 13696
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p1

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 13697
    invoke-virtual {p1, p3, v1}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 13703
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_4

    .line 13704
    iget-boolean p2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez p2, :cond_4

    .line 13706
    iget-wide p2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long p2, p2, v1

    if-gez p2, :cond_3

    .line 13708
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeControllerLongPressEnabled(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    :cond_2
    int-to-long p2, v0

    add-long/2addr v1, p2

    .line 13709
    iput-wide v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    :cond_3
    return p1

    .line 13712
    :cond_4
    iget-wide p2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_6

    cmp-long p2, v1, p2

    if-lez p2, :cond_5

    .line 13715
    iput-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    return v0

    :cond_5
    return p1

    :cond_6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
