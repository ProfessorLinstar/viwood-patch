.class public Lcom/android/server/EnoteDeviceCheckService$1;
.super Landroid/os/Handler;
.source "EnoteDeviceCheckService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/EnoteDeviceCheckService;


# direct methods
.method public constructor <init>(Lcom/android/server/EnoteDeviceCheckService;Landroid/os/Looper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/server/EnoteDeviceCheckService$1;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown task type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnoteDeviceCheckService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 149
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$1;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {p0, p1}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$mexecuteWriteNvRam(Lcom/android/server/EnoteDeviceCheckService;I)V

    return-void

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$1;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {p0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$mexecuteReadNvRam(Lcom/android/server/EnoteDeviceCheckService;)V

    return-void

    .line 142
    :cond_2
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$1;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {p0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$mexecuteShutdown(Lcom/android/server/EnoteDeviceCheckService;)V

    return-void

    .line 138
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 139
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$1;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {p0, p1}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$mexecuteCheckDevice(Lcom/android/server/EnoteDeviceCheckService;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_4
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService$1;->this$0:Lcom/android/server/EnoteDeviceCheckService;

    invoke-static {p0}, Lcom/android/server/EnoteDeviceCheckService;->-$$Nest$mattemptGetConnectivityManager(Lcom/android/server/EnoteDeviceCheckService;)V

    return-void
.end method
