.class public Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$1;
.super Landroid/os/Handler;
.source "ContextualSearchManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;


# direct methods
.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$1;->this$1:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 470
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 471
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$1;->this$1:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    invoke-static {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->-$$Nest$minvalidateToken(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;)V

    return-void

    .line 473
    :cond_0
    invoke-static {}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid token handler msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
