.class public Lcom/android/server/am/BroadcastQueueImpl;
.super Lcom/android/server/am/BroadcastQueue;
.source "BroadcastQueueImpl.java"


# static fields
.field public static final BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

.field public static final QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;


# instance fields
.field public final mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

.field public final mBgConstants:Lcom/android/server/am/BroadcastConstants;

.field final mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field final mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

.field public mCheckPendingColdStartQueued:Z

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public final mFgConstants:Lcom/android/server/am/BroadcastConstants;

.field public mLastTestFailureTime:J

.field public final mLocalCallback:Landroid/os/Handler$Callback;

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mProcessQueues:Landroid/util/SparseArray;

.field public final mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

.field public mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mUidForeground:Landroid/util/SparseBooleanArray;

.field public final mWaitingFor:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$5W-hHnqVpPple_94bUXhaN2NlZA(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$11(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5h92AEV1NSkQ9xrbiDDH3YtJvPw(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1671
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1672
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6dhuOD7nHAKmzmF-YtZCzIaaioE(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->addPrioritizeEarliestRequest()Z

    return-void
.end method

.method public static synthetic $r8$lambda$7megXC57u3j4fgugQAJ8O6Hxy-0(JLcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 1936
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->forceDelayBroadcastDelivery(J)Z

    return-void
.end method

.method public static synthetic $r8$lambda$B7DPZVQCD71h5eWktQg-gufcCLo(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/server/am/BroadcastFilter;

    return p0
.end method

.method public static synthetic $r8$lambda$G5yeZnyV_OrOuYIyEjxKn1jSFeo(JLcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1859
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isBeyondBarrierLocked(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GQq4Cu507ce-EdaTPni0au2KE4E(Lcom/android/server/am/BroadcastQueueImpl;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForIdle$17(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IhXQ9STpE_zBSFz-MTE7VUeShc4(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isIdle()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N8FQ9gSdybdav0lGQR63n9n6UBw(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$O9ZCSsC8NNR3uQ_PQ64t7iM4QCg(Ljava/lang/String;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1935
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QUGuWq_cpO4s-MkX6cKJunNXYYM(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$12(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VjnSzxUzNht9sNkaPuD9eYr6_7Q(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1678
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$axmJspVe-xY9KO3JBJy4HjLi1-4(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForDispatched$21(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eNs2xE55__Zz9ql8SQ7FQputV6s(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForBarrier$19(JLjava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fBmeMgpkodO5VRNqVXIloKaGTzs(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$10(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdz7Xri5C43PjH9UdG6mpy7Tifo(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$jiOOfL7yG84837SDk7PqX3CCMUM(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$applyDeliveryGroupPolicy$2(Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbYnaL9l3-rmMN3J3ehz4uveSKE(Landroid/content/Intent;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1870
    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatched(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l-TmgsQ9D6SPUK-D5ivvEy60BZk(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mXDgb9ORy-OA2qOk3ggoYiIxf9I(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$applyDeliveryGroupPolicy$3(Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tClXJ7lHT7SDttp6mit80Rp9sTM(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1660
    iget-object p2, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1661
    instance-of p3, p2, Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_0

    .line 1662
    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1663
    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1664
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$w82T0zX7YeN5b-3VbDEttgjJSN8(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 0

    .line 1892
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->removePrioritizeEarliestRequest()Z

    return-void
.end method

.method public static synthetic $r8$lambda$wkwVOsGQRcdT2tutL53fgINKVfE(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 0

    .line 1653
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$y_poFiYvDQ4rHlB3WcUbbQSlzvs(Landroid/util/Pair;)Z
    .locals 1

    .line 1920
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$zNq0Etd4wqaIsfgSOsSA6kCXcq4(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$13(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalHandler(Lcom/android/server/am/BroadcastQueueImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1698
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    .line 1700
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda16;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;)V
    .locals 7

    .line 143
    new-instance v5, Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-direct {v5, p1}, Lcom/android/server/am/BroadcastSkipPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    new-instance v6, Lcom/android/server/am/BroadcastHistory;

    invoke-direct {v6, p3}, Lcom/android/server/am/BroadcastHistory;-><init>(Lcom/android/server/am/BroadcastConstants;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueueImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    .line 174
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 224
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 231
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 238
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 258
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 296
    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalCallback:Landroid/os/Handler$Callback;

    .line 1707
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda18;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1717
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda19;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1726
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1733
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda21;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1740
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

    .line 153
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 154
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 155
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 157
    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    .line 161
    invoke-virtual {p3}, Lcom/android/server/am/BroadcastConstants;->getMaxRunningQueues()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 163
    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-direct {p1, p0, p4}, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    return-void
.end method


# virtual methods
.method public final applyDeliveryGroupPolicy(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5

    .line 896
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->shouldIgnoreDeliveryGroupPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 899
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 925
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown delivery group policy: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    .line 910
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    goto :goto_1

    .line 913
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupExtrasMerger()Landroid/os/BundleMerger;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 919
    :cond_3
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;)V

    goto :goto_0

    .line 906
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 928
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRecordsLookupCache()Landroid/util/ArrayMap;

    move-result-object v0

    .line 929
    sget-object v3, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v4, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 954
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 955
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public assertHealthLocked()V
    .locals 10

    .line 1978
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1980
    iget-object v4, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v4, v1, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    const-string/jumbo v5, "runnableAtPrev"

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1981
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRunnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    if-eqz v1, :cond_2

    .line 1983
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRunnableAt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1987
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    .line 1991
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v1, v0

    move v4, v3

    :goto_3
    if-ge v4, v1, :cond_5

    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    .line 1993
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isActive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1998
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_a

    .line 1999
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOrphaned "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 2004
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v0, v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with queue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";\n mRunningColdStart.app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v5, v5, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 2006
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";\n queue.app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 2007
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2004
    invoke-static {v1, v0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 2009
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty cold start queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 2012
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessStartInitiationTimeoutExpected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2014
    const-string v1, "Process start timeout expected for app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2016
    const-string v1, " in queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2018
    const-string v1, "; startUpTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 2020
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getProcessStartInitiatedTimestampMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_9

    .line 2021
    const-string v1, "<none>"

    goto :goto_7

    .line 2022
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 2021
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    const-string v1, ";\n app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 2030
    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 2031
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_9
    if-eqz v0, :cond_b

    .line 2033
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked()V

    .line 2034
    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_9

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    return-void
.end method

.method public final cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    .line 1313
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {v0}, Lcom/android/server/utils/AnrTimer;->serviceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final checkAndRemoveWaitingFor()V
    .locals 1

    .line 1918
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public final checkHealth()V
    .locals 1

    .line 1946
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1947
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkHealthLocked()V

    .line 1948
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final checkHealthLocked()V
    .locals 4

    .line 1954
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->assertHealthLocked()V

    .line 1957
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1963
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1964
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->dumpToDropBoxLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final checkPendingColdStartValidityLocked()V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isPendingColdStartValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    if-nez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v1, v1, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 633
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    :cond_1
    :goto_0
    return-void

    .line 636
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearInvalidPendingColdStart()V

    return-void
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;I)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    .line 1652
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;-><init>(I)V

    if-eqz p2, :cond_0

    .line 1659
    new-instance p3, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1670
    :cond_0
    new-instance p3, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1677
    :cond_1
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda6;-><init>(I)V

    .line 1680
    sget-object p1, Lcom/android/server/am/BroadcastQueueImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

    .line 1682
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->cleanupUserStateLocked(Landroid/util/SparseBooleanArray;I)V

    move-object p3, p1

    .line 1684
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p0

    return p0
.end method

.method public final cleanupUserStateLocked(Landroid/util/SparseBooleanArray;I)V
    .locals 1

    .line 1690
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 1691
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1692
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1693
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final clearInvalidPendingColdStart()V
    .locals 3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing invalid pending cold start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->wasActiveBroadcastReEnqueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x5

    const-string v2, "invalid start with re-enqueued broadcast"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 614
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearRunningColdStart()V

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 616
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final clearRunningColdStart()V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 764
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 768
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z
    .locals 0

    .line 973
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    .line 975
    invoke-virtual {p3, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 977
    :cond_0
    iget-object p0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsAllReceivers(Ljava/util/List;)Z

    move-result p0

    .line 978
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p0
.end method

.method public final deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 2

    .line 1336
    const-string v0, "deliveryTimeout"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1337
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1338
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1340
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 1339
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final deliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 2

    const/4 v0, 0x3

    .line 1345
    const-string v1, "deliveryTimeoutLocked"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public final deliveryTimeoutSoftLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V
    .locals 10

    .line 1323
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCpuDelayTime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    int-to-long v8, p2

    .line 1328
    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    .line 1329
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    return-void

    .line 1331
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public final demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4

    .line 1531
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1532
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring demoteFromRunning; no active broadcast for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    .line 1536
    :cond_0
    const-string v0, "demoteFromRunning"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1538
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v1, p1, :cond_1

    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRunningColdStart has not been cleared; mRunningColdStart.app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , queue.app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1547
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveIdle()V

    .line 1548
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v1

    .line 1551
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 1552
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1557
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStoppedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1558
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 1

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " running"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchReceivers(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 1152
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1153
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v5, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1157
    invoke-virtual/range {p2 .. p3}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v15

    .line 1158
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v0, :cond_1

    if-nez v15, :cond_1

    .line 1159
    invoke-virtual {v2, v10}, Lcom/android/server/am/BroadcastProcessQueue;->setTimeoutScheduled(Z)V

    .line 1160
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v7, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    goto :goto_0

    .line 1161
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v7, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    :goto_0
    long-to-int v0, v7

    .line 1162
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/BroadcastQueueImpl;->startDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V

    goto :goto_1

    .line 1164
    :cond_1
    invoke-virtual {v2, v9}, Lcom/android/server/am/BroadcastProcessQueue;->setTimeoutScheduled(Z)V

    .line 1167
    :goto_1
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_3

    .line 1168
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 1170
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    goto :goto_2

    .line 1171
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 1172
    :goto_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1173
    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1174
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1175
    iget-object v8, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    .line 1176
    invoke-static {v8, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1175
    invoke-virtual {v8, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1178
    :cond_3
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_5

    .line 1179
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_4

    .line 1183
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1185
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v11

    .line 1183
    invoke-virtual {v0, v3, v7, v11, v12}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_3

    .line 1187
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1188
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v18

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1189
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v20

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v21

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1190
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v22

    iget v8, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v16, v0

    move/from16 v17, v7

    move/from16 v23, v8

    .line 1187
    invoke-virtual/range {v16 .. v23}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    .line 1194
    :cond_5
    :goto_3
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1195
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to warm "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    :cond_7
    const/4 v7, 0x4

    .line 1197
    const-string/jumbo v8, "scheduleReceiverWarmLocked"

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1200
    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v8

    .line 1201
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 1204
    :try_start_0
    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_8

    .line 1205
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v11, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v13, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1206
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    iget v13, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v21, 0x1

    move-object/from16 v16, v0

    move/from16 v17, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    .line 1205
    invoke-virtual/range {v16 .. v21}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    goto :goto_4

    :catch_0
    move-exception v0

    move/from16 v20, v9

    move/from16 v21, v10

    goto/16 :goto_b

    .line 1208
    :cond_8
    :goto_4
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    .line 1209
    instance-of v0, v6, Lcom/android/server/am/BroadcastFilter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eqz v0, :cond_c

    .line 1210
    :try_start_1
    move-object v0, v6

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/am/BroadcastQueueImpl;->notifyScheduleRegisteredReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)V

    .line 1211
    move-object v0, v6

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move v13, v10

    :try_start_2
    iget v10, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object v14, v11

    iget-object v11, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move/from16 v16, v12

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    move/from16 v17, v13

    :try_start_3
    iget-boolean v13, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v18, v14

    iget-boolean v14, v4, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    iget v9, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1215
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v5

    move-object/from16 v20, v0

    .line 1216
    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_9

    move/from16 v21, v0

    :try_start_5
    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v24, v18

    move/from16 v18, v0

    move-object/from16 v0, v24

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v21, v17

    const/16 v20, 0x0

    goto/16 :goto_b

    :cond_9
    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v18, v16

    :goto_5
    if-eqz v21, :cond_a

    .line 1217
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_a
    move/from16 v16, v17

    move/from16 v17, v5

    move/from16 v5, v16

    move-object/from16 v19, v0

    move/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v20

    const/16 v20, 0x0

    .line 1211
    :try_start_6
    invoke-interface/range {v7 .. v19}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    if-eqz v15, :cond_b

    .line 1221
    const-string v0, "assuming delivered"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v20

    :catch_2
    move-exception v0

    :goto_6
    move/from16 v21, v5

    goto/16 :goto_b

    :cond_b
    move/from16 v21, v5

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move/from16 v5, v17

    const/16 v20, 0x0

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v20, v9

    move/from16 v5, v17

    goto :goto_6

    :catch_5
    move-exception v0

    move/from16 v20, v9

    move v5, v13

    goto :goto_6

    :catch_6
    move-exception v0

    move/from16 v20, v9

    move v5, v10

    goto :goto_6

    :cond_c
    move/from16 v20, v9

    move v5, v10

    move-object v0, v11

    move/from16 v16, v12

    .line 1226
    move-object v9, v6

    check-cast v9, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v3, v4, v9}, Lcom/android/server/am/BroadcastQueueImpl;->notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V

    .line 1227
    move-object v9, v6

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v11, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v13, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v14, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v10, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1230
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v17

    .line 1231
    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v0, :cond_d

    move/from16 v21, v5

    :try_start_7
    iget v5, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v16, v5

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_b

    :cond_d
    move/from16 v21, v5

    :goto_7
    if-eqz v0, :cond_e

    .line 1232
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_8
    move/from16 v18, v16

    move/from16 v16, v10

    goto :goto_9

    :cond_e
    const/16 v19, 0x0

    goto :goto_8

    :goto_9
    const/4 v10, 0x0

    .line 1227
    invoke-interface/range {v7 .. v19}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_a
    return v21

    .line 1236
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to schedule "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " via "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1238
    invoke-static {v4}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    const/16 v4, 0xd

    const/16 v5, 0x1a

    .line 1239
    const-string v7, "Can\'t deliver broadcast"

    move/from16 v13, v21

    invoke-virtual {v3, v7, v4, v5, v13}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1243
    instance-of v3, v6, Landroid/content/pm/ResolveInfo;

    if-nez v3, :cond_f

    .line 1247
    const-string/jumbo v0, "remote app"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v20

    .line 1244
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1245
    new-instance v1, Lcom/android/server/am/BroadcastRetryException;

    invoke-direct {v1, v0}, Lcom/android/server/am/BroadcastRetryException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_10
    move/from16 v20, v9

    const/4 v3, 0x5

    .line 1252
    const-string/jumbo v0, "missing IApplicationThread"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v20
.end method

.method public final dumpBroadcastsWithIgnoredPolicies(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 2546
    const-string v0, "Broadcasts with ignored delivery group policies:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2548
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->dumpDeliveryGroupPolicyIgnoredActions(Landroid/util/IndentingPrintWriter;)V

    .line 2549
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2550
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2459
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2460
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2461
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpForegroundUids(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 2554
    const-string v0, "Foreground UIDs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2556
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2557
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2558
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 0
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    move p1, p6

    .line 2472
    new-instance p6, Landroid/util/IndentingPrintWriter;

    invoke-direct {p6, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2473
    invoke-virtual {p6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2474
    invoke-virtual {p6}, Landroid/util/IndentingPrintWriter;->println()V

    if-nez p9, :cond_0

    .line 2477
    invoke-virtual {p0, p6, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->dumpProcessQueues(Landroid/util/IndentingPrintWriter;J)V

    .line 2478
    invoke-virtual {p0, p6}, Lcom/android/server/am/BroadcastQueueImpl;->dumpBroadcastsWithIgnoredPolicies(Landroid/util/IndentingPrintWriter;)V

    .line 2479
    invoke-virtual {p0, p6}, Lcom/android/server/am/BroadcastQueueImpl;->dumpForegroundUids(Landroid/util/IndentingPrintWriter;)V

    if-eqz p5, :cond_0

    .line 2482
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {p2, p6}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2483
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {p2, p6}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_0
    if-eqz p1, :cond_1

    move p10, p7

    move-object p7, p8

    move-object p8, p9

    .line 2488
    new-instance p9, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p9, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2489
    iget-object p5, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual/range {p5 .. p10}, Lcom/android/server/am/BroadcastHistory;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;Z)Z

    move-result p0

    return p0

    :cond_1
    move p1, p10

    return p1
.end method

.method public final dumpProcessQueues(Landroid/util/IndentingPrintWriter;J)V
    .locals 5

    .line 2496
    const-string/jumbo v0, "\ud83d\udccb Per-process queues:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 2498
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2499
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v2, :cond_0

    .line 2501
    invoke-virtual {v2, p2, p3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->dumpLocked(JLandroid/util/IndentingPrintWriter;)V

    .line 2502
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2505
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2506
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2508
    const-string/jumbo v1, "\ud83e\uddcd Runnable:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2510
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const-string v2, "(none)"

    if-nez v1, :cond_2

    .line 2511
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 2515
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v3

    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 v3, 0x20

    .line 2516
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 2517
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAtReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 2519
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2521
    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_2

    .line 2524
    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2525
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2527
    const-string/jumbo p2, "\ud83c\udfc3 Running:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2528
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2529
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length p3, p2

    :goto_4
    if-ge v0, p3, :cond_6

    aget-object v1, p2, v0

    if-eqz v1, :cond_4

    .line 2530
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v1, v3, :cond_4

    .line 2531
    const-string/jumbo v3, "\ud83e\udd76 "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 2533
    :cond_4
    const-string/jumbo v3, "\u3000 "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_5
    if-eqz v1, :cond_5

    .line 2536
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2538
    :cond_5
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2541
    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2542
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 13

    .line 809
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueuing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " receivers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 813
    :cond_1
    const-string v0, "enqueueBroadcast"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 814
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/am/BroadcastRecord;->applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V

    .line 816
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->applyDeliveryGroupPolicy(Lcom/android/server/am/BroadcastRecord;)V

    .line 818
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 821
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastHistory;->onBroadcastEnqueuedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 823
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_2

    .line 825
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 827
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 828
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_3

    .line 830
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 832
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/server/am/BroadcastRecord;->setMatchingRecordsCache(Landroid/util/ArrayMap;)V

    const/4 v4, 0x0

    move v9, v4

    .line 835
    :goto_0
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_6

    .line 836
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 838
    invoke-static {v10}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v6

    .line 837
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/BroadcastQueueImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v5

    .line 843
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v6, p1, v10}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipAtEnqueueMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 846
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skipped by policy at enqueue: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x2

    move-object v5, p0

    move-object v8, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v8, p1

    .line 852
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v5, v8, v9, p1}, Lcom/android/server/am/BroadcastProcessQueue;->enqueueOrReplaceBroadcast(Lcom/android/server/am/BroadcastRecord;ILcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 855
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 858
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    const/4 p1, 0x1

    move v4, p1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object p1, v8

    goto :goto_0

    :cond_6
    move-object v8, p1

    .line 865
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->skipAndCancelReplacedBroadcasts(Landroid/util/ArraySet;)V

    .line 866
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 867
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 868
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 869
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastRecord;->clearMatchingRecordsCache()V

    .line 870
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 873
    iget-object p1, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    if-nez v4, :cond_8

    .line 874
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 875
    invoke-virtual {p0, v8}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    .line 878
    :cond_8
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final enqueueUpdateRunningList()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 10

    .line 642
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 644
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->wasActiveBroadcastReEnqueued()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 647
    const-string/jumbo v1, "re-enqueued broadcast delivery failed"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return-void

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    .line 651
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v6

    .line 652
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "reEnqueueActiveBroadcast"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 654
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    return-void
.end method

.method public final finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V
    .locals 9

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring finishReceiverActiveLocked; no active broadcast for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    .line 1461
    :cond_0
    const-string v0, "finishReceiver"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1462
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1463
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    .line 1464
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v5

    .line 1465
    iget-object v1, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move-object v8, p3

    .line 1467
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    const/4 p0, 0x3

    if-ne v7, p0, :cond_2

    .line 1470
    iget p0, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v3, :cond_1

    .line 1471
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1472
    iget-object p0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {p0, v2}, Lcom/android/server/utils/AnrTimer;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;

    move-result-object p0

    .line 1473
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1474
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1475
    iget-object p3, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {p3, p1, p2}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p1

    .line 1476
    invoke-virtual {p1, p0}, Lcom/android/internal/os/TimeoutRecord;->setExpiredTimer(Ljava/lang/AutoCloseable;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    .line 1477
    iget-object p1, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    goto :goto_0

    .line 1479
    :cond_1
    iget-object p0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {p0, v2}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1481
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->timeoutScheduled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1482
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1486
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueueImpl;->checkAndRemoveWaitingFor()V

    .line 1488
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 9

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p1

    const/4 p6, 0x0

    if-eqz p1, :cond_5

    .line 1374
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1379
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    .line 1380
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v0

    .line 1381
    iget-boolean v1, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_1

    .line 1382
    iput p2, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 1383
    iput-object p3, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1384
    iput-object p4, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 1385
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isNoAbort()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1386
    iput-boolean p5, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 1393
    :cond_1
    const-string/jumbo p2, "remote app"

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1398
    iget-boolean p2, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-eqz p2, :cond_2

    add-int/2addr v0, p3

    move v5, v0

    .line 1399
    :goto_0
    iget-object p2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v5, p2, :cond_2

    .line 1400
    iget-object p2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "resultAbort"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v1, p0

    .line 1405
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1406
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return p3

    .line 1411
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 1413
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1414
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_4
    return p6

    .line 1418
    :catch_0
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1419
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return p3

    .line 1375
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring finishReceiverLocked; no active broadcast for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return p6
.end method

.method public final forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 5

    .line 1777
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 1778
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v3, :cond_1

    .line 1780
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1781
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1783
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v2, v1

    .line 1787
    :cond_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_3
    return v2
.end method

.method public final forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z
    .locals 5

    .line 1801
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 1802
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v3, :cond_1

    .line 1804
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1805
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1806
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v2, v1

    .line 1809
    :cond_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1813
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_3
    return v2
.end method

.method public forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .locals 2

    .line 1933
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1934
    :try_start_0
    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;-><init>(J)V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1937
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I
    .locals 0

    .line 1638
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    return p0
.end method

.method public getOrCreateProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    .line 2329
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 3

    .line 2336
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz v0, :cond_2

    .line 2338
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2340
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 2346
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;-><init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V

    .line 2347
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    if-nez v0, :cond_3

    .line 2350
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1

    .line 2352
    :cond_3
    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object v1
.end method

.method public getPreferredSchedulingGroupLocked(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 783
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getPreferredSchedulingGroupLocked()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method public getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    .line 2360
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 0

    .line 2366
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz p0, :cond_1

    .line 2368
    iget-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 2371
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecordsLookupCache()Landroid/util/ArrayMap;
    .locals 1

    .line 961
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 962
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    .line 964
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I
    .locals 3

    const/4 v0, 0x0

    .line 390
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 391
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getRunningSize()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 364
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 365
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getRunningUrgentCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 377
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 2097
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2098
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2099
    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 2102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2103
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->enqueueOutgoingBroadcasts(Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2105
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->refreshProcessQueueLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 2106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2100
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2106
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z
    .locals 1

    .line 1859
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;-><init>(J)V

    const-string p1, "barrier"

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 1870
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda24;-><init>(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isIdleLocked()Z
    .locals 1

    .line 1842
    sget-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isIdleLocked(Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1847
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "idle"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public final isPendingColdStartValid()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->hasProcessStartInitiationTimedout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1

    .line 597
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 600
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result p0

    return p0
.end method

.method public isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2075
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    .line 2076
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v0

    .line 2077
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1
.end method

.method public final synthetic lambda$applyDeliveryGroupPolicy$2(Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1

    .line 920
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->mergeExtras(Landroid/content/Intent;Landroid/os/BundleMerger;)V

    .line 921
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-interface {p0, p3, p4}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final synthetic lambda$applyDeliveryGroupPolicy$3(Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 3

    .line 931
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 935
    :cond_0
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v2, p3, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v0, v2, :cond_6

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v2, p3, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v0, v2, :cond_6

    .line 937
    invoke-virtual {p1, p3}, Lcom/android/server/am/BroadcastRecord;->matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 944
    :cond_1
    iget-boolean v0, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_2

    .line 945
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    move-result p0

    return p0

    .line 946
    :cond_2
    iget-boolean v0, p3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-nez v0, :cond_4

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 951
    :cond_3
    iget-object p0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 947
    :cond_4
    :goto_0
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 948
    iget-object p0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 949
    :cond_5
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v1
.end method

.method public final synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 4

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 305
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastProcessQueue;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeoutSoftLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V

    .line 307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    .line 308
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 341
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 343
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 345
    :try_start_2
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 349
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->refreshProcessQueuesLocked(I)V

    .line 350
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 337
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V

    return v2

    .line 329
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 331
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkPendingColdStartValidityLocked()V

    .line 333
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 325
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkHealth()V

    return v2

    .line 315
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 316
    :try_start_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 317
    iget-object p1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 318
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 320
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 321
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 311
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V

    return v2

    .line 299
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunningList()V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic lambda$new$10(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 9

    .line 1709
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "mBroadcastConsumerSkip"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$new$11(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 9

    .line 1719
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "mBroadcastConsumerSkipAndCanceled"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1721
    iput p0, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    const/4 p0, 0x0

    .line 1722
    iput-object p0, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1723
    iput-object p0, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    return-void
.end method

.method public final synthetic lambda$new$12(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 9

    .line 1729
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x6

    const-string/jumbo v8, "mBroadcastConsumerDeferApply"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$new$13(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 9

    .line 1736
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "mBroadcastConsumerDeferClear"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$waitForBarrier$19(JLjava/io/PrintWriter;)Z
    .locals 0

    .line 1888
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$waitForDispatched$21(Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .locals 0

    .line 1900
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$waitForIdle$17(Ljava/io/PrintWriter;)Z
    .locals 0

    .line 1877
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public final logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V
    .locals 11

    .line 2406
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 2407
    :goto_0
    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v1, p0, :cond_1

    goto/16 :goto_4

    .line 2410
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2412
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v4, v2

    goto :goto_2

    .line 2414
    :cond_2
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_2
    if-eqz v4, :cond_7

    .line 2418
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v5, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v5

    long-to-int v5, v2

    .line 2419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v6

    long-to-int v6, v2

    .line 2420
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iget-wide v7, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v2, v7

    long-to-int v7, v2

    .line 2422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v2, v8

    long-to-int v8, v2

    .line 2427
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 2430
    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v2, v9}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_5

    .line 2432
    iget-object v0, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v0

    :cond_5
    move v10, v0

    .line 2434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BOOT_COMPLETED_BROADCAST_COMPLETION_LATENCY_REPORTED action:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dispatchLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " completeLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dispatchRealLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " completeRealLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " receiversSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " userId:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " userType:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    .line 2442
    iget-object v3, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2434
    const-string v0, "BroadcastQueue"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1b5

    .line 2443
    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIII)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final logBroadcastDeliveryEventReported(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2251
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v3

    .line 2252
    iget v4, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x3e8

    .line 2253
    :cond_0
    iget-object v6, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p5

    .line 2254
    instance-of v8, v7, Lcom/android/server/am/BroadcastFilter;

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    move v8, v5

    move v5, v10

    goto :goto_0

    :cond_1
    move v8, v5

    const/4 v5, 0x2

    :goto_0
    const/4 v11, 0x0

    if-nez v0, :cond_2

    move/from16 v21, v8

    move v8, v11

    goto :goto_1

    .line 2262
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveViaColdStart()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x3

    const/16 v12, 0x14

    move/from16 v21, v12

    goto :goto_1

    .line 2267
    :cond_3
    iget v8, v0, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    move/from16 v21, v8

    move v8, v10

    .line 2271
    :goto_1
    iget-object v12, v2, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v12, v12, p4

    iget-wide v14, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v14, v12, v14

    .line 2273
    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v16, v9, p4

    sub-long v16, v16, v12

    .line 2274
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v9, :cond_5

    .line 2275
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Logging broadcast for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    .line 2276
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v12, "<null>"

    :goto_2
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", stopped="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveWasStopped()Z

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", firstLaunch="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveFirstLaunch()Z

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2275
    const-string v12, "BroadcastQueue"

    invoke-static {v12, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v0, :cond_8

    .line 2281
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveWasStopped()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v13, 0x2

    goto :goto_3

    :cond_6
    move v13, v10

    :goto_3
    if-eqz v1, :cond_7

    .line 2286
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_4
    move v9, v3

    move v3, v4

    move-object v4, v6

    move v6, v8

    move-wide v7, v14

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :goto_5
    iget-object v15, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move v10, v11

    move-wide/from16 v11, v16

    .line 2287
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->calculateTypeForLogging()I

    move-result v16

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v17

    iget-object v14, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v18

    .line 2288
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v19

    iget v2, v2, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 2289
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveFirstLaunch()Z

    move-result v22

    const-wide/16 v23, 0x0

    move-object v14, v1

    const/16 v1, 0x1db

    move/from16 v25, v2

    move v2, v9

    move/from16 v20, v10

    const-wide/16 v9, 0x0

    move/from16 v20, v25

    .line 2284
    invoke-static/range {v1 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;IIIIIIZJ)V

    const/4 v10, 0x0

    .line 2292
    invoke-virtual {v0, v10}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveFirstLaunch(Z)V

    .line 2293
    invoke-virtual {v0, v10}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveWasStopped(Z)V

    :cond_8
    return-void
.end method

.method public final notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V
    .locals 8

    .line 2299
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->notifyBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 2301
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 2302
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastHistory;->onBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2304
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V

    .line 2305
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->logBroadcastProcessedEventRecord()V

    .line 2307
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2308
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v4, v0

    move v5, v4

    .line 2311
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2312
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 2314
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2320
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v6, v0, v2

    .line 2321
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    :cond_2
    return-void
.end method

.method public final notifyFinishReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V
    .locals 2

    .line 2231
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->wasDeliveryAttempted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BroadcastQueueImpl;->logBroadcastDeliveryEventReported(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V

    .line 2235
    :cond_0
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->wasDelivered(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2236
    iget-object p1, p3, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide p1, p1, p4

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v0, v0, p4

    sub-long/2addr p1, v0

    invoke-virtual {p3, p5, p1, p2}, Lcom/android/server/am/BroadcastRecord;->updateBroadcastProcessedEventRecord(Ljava/lang/Object;J)V

    .line 2240
    :cond_1
    iget p1, p3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 2242
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    :cond_2
    return-void
.end method

.method public final notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 2176
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 2178
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2179
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, p3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2182
    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2183
    :goto_0
    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 2185
    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 p3, -0x1

    const/16 v1, 0x1f

    if-ne p1, p3, :cond_1

    .line 2186
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEventForAllUsers(Ljava/lang/String;I)V

    goto :goto_1

    .line 2189
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget p3, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v0, p3, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2194
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p3, 0x3

    invoke-virtual {p1, v0, p3}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 2197
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2198
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2197
    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyScheduleRegisteredReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)V
    .locals 0

    .line 2166
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public final notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4

    .line 2125
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 2126
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->incrementCurAppReceivers()V

    .line 2129
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 2137
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 2139
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public final notifyStoppedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 1

    .line 2150
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->decrementCurAppReceivers()V

    .line 2153
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_0

    .line 2154
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 662
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is attached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 667
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 673
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearOutgoingBroadcasts()V

    .line 677
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_3

    .line 680
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    const/4 p1, 0x0

    .line 681
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 685
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 686
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 688
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 689
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    .line 691
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 701
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    const/4 p0, 0x1

    return p0

    .line 695
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 697
    throw p1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 722
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is cleaned up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 728
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 729
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_1

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearRunningColdStart()V

    :cond_1
    if-eqz v0, :cond_4

    .line 734
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_4

    const/4 p1, 0x0

    .line 735
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 738
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 739
    const-string/jumbo v1, "onApplicationCleanupLocked"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 741
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 744
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearOutgoingBroadcasts()V

    .line 748
    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 751
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 752
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_4
    return-void
.end method

.method public onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onApplicationTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 775
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final promoteToRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 3

    const/4 v0, 0x0

    .line 1497
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    .line 1498
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aput-object p1, v1, v0

    .line 1501
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastQueue.mRunning["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 1505
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingManifest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1506
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingOrdered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1507
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingResultTo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 1511
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1513
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1518
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    if-eqz v0, :cond_3

    .line 1520
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    return-void

    .line 1522
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessStartingBegin()V

    return-void
.end method

.method public final refreshProcessQueueLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 1

    .line 2115
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final refreshProcessQueuesLocked(I)V
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz p1, :cond_0

    .line 2090
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2091
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    .line 2093
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 5

    .line 2381
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 2383
    iget-object v3, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    .line 2385
    iget-object p0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p0, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object v0

    .line 2387
    :cond_0
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_1

    .line 2388
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 2390
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-object v0

    .line 2396
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2204
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 2205
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v5

    move-wide v11, v5

    goto :goto_0

    :cond_0
    move-wide v11, v3

    :goto_0
    cmp-long v2, v11, v3

    if-gtz v2, :cond_1

    goto :goto_3

    .line 2209
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2210
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 2211
    :cond_2
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2212
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    if-nez v9, :cond_4

    :goto_3
    return-void

    .line 2218
    :cond_4
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v1, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 2219
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v1, p1

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2220
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v15

    .line 2218
    invoke-virtual/range {v7 .. v15}, Landroid/app/usage/UsageStatsManagerInternal;->reportBroadcastDispatched(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    return-void
.end method

.method public final scheduleReceiverColdLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 993
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v2

    const-string v3, "isActive"

    invoke-static {v2, v3}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    const/4 v2, 0x1

    .line 996
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveViaColdStart(Z)V

    .line 998
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 999
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v4

    .line 1000
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1003
    instance-of v6, v5, Lcom/android/server/am/BroadcastFilter;

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 1004
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1005
    const-string v3, "BroadcastFilter for cold app"

    invoke-virtual {v0, v1, v7, v3}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    .line 1010
    :cond_0
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1012
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1013
    invoke-virtual {v0, v1, v7, v4}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    .line 1017
    :cond_1
    move-object v4, v5

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1018
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 1020
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveWasStopped(Z)V

    .line 1021
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveFirstLaunch(Z)V

    .line 1023
    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    or-int/lit8 v13, v6, 0x4

    .line 1024
    new-instance v14, Lcom/android/server/am/HostingRecord;

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1025
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->getHostingRecordTriggerType()Ljava/lang/String;

    move-result-object v7

    const-string v9, "broadcast"

    invoke-direct {v14, v9, v4, v6, v7}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 1027
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmp-long v4, v9, v15

    if-lez v4, :cond_2

    move v15, v2

    goto :goto_0

    :cond_2
    move v15, v6

    .line 1030
    :goto_0
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v7, 0x2000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_3

    move/from16 v16, v2

    goto :goto_1

    :cond_3
    move/from16 v16, v6

    .line 1033
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v18

    .line 1034
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1035
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to cold "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 1037
    :cond_5
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    const/4 v12, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_6

    .line 1040
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v3, 0x5

    .line 1041
    const-string/jumbo v4, "startProcessLocked failed"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    .line 1045
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessStartInitiatedTimestampMillis(J)V

    .line 1047
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v17

    iget-object v0, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1048
    invoke-virtual {v3, v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v21

    iget-boolean v1, v3, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    move-object/from16 v20, v0

    move/from16 v22, v1

    .line 1047
    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessBroadcastStart(JLcom/android/server/am/ProcessRecord;Landroid/content/Intent;Z)V

    return v6
.end method

.method public final scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 5

    .line 1068
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1070
    const-string/jumbo v0, "scheduleReceiverWarmLocked"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1071
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1072
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 1073
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v2

    .line 1075
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v3, :cond_0

    .line 1076
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1077
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 1078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1081
    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1083
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->dispatchReceivers(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1085
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v1, 0x2

    .line 1089
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1092
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1097
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    goto :goto_0

    .line 1099
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1264
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v2, :cond_0

    return-void

    .line 1265
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1266
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v4

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_5

    .line 1268
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/4 v6, 0x2

    invoke-virtual {v4, v2, v6}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 1270
    iget-boolean v4, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v4, v6, :cond_2

    .line 1271
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v7, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1272
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v11, 0x1

    .line 1271
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1276
    :cond_2
    :try_start_0
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v12, v1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v15

    .line 1281
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_3

    iget v4, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    :goto_1
    move/from16 v16, v4

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_4

    .line 1282
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_3

    :cond_4
    move-object/from16 v17, v3

    :goto_3
    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 1276
    invoke-interface/range {v5 .. v17}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1284
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to schedule result of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " via "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    const/16 v0, 0x1a

    const/4 v4, 0x1

    .line 1286
    const-string v5, "Can\'t deliver broadcast"

    const/16 v6, 0xd

    invoke-virtual {v2, v5, v6, v0, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1291
    :cond_5
    :goto_5
    iput-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    return-void
.end method

.method public final setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V
    .locals 7

    .line 1570
    const-string/jumbo v0, "setDeliveryState"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1573
    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v1

    .line 1574
    invoke-virtual {p3, p4, p6, p7}, Lcom/android/server/am/BroadcastRecord;->setDeliveryState(IILjava/lang/String;)Z

    move-result v2

    if-eqz p1, :cond_1

    const/4 v3, 0x4

    if-ne p6, v3, :cond_0

    .line 1580
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceActiveBegin()V

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 1582
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1583
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceActiveEnd()V

    .line 1589
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1590
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1591
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne p6, v4, :cond_3

    .line 1592
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1593
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivery state of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " via "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " changed from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    if-ne p6, v4, :cond_4

    .line 1598
    invoke-static {p7}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    goto :goto_1

    .line 1600
    :cond_4
    invoke-static {p7}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1604
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V

    :cond_6
    if-eqz v2, :cond_c

    .line 1610
    iget p1, p3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_7

    .line 1611
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 1616
    :cond_7
    iget-boolean p1, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p1, :cond_8

    iget-boolean p1, p3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz p1, :cond_c

    :cond_8
    const/4 p1, 0x0

    .line 1617
    :goto_2
    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_b

    .line 1618
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result p2

    if-eqz p2, :cond_9

    if-ne p1, p4, :cond_a

    .line 1619
    :cond_9
    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1621
    invoke-static {p2}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 1622
    invoke-static {p2}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result p2

    .line 1620
    invoke-virtual {p0, p5, p2}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1624
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 1625
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1629
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1633
    :cond_c
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 2063
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 2064
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    .line 2063
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2065
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_0
    return-void
.end method

.method public final shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 5

    .line 1435
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1436
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveAssumedDeliveryCountSinceIdle()I

    move-result v0

    .line 1437
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveCountSinceIdle()I

    move-result v3

    .line 1438
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveAssumedDeliveryCountSinceIdle()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1439
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v4, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    if-ge v3, v4, :cond_1

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    goto :goto_1

    .line 1444
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveCountSinceIdle()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    .line 1447
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method public final shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .locals 2

    .line 1110
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v0

    .line 1111
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1112
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 1115
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    const-string p0, "already terminal state"

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1120
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isInFullBackup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    const-string/jumbo p0, "isInFullBackup"

    return-object p0

    .line 1123
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 1127
    :cond_2
    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_3

    .line 1129
    const-string p0, "getReceiverIntent"

    return-object p0

    .line 1133
    :cond_3
    instance-of p0, p3, Lcom/android/server/am/BroadcastFilter;

    if-eqz p0, :cond_4

    check-cast p3, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p3, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget p0, p0, Lcom/android/server/am/ReceiverList;->pid:I

    .line 1134
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    if-eq p0, p1, :cond_4

    .line 1135
    const-string p0, "BroadcastFilter for mismatched PID"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final skipAndCancelReplacedBroadcasts(Landroid/util/ArraySet;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 883
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 884
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    move v3, v0

    .line 886
    :goto_1
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 887
    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 888
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-interface {v4, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 4

    .line 1821
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1822
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1824
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$1;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    const/4 v1, 0x2

    const-string v2, "android"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1836
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final startDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V
    .locals 2

    .line 1299
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {v0}, Lcom/android/server/utils/AnrTimer;->serviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    return-void

    .line 1302
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCpuDelayTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    .line 1303
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 1750
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string v3, "Test "

    if-ge v1, v2, :cond_3

    .line 1751
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v2, :cond_2

    .line 1753
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1755
    iget-wide v6, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLastTestFailureTime:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    .line 1756
    iput-wide v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLastTestFailureTime:J

    .line 1757
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed due to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1757
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return v0

    .line 1763
    :cond_1
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1766
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " passed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 8

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_0

    goto/16 :goto_4

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->updateDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V

    .line 416
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 418
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v0, :cond_9

    if-eqz v4, :cond_8

    .line 425
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_3

    .line 426
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    .line 427
    :goto_2
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_5

    .line 428
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    if-eqz v0, :cond_7

    if-nez v2, :cond_a

    .line 430
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 431
    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_3

    .line 434
    :cond_8
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    .line 437
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 441
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isOutgoingEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 442
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-nez v0, :cond_b

    .line 443
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    :cond_b
    :goto_4
    return-void
.end method

.method public final updateRunningList()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunningListLocked()V

    .line 450
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateRunningListLocked()V
    .locals 14

    .line 468
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningUrgentCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v1, v1, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v1, v1

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    return-void

    .line 473
    :cond_0
    const-string/jumbo v0, "updateRunningList"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 477
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    .line 481
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    if-eqz v5, :cond_b

    if-lez v1, :cond_b

    .line 486
    iget-object v9, v5, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 487
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v10

    .line 491
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v12

    iget-object v13, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v13, v13, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    if-lt v12, v13, :cond_2

    .line 499
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingUrgent()Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v12, v10, v2

    if-lez v12, :cond_3

    if-eqz v4, :cond_3

    .line 508
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_4

    .line 514
    :cond_3
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v5, v10}, Lcom/android/server/am/BroadcastProcessQueue;->clearDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V

    .line 518
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->updateWarmProcess(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 520
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 522
    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v12, v5, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v12, v8}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 526
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v8

    if-nez v8, :cond_7

    .line 528
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    goto :goto_1

    .line 535
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v8, :cond_5

    .line 536
    iput-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 537
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    goto :goto_2

    .line 538
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isPendingColdStartValid()Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_1
    move-object v5, v9

    goto :goto_0

    .line 544
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearInvalidPendingColdStart()V

    .line 545
    iput-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 546
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    .line 550
    :cond_7
    :goto_2
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v8, :cond_8

    .line 551
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Promoting "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " from runnable to running; process is "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 553
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->promoteToRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    if-eqz v10, :cond_9

    .line 556
    iget-boolean v8, v5, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    or-int/2addr v7, v8

    .line 558
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v8
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 560
    :catch_0
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v8, v6

    goto :goto_3

    .line 564
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverColdLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v8

    :goto_3
    if-eqz v8, :cond_a

    .line 569
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_b
    :goto_4
    if-eqz v7, :cond_c

    .line 582
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 585
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkPendingColdStartValidityLocked()V

    .line 586
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkAndRemoveWaitingFor()V

    .line 588
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final updateWarmProcess(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4

    .line 2042
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2050
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2051
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    .line 2050
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    :cond_0
    return-void
.end method

.method public final waitFor(Ljava/util/function/BooleanSupplier;)V
    .locals 3

    .line 1904
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1905
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1906
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1908
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1910
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1912
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 1907
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public waitForBarrier(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1882
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1883
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1884
    :try_start_0
    sget-object v3, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v4, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1886
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1888
    :try_start_1
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1890
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1891
    :try_start_2
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1893
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_1
    move-exception p1

    .line 1890
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1891
    :try_start_4
    sget-object v1, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1893
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1894
    throw p1

    :catchall_2
    move-exception p0

    .line 1893
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_3
    move-exception p0

    .line 1886
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public waitForDispatched(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 1

    .line 1900
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public waitForIdle(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1877
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method
