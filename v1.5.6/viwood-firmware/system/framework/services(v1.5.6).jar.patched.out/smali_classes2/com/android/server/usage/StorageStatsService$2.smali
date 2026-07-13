.class public Lcom/android/server/usage/StorageStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 183
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 184
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 185
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/usage/StorageStatsService$H;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$2;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/StorageStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/usage/StorageStatsService$H;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
