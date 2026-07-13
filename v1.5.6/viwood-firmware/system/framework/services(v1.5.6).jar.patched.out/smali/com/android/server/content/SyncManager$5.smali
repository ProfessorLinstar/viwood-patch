.class public Lcom/android/server/content/SyncManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 430
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 431
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object p0, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0, p2}, Lcom/android/server/content/SyncManager;->-$$Nest$monUserRemoved(Lcom/android/server/content/SyncManager;I)V

    return-void

    .line 436
    :cond_1
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    iget-object p0, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0, p2}, Lcom/android/server/content/SyncManager;->-$$Nest$monUserUnlocked(Lcom/android/server/content/SyncManager;I)V

    return-void

    .line 438
    :cond_2
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 439
    iget-object p0, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p0, p2}, Lcom/android/server/content/SyncManager;->-$$Nest$monUserStopped(Lcom/android/server/content/SyncManager;I)V

    :cond_3
    :goto_0
    return-void
.end method
