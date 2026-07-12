.class public Lcom/android/server/ContextHubSystemService;
.super Lcom/android/server/SystemService;
.source "ContextHubSystemService.java"


# instance fields
.field public mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

.field public mInit:Ljava/util/concurrent/Future;


# direct methods
.method public static synthetic $r8$lambda$rh2pjqKKW3BPmYQWkE44zlrrbEc(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ContextHubSystemService;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V

    const-string p1, "Init ContextHubSystemService"

    invoke-static {v0, p1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$new$0(Landroid/content/Context;)V
    .locals 2

    .line 39
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService;

    .line 40
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getContextHubWrapper()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubService;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 51
    const-string p1, "ContextHubSystemService"

    const-string/jumbo v0, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    const-string v0, "Wait for ContextHubSystemService init"

    invoke-static {p1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    .line 55
    const-string p1, "contexthub"

    iget-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->onUserChanged()V

    return-void
.end method
