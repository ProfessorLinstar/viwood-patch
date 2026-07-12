.class public Lcom/android/server/infra/ServiceNameBaseResolver$1;
.super Landroid/os/Handler;
.source "ServiceNameBaseResolver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/infra/ServiceNameBaseResolver;Landroid/os/Looper;Landroid/os/Handler$Callback;ZI)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    iput p5, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->val$userId:I

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 226
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    iget-object v0, p1, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    iget p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->val$userId:I

    invoke-virtual {p1, p0}, Lcom/android/server/infra/ServiceNameBaseResolver;->resetTemporaryService(I)V

    .line 228
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 230
    :cond_0
    invoke-static {}, Lcom/android/server/infra/ServiceNameBaseResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

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
