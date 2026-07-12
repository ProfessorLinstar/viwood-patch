.class public Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mAppData:Landroid/net/NetworkScorerAppData;

.field public volatile mBound:Z

.field public volatile mConnected:Z

.field public volatile mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;


# direct methods
.method public constructor <init>(Landroid/net/NetworkScorerAppData;)V
    .locals 1

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 953
    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 954
    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 958
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 4

    .line 963
    iget-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    if-nez v0, :cond_1

    .line 964
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.action.RECOMMEND_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v1, 0x4000001

    .line 966
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 969
    iget-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    const-string v2, "NetworkScoreService"

    if-nez v1, :cond_0

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind call failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    .line 973
    :cond_0
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ScoringServiceConnection bound."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ScoringServiceConnection: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 1032
    invoke-virtual {p3}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", bound: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", connected: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1031
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAppData()Landroid/net/NetworkScorerAppData;
    .locals 0

    .line 996
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1006
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    invoke-virtual {p0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .locals 0

    .line 1001
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    return-object p0
.end method

.method public isAlive()Z
    .locals 1

    .line 1011
    iget-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1016
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoringServiceConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkScoreService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 1017
    iput-boolean p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 1018
    invoke-static {p2}, Landroid/net/INetworkRecommendationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkRecommendationProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1023
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoringServiceConnection, disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkScoreService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 1026
    iput-boolean p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    const/4 p1, 0x0

    .line 1027
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 3

    .line 981
    const-string v0, "NetworkScoreService"

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    if-eqz v2, :cond_0

    .line 982
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 983
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 984
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ScoringServiceConnection unbound."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 987
    const-string v2, "Unbind failed."

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 990
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    const/4 p1, 0x0

    .line 991
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    return-void
.end method
