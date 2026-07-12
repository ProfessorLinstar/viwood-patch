.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;
.super Lcom/android/internal/app/ILogAccessDialogCallback$Stub;
.source "LogcatManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/logcat/LogcatManagerService;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/ILogAccessDialogCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public approveAccessForClient(ILjava/lang/String;)V
    .locals 2

    .line 219
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p1}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 224
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p2}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p0}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public declineAccessForClient(ILjava/lang/String;)V
    .locals 2

    .line 229
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p1}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 234
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p2}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p0}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
