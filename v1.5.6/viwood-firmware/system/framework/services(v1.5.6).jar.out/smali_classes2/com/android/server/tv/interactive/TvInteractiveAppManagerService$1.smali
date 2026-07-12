.class public Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 617
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 618
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.user_handle"

    if-eqz v0, :cond_0

    .line 619
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mswitchUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V

    return-void

    .line 620
    :cond_0
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V

    return-void

    .line 622
    :cond_1
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 624
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mstartUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V

    return-void

    .line 625
    :cond_2
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 626
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 627
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mstopUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V

    :cond_3
    return-void
.end method
