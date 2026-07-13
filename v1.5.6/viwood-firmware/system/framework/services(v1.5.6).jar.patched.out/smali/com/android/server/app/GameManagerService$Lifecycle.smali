.class public Lcom/android/server/app/GameManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "GameManagerService.java"


# instance fields
.field public mService:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 978
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 979
    new-instance v0, Lcom/android/server/app/GameManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 993
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService;->onBootCompleted()V

    .line 994
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mregisterStatsCallbacks(Lcom/android/server/app/GameManagerService;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 984
    const-string v0, "game"

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 985
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mpublishLocalService(Lcom/android/server/app/GameManagerService;)V

    .line 986
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mregisterDeviceConfigListener(Lcom/android/server/app/GameManagerService;)V

    .line 987
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mregisterPackageReceiver(Lcom/android/server/app/GameManagerService;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/app/GameManagerService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;Ljava/io/File;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1011
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1016
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1006
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method
