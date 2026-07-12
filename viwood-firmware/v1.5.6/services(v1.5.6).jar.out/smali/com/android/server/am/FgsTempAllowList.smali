.class public Lcom/android/server/am/FgsTempAllowList;
.super Ljava/lang/Object;
.source "FgsTempAllowList.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mMaxSize:I

.field public final mTempAllowList:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    const/16 v0, 0x64

    .line 49
    iput v0, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(IJLjava/lang/Object;)V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 79
    :try_start_0
    const-string p0, "ActivityManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FgsTempAllowList bad duration:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " key: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 88
    iget-object v3, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 89
    iget v4, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    if-le v3, v4, :cond_2

    .line 90
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FgsTempAllowList length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " exceeds maxSize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 93
    iget-object v4, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gez v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    add-long/2addr v1, p2

    if-eqz v3, :cond_3

    .line 100
    iget-object p2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    cmp-long p2, p2, v1

    if-gez p2, :cond_4

    .line 101
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    new-instance p2, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 167
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 169
    iget-object v3, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_0

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(I)Landroid/util/Pair;
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    .line 116
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 121
    iget-object v4, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    .line 122
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 123
    monitor-exit v0

    return-object v1

    .line 125
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    monitor-exit v0

    return-object p0

    .line 126
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAllowed(I)Z
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/am/FgsTempAllowList;->get(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeUid(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 144
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
