.class public Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mContext:Landroid/content/Context;

    .line 855
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 p0, 0x0

    .line 861
    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    return-void
.end method


# virtual methods
.method public getActivateDataSubId()I
    .locals 0

    .line 905
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getDefaultDataSubId()I
    .locals 0

    .line 900
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 3

    .line 865
    const-string v0, "getNetworkTotalBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 867
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 868
    invoke-virtual/range {p0 .. p5}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    .line 869
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr p1, p3

    .line 874
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-wide p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 871
    :try_start_1
    const-string p1, "NetworkPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read network stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const-wide/16 p0, 0x0

    return-wide p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 875
    throw p0
.end method

.method public getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;
    .locals 4

    .line 881
    const-string v0, "getNetworkUidBytes"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 882
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 884
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual/range {p0 .. p5}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    .line 885
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 886
    new-instance p1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 887
    invoke-virtual {p0, p1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 888
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 893
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    .line 891
    :goto_1
    :try_start_1
    const-string p1, "NetworkPolicy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read network stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 894
    throw p0
.end method
