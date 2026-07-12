.class public Lcom/android/server/accessibility/FlashNotificationsController$2;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "FlashNotificationsController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraId(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraId(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsCameraOpened(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    :cond_0
    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 189
    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraId(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraId(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsCameraOpened(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    :cond_0
    return-void
.end method
