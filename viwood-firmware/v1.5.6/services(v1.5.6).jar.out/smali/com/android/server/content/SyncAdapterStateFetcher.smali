.class public Lcom/android/server/content/SyncAdapterStateFetcher;
.super Ljava/lang/Object;
.source "SyncAdapterStateFetcher.java"


# instance fields
.field public final mBucketCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStandbyBucket(ILjava/lang/String;)I
    .locals 4

    .line 38
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 43
    :cond_0
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 44
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 50
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 49
    invoke-virtual {v1, p2, p1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p1

    .line 51
    iget-object p0, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public isAppActive(I)Z
    .locals 0

    .line 59
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
