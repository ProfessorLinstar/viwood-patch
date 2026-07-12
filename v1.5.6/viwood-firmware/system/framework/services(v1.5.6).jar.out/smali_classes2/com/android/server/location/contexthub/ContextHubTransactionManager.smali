.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager;
.super Ljava/lang/Object;
.source "ContextHubTransactionManager.java"


# static fields
.field public static final RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field public final mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mReliableMessageLock:Ljava/lang/Object;

.field public final mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

.field public mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mReliableMessageTransactionMap:Ljava/util/Map;

.field public mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mTransactionLock:Ljava/lang/Object;

.field public final mTransactionQueue:Ljava/util/ArrayDeque;

.field public final mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

.field public final mTransactionRecordLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$-_A7-jtJBtX07WeEVw72q-7mQ3A(ILcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 2

    .line 593
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected transaction: expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", received "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 594
    const-string p1, "ContextHubTransactionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$VCtIJd9AwzrlEFOMQPzWpR6W608(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 1

    .line 689
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$aEW6drgJ5EWH2teMhDONsGv4Eqw(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$startNextTransaction$5(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$muHpBO48upzzZqSvwsT2GaQA1D0(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$processMessageTransactions$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$tjjTCHBW_xG1agdQ2-hBcJtOquw(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$addTransaction$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wnSFTZC-Cn5wbUL1uekoJmeZFPI(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$onMessageDeliveryResponse$3()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->toStatsTransactionResult(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x1

    .line 62
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v1, 0x3

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v0, 0xfa

    .line 73
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    const-wide/16 v0, 0x3e8

    .line 75
    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V
    .locals 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x3fffffff    # 1.9999999f

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 112
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 119
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 162
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 163
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-void
.end method

.method private completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V
    .locals 2

    .line 921
    monitor-enter p1

    .line 922
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 923
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 924
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    const-string p0, "ContextHubTransactionManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully completed reliable message transaction with message sequence number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and result = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 924
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$addTransaction$0()V
    .locals 0

    .line 558
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method private processMessageTransactions()V
    .locals 17

    move-object/from16 v0, p0

    .line 852
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 857
    :try_start_0
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 858
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    .line 859
    iput-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 862
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v8, v6

    .line 867
    :cond_1
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 868
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v10, v3

    .line 869
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 870
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 871
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v12

    .line 872
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNumCompletedStartCalls()I

    move-result v14

    if-nez v14, :cond_2

    .line 873
    iget-object v15, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    .line 874
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    .line 878
    :cond_2
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNextRetryTime()J

    move-result-wide v12

    .line 879
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v15

    cmp-long v15, v15, v4

    const/16 v16, 0x1

    if-gtz v15, :cond_3

    move/from16 v15, v16

    goto :goto_2

    :cond_3
    move v15, v3

    :goto_2
    cmp-long v12, v12, v4

    if-gtz v12, :cond_4

    const/4 v13, 0x3

    if-le v14, v13, :cond_4

    move/from16 v13, v16

    goto :goto_3

    :cond_4
    move v13, v3

    :goto_3
    if-nez v15, :cond_8

    if-eqz v13, :cond_5

    goto :goto_4

    :cond_5
    if-lez v12, :cond_6

    if-gtz v14, :cond_7

    .line 890
    :cond_6
    invoke-direct {v0, v11, v4, v5}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V

    .line 894
    :cond_7
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNextRetryTime()J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 896
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1

    :cond_8
    :goto_4
    const/4 v10, 0x6

    .line 885
    invoke-virtual {v0, v11, v10, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    move/from16 v10, v16

    goto :goto_1

    :cond_9
    if-nez v10, :cond_1

    cmp-long v2, v8, v6

    if-gez v2, :cond_a

    .line 902
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    .line 906
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v8, v4

    sget-object v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    .line 907
    invoke-virtual {v4}, Ljava/time/Duration;->toNanos()J

    move-result-wide v4

    .line 905
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 903
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 910
    :cond_a
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeTransactionAndStartNext()V
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->cancelTimeoutFuture()V

    .line 769
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 770
    monitor-enter v0

    .line 771
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 772
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 772
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private startMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V
    .locals 5

    .line 987
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNumCompletedStartCalls()I

    move-result v0

    .line 988
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v1

    .line 989
    const-string v2, "ContextHubTransactionManager"

    if-nez v1, :cond_1

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 993
    const-string/jumbo v3, "started"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "retried"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reliable message transaction with message sequence number = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 990
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 997
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not start reliable message transaction with message sequence number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_1
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setNextRetryTime(J)V

    .line 1007
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1008
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setTimeoutTime(J)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1010
    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setNumCompletedStartCalls(I)V

    .line 1011
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startNextTransaction()V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 802
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v1

    if-nez v1, :cond_0

    .line 805
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 821
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 824
    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 826
    const-string v2, "ContextHubTransactionManager"

    const-string v3, "Error when schedule a timer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 829
    :cond_0
    monitor-enter v0

    .line 831
    :try_start_1
    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v2

    .line 830
    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 832
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 833
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    :goto_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 833
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 537
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 541
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 544
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_2

    move v2, v3

    :cond_2
    const/16 v1, 0x2710

    if-nez v0, :cond_6

    if-eqz v2, :cond_3

    goto :goto_3

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-ge v2, v1, :cond_5

    .line 568
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 570
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 572
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    .line 564
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Transaction queue is full (capacity = 10000)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 572
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 547
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 548
    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v1, :cond_7

    .line 555
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 556
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 555
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 558
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 549
    :cond_7
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reliable message transaction queue is full (capacity = 10000)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 557
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 537
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final cancelTimeoutFuture()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 783
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 784
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 9

    .line 358
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 359
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x3

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 9

    .line 315
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 316
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x2

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 10

    .line 179
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 182
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v1, p0

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createMessageTransaction(SILandroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 11

    .line 404
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 405
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 408
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const/4 v3, 0x5

    move v8, p1

    move-object v1, p0

    move v6, p1

    move v9, p2

    move-object v7, p3

    move-object v10, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/location/NanoAppMessage;SILandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 7

    .line 489
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 490
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x4

    move-object v1, p0

    move v5, p1

    move-object v6, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createSessionMessageTransaction(Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/contexthub/Message;Ljava/lang/String;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 11

    .line 449
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 450
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 453
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const/4 v3, 0x7

    move v9, p2

    move-object v1, p0

    move-object v8, p1

    move v6, p2

    move-object v7, p3

    move-object v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/contexthub/Message;Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 11

    .line 251
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 252
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x1

    move-wide v8, p2

    move-object v1, p0

    move v7, p1

    move-wide v4, p2

    move-object v10, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public final getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    .line 742
    invoke-interface {p1, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;->acceptTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->cancelTimeoutFuture()V

    .line 747
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 748
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    .line 751
    :cond_1
    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 743
    monitor-exit v0

    return-object p0

    .line 751
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onMessageDeliveryResponse$3()V
    .locals 0

    .line 677
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method public final synthetic lambda$processMessageTransactions$6()V
    .locals 0

    .line 904
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method public final synthetic lambda$startNextTransaction$5(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 3

    .line 807
    monitor-enter p1

    .line 808
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const-string v0, "ContextHubTransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 810
    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 812
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 814
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 818
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 814
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public numReliableMessageTransactionPending()I
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onHubReset()V
    .locals 4

    .line 707
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 709
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 710
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    const/4 v3, 0x5

    .line 711
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 716
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 720
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-nez v0, :cond_1

    .line 722
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 725
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 726
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 716
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onMessageDeliveryResponse(IZ)V
    .locals 3

    .line 658
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-nez v1, :cond_0

    .line 661
    const-string p0, "ContextHubTransactionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find reliable message transaction with message sequence number = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 669
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 670
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 672
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    .line 677
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 670
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onQueryResponse(Ljava/util/List;)V
    .locals 1

    .line 687
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda3;-><init>()V

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p0

    if-nez p0, :cond_0

    .line 693
    const-string p0, "ContextHubTransactionManager"

    const-string p1, "Received unexpected query response"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 697
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    .line 698
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onQueryResponse(ILjava/util/List;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 700
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTransactionResponse(IZ)V
    .locals 1

    .line 591
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 604
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p0

    if-nez p0, :cond_0

    .line 606
    const-string p0, "ContextHubTransactionManager"

    const-string p1, "Received unexpected transaction response"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 610
    :cond_0
    monitor-enter p0

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 611
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 615
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 616
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V
    .locals 0

    .line 947
    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V

    .line 948
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    return-void
.end method

.method public final removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 958
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V

    return-void
.end method

.method public final removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V
    .locals 1

    if-nez p2, :cond_0

    .line 972
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 974
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 976
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toStatsTransactionResult(I)I
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1051
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1052
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 1053
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 1059
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1064
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 1065
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1071
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1074
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1075
    :try_start_2
    const-string v2, "Transaction History:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1077
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1078
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1079
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    .line 1081
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1083
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1081
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 1071
    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 1059
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
