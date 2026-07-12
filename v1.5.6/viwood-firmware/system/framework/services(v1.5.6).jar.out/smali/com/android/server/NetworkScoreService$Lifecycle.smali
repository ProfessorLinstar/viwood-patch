.class public final Lcom/android/server/NetworkScoreService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "NetworkScoreService.java"


# instance fields
.field public final mService:Lcom/android/server/NetworkScoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v0, Lcom/android/server/NetworkScoreService;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->systemReady()V

    return-void

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 146
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService;->systemRunning()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 137
    const-string v0, "NetworkScoreService"

    const-string v1, "Registering network_score"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v0, "network_score"

    iget-object v1, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
