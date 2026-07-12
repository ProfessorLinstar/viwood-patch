.class public Lcom/android/server/EnoteDeviceCheckService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "EnoteDeviceCheckService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/EnoteDeviceCheckService;


# direct methods
.method public constructor <init>(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/server/EnoteDeviceCheckService$2;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService$2;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {v0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$fgetmIsDeviceChecking(Lcom/android/server/EnoteDeviceCheckService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$2;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    const/4 v0, 0x2

    invoke-static {p0, p1}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$mgetNetworkType(Lcom/android/server/EnoteDeviceCheckService;Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$msendTaskToWorkerThread(Lcom/android/server/EnoteDeviceCheckService;ILjava/lang/Object;)V

    return-void
.end method
