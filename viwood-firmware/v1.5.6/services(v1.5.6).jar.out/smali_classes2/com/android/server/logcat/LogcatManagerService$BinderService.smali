.class public final Lcom/android/server/logcat/LogcatManagerService$BinderService;
.super Landroid/os/logcat/ILogcatManagerService$Stub;
.source "LogcatManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/logcat/LogcatManagerService;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-direct {p0}, Landroid/os/logcat/ILogcatManagerService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/logcat/LogcatManagerService;Lcom/android/server/logcat/LogcatManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/logcat/LogcatManagerService$BinderService;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    return-void
.end method


# virtual methods
.method public finishThread(IIII)V
    .locals 6

    .line 207
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;-><init>(IIIILcom/android/server/logcat/LogcatManagerService-IA;)V

    .line 211
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p1}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 212
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p2}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p0}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public startThread(IIII)V
    .locals 6

    .line 197
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;-><init>(IIIILcom/android/server/logcat/LogcatManagerService-IA;)V

    .line 201
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p1}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p2}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$BinderService;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p0}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
