.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$2;
.super Ljava/lang/Object;
.source "GameServiceProviderInstanceImpl.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public static synthetic $r8$lambda$G0HNQTa18rfd-UJ69vZRLjJueII(Lcom/android/server/app/GameServiceProviderInstanceImpl$2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->lambda$onBinderDied$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onBinderDied$0()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmLock(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$mdestroyAndClearAllGameSessionsLocked(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBinderDied()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
