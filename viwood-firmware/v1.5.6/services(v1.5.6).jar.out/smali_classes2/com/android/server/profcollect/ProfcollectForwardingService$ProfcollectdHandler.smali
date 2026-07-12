.class public Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;
.super Landroid/os/Handler;
.source "ProfcollectForwardingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/os/Looper;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 255
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {p1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mregisterObservers(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 269
    iget-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/profcollect/ProfcollectForwardingService$PeriodicTraceJobService;->schedule(Landroid/content/Context;)V

    .line 270
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$ReportProcessJobService;->schedule(Landroid/content/Context;)V

    return-void

    .line 273
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 265
    :cond_1
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mconnectNativeService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z

    return-void
.end method
