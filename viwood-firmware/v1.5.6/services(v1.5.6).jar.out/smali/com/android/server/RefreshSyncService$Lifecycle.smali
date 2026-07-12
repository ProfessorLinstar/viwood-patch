.class public Lcom/android/server/RefreshSyncService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "RefreshSyncService.java"


# instance fields
.field public mService:Lcom/android/server/RefreshSyncService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 243
    new-instance v0, Lcom/android/server/RefreshSyncService;

    invoke-direct {v0, p1}, Lcom/android/server/RefreshSyncService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/RefreshSyncService$Lifecycle;->mService:Lcom/android/server/RefreshSyncService;

    .line 244
    const-string p1, "RefreshSyncProvider"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 256
    iget-object p0, p0, Lcom/android/server/RefreshSyncService$Lifecycle;->mService:Lcom/android/server/RefreshSyncService;

    invoke-virtual {p0}, Lcom/android/server/RefreshSyncService;->registerProxyService()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method
