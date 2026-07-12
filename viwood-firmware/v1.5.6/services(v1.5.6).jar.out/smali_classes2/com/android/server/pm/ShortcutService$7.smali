.class public Lcom/android/server/pm/ShortcutService$7;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 3687
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$7;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 3696
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$7;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3697
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$7;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/ShortcutService;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$7;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmSaveDirtyInfoRunner(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3698
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$7;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/ShortcutService;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$7;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmSaveDirtyInfoRunner(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3699
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$7;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3701
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$7;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmShutdown(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3702
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
