.class public Lcom/android/server/accessibility/FlashNotificationsController$3;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "FlashNotificationsController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public static synthetic $r8$lambda$6sh4VmH_JFlFTySwImzfGSFne-A(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 210
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/FlashNotificationsController$3$$ExternalSyntheticLambda0;-><init>()V

    .line 211
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmIsAlarming(Lcom/android/server/accessibility/FlashNotificationsController;)Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarm state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashNotifController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mstartFlashNotificationSequenceForAlarm(Lcom/android/server/accessibility/FlashNotificationsController;)V

    goto :goto_1

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mstopFlashNotificationSequenceForAlarm(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 223
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsAlarming(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    :cond_2
    return-void
.end method
