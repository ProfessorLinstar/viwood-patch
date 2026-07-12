.class public Lcom/android/server/net/NetworkPolicyManagerService$2;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .locals 0

    .line 0
    const/16 p0, 0xa

    return p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V

    .line 1106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
