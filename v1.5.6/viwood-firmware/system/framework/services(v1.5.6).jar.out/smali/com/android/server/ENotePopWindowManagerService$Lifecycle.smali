.class public final Lcom/android/server/ENotePopWindowManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ENotePopWindowManagerService.java"


# instance fields
.field public final mService:Lcom/android/server/ENotePopWindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1022
    const-string v0, "ENotePopWindowManagerService"

    const-string v1, "Lifecycle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    new-instance v0, Lcom/android/server/ENotePopWindowManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/ENotePopWindowManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ENotePopWindowManagerService$Lifecycle;->mService:Lcom/android/server/ENotePopWindowManagerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    iget-object p1, p0, Lcom/android/server/ENotePopWindowManagerService$Lifecycle;->mService:Lcom/android/server/ENotePopWindowManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/ENotePopWindowManagerService;->mBootCompleted:Z

    .line 1049
    :try_start_0
    invoke-static {p1}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$minitEnotePopWindowRes(Lcom/android/server/ENotePopWindowManagerService;)V

    .line 1055
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$Lifecycle;->mService:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mshowEinkLayerPopWindow(Lcom/android/server/ENotePopWindowManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1057
    const-string p1, "ENotePopWindowManagerService"

    const-string/jumbo v0, "onBootPhase init pop window failed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1029
    const-string v0, "ENotePopWindowManager"

    iget-object v1, p0, Lcom/android/server/ENotePopWindowManagerService$Lifecycle;->mService:Lcom/android/server/ENotePopWindowManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1030
    iget-object p0, p0, Lcom/android/server/ENotePopWindowManagerService$Lifecycle;->mService:Lcom/android/server/ENotePopWindowManagerService;

    invoke-static {p0}, Lcom/android/server/ENotePopWindowManagerService;->-$$Nest$mstart(Lcom/android/server/ENotePopWindowManagerService;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 0
    return-void
.end method
