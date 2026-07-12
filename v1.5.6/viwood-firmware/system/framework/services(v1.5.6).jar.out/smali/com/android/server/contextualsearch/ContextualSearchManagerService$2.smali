.class public Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;
.super Landroid/os/Handler;
.source "ContextualSearchManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->resetTemporaryPackage()V

    .line 243
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 245
    :cond_0
    invoke-static {}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid handler msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
