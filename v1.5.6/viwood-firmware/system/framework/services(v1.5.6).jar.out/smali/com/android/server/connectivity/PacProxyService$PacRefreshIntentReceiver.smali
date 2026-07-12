.class public Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PacProxyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmNetThreadHandler(Lcom/android/server/connectivity/PacProxyService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmPacDownloader(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
