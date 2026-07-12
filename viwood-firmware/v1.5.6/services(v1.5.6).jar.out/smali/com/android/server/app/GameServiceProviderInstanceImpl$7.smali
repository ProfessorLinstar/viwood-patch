.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$7;
.super Landroid/service/games/IGameSessionController$Stub;
.source "GameServiceProviderInstanceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public static synthetic $r8$lambda$GUx1YH9iLeiPmRwgNvh_-pzvGa0(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->lambda$takeScreenshot$0(ILcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wcIQF0tgwSvxGC62jY0Lins38TI(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->lambda$restartGame$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/service/games/IGameSessionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$restartGame$1(I)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$mrestartGame(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    return-void
.end method

.method public final synthetic lambda$takeScreenshot$0(ILcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public restartGame(I)V
    .locals 2

    .line 219
    invoke-super {p0}, Landroid/service/games/IGameSessionController$Stub;->restartGame_enforcePermission()V

    .line 221
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    .line 208
    invoke-super {p0}, Landroid/service/games/IGameSessionController$Stub;->takeScreenshot_enforcePermission()V

    .line 210
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;ILcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
