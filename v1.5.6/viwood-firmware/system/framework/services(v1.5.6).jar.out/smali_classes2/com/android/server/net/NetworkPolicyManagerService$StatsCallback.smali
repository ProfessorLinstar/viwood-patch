.class public Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;
.super Landroid/app/usage/NetworkStatsManager$UsageCallback;
.source "NetworkPolicyManagerService.java"


# instance fields
.field public mIsAnyCallbackReceived:Z

.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1471
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/usage/NetworkStatsManager$UsageCallback;-><init>()V

    const/4 p1, 0x0

    .line 1472
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public isAnyCallbackReceived()Z
    .locals 0

    .line 1496
    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    return p0
.end method

.method public onThresholdReached(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 1476
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->mIsAnyCallbackReceived:Z

    .line 1478
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1479
    :try_start_0
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1480
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1481
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1482
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
