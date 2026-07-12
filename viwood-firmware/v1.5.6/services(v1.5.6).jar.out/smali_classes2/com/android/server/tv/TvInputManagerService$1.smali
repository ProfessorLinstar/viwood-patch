.class public Lcom/android/server/tv/TvInputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "TvInputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string p2, "TvInputManagerService"

    const/4 v0, 0x5

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 245
    :cond_0
    const-string p1, "The TV woke up."

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    move-result-object p1

    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 250
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    move-result-object p0

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 254
    :cond_1
    const-string p1, "The TV turned off."

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$fgetmMessageHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
