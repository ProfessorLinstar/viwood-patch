.class public abstract Lcom/android/server/notification/RankingReconsideration;
.super Ljava/lang/Object;
.source "RankingReconsideration.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mDelay:J

.field public mKey:Ljava/lang/String;

.field public mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p2, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    .line 43
    iput-object p1, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    return-void
.end method


# virtual methods
.method public abstract applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 1

    .line 52
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 55
    invoke-virtual {p0}, Lcom/android/server/notification/RankingReconsideration;->work()V

    const/4 v0, 0x2

    .line 57
    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public abstract work()V
.end method
