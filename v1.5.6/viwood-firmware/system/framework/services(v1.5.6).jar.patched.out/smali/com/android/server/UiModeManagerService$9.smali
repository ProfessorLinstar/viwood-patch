.class public Lcom/android/server/UiModeManagerService$9;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmVrHeadset(Lcom/android/server/UiModeManagerService;Z)V

    .line 388
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 391
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
