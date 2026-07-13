.class public Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;
.super Landroid/telephony/TelephonyCallback;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# instance fields
.field public mActiveDataSubId:I

.field public mDefaultDataSubId:I

.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveDataSubId(Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mActiveDataSubId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultDataSubId(Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mDefaultDataSubId:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 1

    .line 1439
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 1452
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmDeps(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getDefaultDataSubId()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mDefaultDataSubId:I

    .line 1453
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmDeps(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getActivateDataSubId()I

    move-result p1

    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mActiveDataSubId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 0

    .line 1458
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mActiveDataSubId:I

    .line 1459
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmDeps(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->getDefaultDataSubId()I

    move-result p1

    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->mDefaultDataSubId:I

    .line 1460
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1461
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1462
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
