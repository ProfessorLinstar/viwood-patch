.class public Lcom/android/server/wm/BlurController$2;
.super Landroid/content/BroadcastReceiver;
.source "BlurController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;

.field public final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    iput-object p2, p0, Lcom/android/server/wm/BlurController$2;->val$powerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 70
    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    iget-object p2, p0, Lcom/android/server/wm/BlurController$2;->val$powerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/BlurController;->-$$Nest$fputmInPowerSaveMode(Lcom/android/server/wm/BlurController;Z)V

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/BlurController$2;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {p0}, Lcom/android/server/wm/BlurController;->-$$Nest$mupdateBlurEnabled(Lcom/android/server/wm/BlurController;)V

    :cond_0
    return-void
.end method
