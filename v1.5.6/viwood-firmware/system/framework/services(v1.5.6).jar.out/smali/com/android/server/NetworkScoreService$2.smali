.class public Lcom/android/server/NetworkScoreService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkScoreService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$2;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 121
    const-string p2, "android.location.MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$2;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {p0}, Lcom/android/server/NetworkScoreService;->-$$Nest$mrefreshBinding(Lcom/android/server/NetworkScoreService;)V

    :cond_0
    return-void
.end method
