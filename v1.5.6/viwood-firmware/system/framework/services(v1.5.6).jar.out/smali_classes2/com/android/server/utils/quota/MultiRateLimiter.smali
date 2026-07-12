.class public Lcom/android/server/utils/quota/MultiRateLimiter;
.super Ljava/lang/Object;
.source "MultiRateLimiter.java"


# static fields
.field public static final EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Lcom/android/server/utils/quota/CountQuotaTracker;

    sput-object v0, Lcom/android/server/utils/quota/MultiRateLimiter;->EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/server/utils/quota/MultiRateLimiter;->EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/utils/quota/CountQuotaTracker;

    iput-object p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/server/utils/quota/MultiRateLimiter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/MultiRateLimiter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public clear(ILjava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/MultiRateLimiter;->clearLocked(ILjava/lang/String;)V

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearLocked(ILjava/lang/String;)V
    .locals 3

    .line 104
    iget-object p0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 108
    invoke-virtual {v2, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->onAppRemovedLocked(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 94
    iget-object p0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 95
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public noteEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEventLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteEventLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 86
    iget-object p0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 87
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
