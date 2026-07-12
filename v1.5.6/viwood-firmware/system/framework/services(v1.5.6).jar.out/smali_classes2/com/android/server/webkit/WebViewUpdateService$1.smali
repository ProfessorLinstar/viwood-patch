.class public Lcom/android/server/webkit/WebViewUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewUpdateService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 86
    :cond_0
    const-string v4, "android.intent.extra.user_handle"

    const/16 v5, -0x2710

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v6, p1

    goto :goto_0

    :sswitch_2
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v6, v0

    goto :goto_0

    :sswitch_3
    const-string v7, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v6, v1

    goto :goto_0

    :sswitch_4
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v6, v2

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 108
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    .line 108
    :goto_1
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->packageStateChanged(Ljava/lang/String;II)V

    return-void

    .line 95
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 96
    :cond_7
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->packageStateChanged(Ljava/lang/String;II)V

    return-void

    .line 102
    :pswitch_2
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->entirePackageChanged(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 103
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->packageStateChanged(Ljava/lang/String;II)V

    :cond_8
    :goto_2
    return-void

    .line 113
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->handleNewUser(I)V

    return-void

    .line 116
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl2;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl2;->handleUserRemoved(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_4
        -0x2d021ace -> :sswitch_3
        0xa480416 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
