.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$6;
.super Landroid/service/games/IGameServiceController$Stub;
.source "GameServiceProviderInstanceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public static synthetic $r8$lambda$gg-NaxM7hWj216h-VvL3KuSR-uY(Lcom/android/server/app/GameServiceProviderInstanceImpl$6;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->lambda$createGameSession$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/service/games/IGameServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createGameSession(I)V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/service/games/IGameServiceController$Stub;->createGameSession_enforcePermission()V

    .line 196
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$6;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$createGameSession$0(I)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$mcreateGameSession(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    return-void
.end method
