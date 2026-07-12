.class public Lcom/android/server/app/GameManagerService$1;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;

.field public final synthetic val$listener:Landroid/app/IGameModeListener;

.field public final synthetic val$listenerBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;Landroid/os/IBinder;)V
    .locals 0

    .line 1483
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    iput-object p2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Landroid/app/IGameModeListener;

    iput-object p3, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1486
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Landroid/app/IGameModeListener;

    invoke-static {v0, v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$mremoveGameModeListenerUnchecked(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;)V

    .line 1487
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
