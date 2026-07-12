.class public Lcom/android/server/app/GameManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 1567
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1570
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1571
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1576
    :try_start_0
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1577
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1578
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    const-string v2, "RECEIVE_SHUTDOWN_INDENT"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v0, v4, v2, v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$msendUserMessage(Lcom/android/server/app/GameManagerService;IILjava/lang/String;I)V

    .line 1580
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    const-string v2, "RECEIVE_SHUTDOWN_INDENT"

    const/4 v4, 0x6

    invoke-static {v1, v0, v4, v2, v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$msendUserMessage(Lcom/android/server/app/GameManagerService;IILjava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1585
    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
