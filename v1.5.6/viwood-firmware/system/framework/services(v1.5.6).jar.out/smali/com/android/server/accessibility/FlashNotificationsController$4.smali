.class public Lcom/android/server/accessibility/FlashNotificationsController$4;
.super Ljava/lang/Object;
.source "FlashNotificationsController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$4;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$4;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmDisplayManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$4;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmDisplayManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$4;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmDisplayState(Lcom/android/server/accessibility/FlashNotificationsController;I)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method
