.class public Lcom/android/server/accessibility/FlashNotificationsController$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "FlashNotificationsController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$1;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$1;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraId(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$1;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraId(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$1;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsTorchOn(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onTorchModeChanged, set mIsTorchOn="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlashNotifController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
