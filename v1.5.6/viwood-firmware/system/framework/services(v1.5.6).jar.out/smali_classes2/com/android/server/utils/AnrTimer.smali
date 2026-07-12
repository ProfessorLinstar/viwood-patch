.class public abstract Lcom/android/server/utils/AnrTimer;
.super Ljava/lang/Object;
.source "AnrTimer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final sAnrTimerList:Landroid/util/LongSparseArray;

.field public static final sComparator:Ljava/util/Comparator;

.field public static final sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

.field public static final sErrors:Lcom/android/internal/util/RingBuffer;


# instance fields
.field public final mArgs:Lcom/android/server/utils/AnrTimer$Args;

.field public final mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

.field public final mHandler:Landroid/os/Handler;

.field public final mLabel:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mMaxStarted:I

.field public final mTimerArgMap:Landroid/util/SparseArray;

.field public final mTimerIdMap:Landroid/util/ArrayMap;

.field public mTotalErrors:I

.field public mTotalExpired:I

.field public mTotalStarted:I

.field public final mWhat:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLabel(Lcom/android/server/utils/AnrTimer;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxStarted(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalErrors(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalExpired(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalStarted(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmMaxStarted(Lcom/android/server/utils/AnrTimer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTotalStarted(Lcom/android/server/utils/AnrTimer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnativeAnrTimerCreate(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;ZZ)J
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerCreate(Ljava/lang/String;ZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->notFoundLocked(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrelease(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->release(Lcom/android/server/utils/AnrTimer$TimerLock;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtrace(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->trace(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsDefaultInjector()Lcom/android/server/utils/AnrTimer$Injector;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smanrTimerServiceEnabled()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->anrTimerServiceEnabled()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smfreezerFeatureEnabled()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->freezerFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerAccept(JI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerAccept(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerCancel(JI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerCancel(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerClose(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerClose(J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerDiscard(JI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerDiscard(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerDump(J)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerDump(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerRelease(JI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerRelease(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerStart(JIIJ)I
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerStart(JIIJ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 166
    new-instance v0, Lcom/android/server/utils/AnrTimer$Injector;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$Injector;-><init>()V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    .line 298
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/utils/AnrTimer$Error;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    .line 526
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    .line 901
    new-instance v0, Lcom/android/server/utils/AnrTimer$1;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$1;-><init>()V

    .line 902
    invoke-static {v0}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 1

    .line 396
    new-instance v0, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V
    .locals 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    .line 308
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    .line 316
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    .line 320
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    .line 324
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    .line 361
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    .line 362
    iput p2, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    .line 363
    iput-object p3, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    .line 365
    invoke-static {p4}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmInjector(Lcom/android/server/utils/AnrTimer$Args;)Lcom/android/server/utils/AnrTimer$Injector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/utils/AnrTimer$Injector;->serviceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/utils/AnrTimer;->nativeTimersSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 366
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/utils/AnrTimer;->createFeatureSwitch(Z)Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    return-void
.end method

.method public static anrTimerServiceEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static dump(Ljava/io/PrintWriter;Z)V
    .locals 1

    .line 938
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/AnrTimer;->dump(Ljava/io/PrintWriter;ZLcom/android/server/utils/AnrTimer$Injector;)V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;ZLcom/android/server/utils/AnrTimer$Injector;)V
    .locals 7

    .line 911
    invoke-virtual {p2}, Lcom/android/server/utils/AnrTimer$Injector;->serviceEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 913
    :cond_0
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 914
    const-string p0, "AnrTimer statistics"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 916
    sget-object p0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    monitor-enter p0

    .line 919
    :try_start_0
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 920
    new-array v1, v0, [Lcom/android/server/utils/AnrTimer;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 923
    sget-object v5, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/AnrTimer;

    if-eqz v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 924
    aput-object v5, v1, v4

    move v4, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 926
    :cond_2
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sComparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_4

    .line 928
    aget-object v3, v1, v0

    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Lcom/android/server/utils/AnrTimer;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 930
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 931
    invoke-static {p2}, Lcom/android/server/utils/AnrTimer;->dumpErrors(Landroid/util/IndentingPrintWriter;)V

    .line 932
    :cond_5
    const-string p0, "AnrTimerEnd\n"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 933
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 930
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static dumpErrors(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 862
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    monitor-enter v0

    .line 863
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 864
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/utils/AnrTimer$Error;

    .line 865
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    const-string v0, "Errors"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 868
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 869
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    invoke-static {v2, p0, v0}, Lcom/android/server/utils/AnrTimer$Error;->-$$Nest$mdump(Lcom/android/server/utils/AnrTimer$Error;Landroid/util/IndentingPrintWriter;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 865
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private expire(IIIJ)Z
    .locals 7

    .line 797
    const-string v1, "expired"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/utils/AnrTimer;->trace(Ljava/lang/String;IIIJ)V

    .line 799
    iget-object p0, v0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 800
    :try_start_0
    iget-object p1, v0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 802
    const-string p1, "AnrTimer"

    const-string p3, "failed to expire timer %s:%d : arg not found"

    iget-object p4, v0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 803
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p4, p5}, [Ljava/lang/Object;

    move-result-object p4

    .line 802
    invoke-static {p3, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget p1, v0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    const/4 p1, 0x0

    .line 805
    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 807
    :cond_0
    iget p3, v0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    add-int/2addr p3, p2

    iput p3, v0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    .line 808
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    iget-object p0, v0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget p3, v0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    invoke-static {p0, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p2

    .line 808
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static freezerFeatureEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeAnrTimerAccept(JI)Z
.end method

.method private static native nativeAnrTimerCancel(JI)Z
.end method

.method private static native nativeAnrTimerClose(J)I
.end method

.method private native nativeAnrTimerCreate(Ljava/lang/String;ZZ)J
.end method

.method private static native nativeAnrTimerDiscard(JI)Z
.end method

.method private static native nativeAnrTimerDump(J)[Ljava/lang/String;
.end method

.method private static native nativeAnrTimerRelease(JI)Z
.end method

.method private static native nativeAnrTimerStart(JIIJ)I
.end method

.method private static native nativeAnrTimerSupported()Z
.end method

.method private static native nativeAnrTimerTrace([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static nativeTimersSupported()Z
    .locals 1

    .line 959
    :try_start_0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static traceFeatureEnabled()Z
    .locals 1

    .line 145
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->anrTimerServiceEnabled()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static traceTimers([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 950
    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerTrace([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
    .locals 0

    .line 758
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;

    move-result-object p0

    return-object p0
.end method

.method public cancel(Ljava/lang/Object;)Z
    .locals 0

    .line 738
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->cancel(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->close()V

    return-void
.end method

.method public final createFeatureSwitch(Z)Lcom/android/server/utils/AnrTimer$FeatureSwitch;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 374
    new-instance p1, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    invoke-direct {p1, p0, v0}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    return-object p1

    .line 377
    :cond_0
    :try_start_0
    new-instance p1, Lcom/android/server/utils/AnrTimer$FeatureEnabled;

    invoke-direct {p1, p0}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;-><init>(Lcom/android/server/utils/AnrTimer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 381
    const-string v1, "AnrTimer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance p1, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    invoke-direct {p1, p0, v0}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    return-object p1
.end method

.method public discard(Ljava/lang/Object;)Z
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->discard(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 835
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    const-string/jumbo v1, "timer: %s\n"

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 837
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 838
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 839
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 840
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finalize()V
    .locals 0

    .line 827
    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer;->close()V

    .line 828
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public abstract getPid(Ljava/lang/Object;)I
.end method

.method public abstract getUid(Ljava/lang/Object;)I
.end method

.method public final notFoundLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 897
    const-string/jumbo v0, "notFound"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/utils/AnrTimer;->recordErrorLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final recordErrorLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 882
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 883
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 p3, 0x6

    const/16 v1, 0x9

    .line 886
    invoke-static {v0, p3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 887
    sget-object p3, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    monitor-enter p3

    .line 888
    :try_start_0
    new-instance v1, Lcom/android/server/utils/AnrTimer$Error;

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    move-object v3, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/utils/AnrTimer$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 889
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    sget-boolean p1, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "AnrTimer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " timer "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 889
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 0

    .line 782
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->release(Lcom/android/server/utils/AnrTimer$TimerLock;)V

    return-void
.end method

.method public serviceEnabled()Z
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->enabled()Z

    move-result p0

    return p0
.end method

.method public start(Ljava/lang/Object;J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide v7, p2

    .line 723
    :goto_0
    iget-object v3, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->getPid(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->getUid(Ljava/lang/Object;)I

    move-result v6

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->start(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public final trace(Ljava/lang/String;I)V
    .locals 1

    .line 425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s(%d)"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 p1, 0x40

    .line 426
    const-string v0, "AnrTimerTrack"

    invoke-static {p1, p2, v0, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-boolean p1, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "AnrTimer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final trace(Ljava/lang/String;IIIJ)V
    .locals 1

    .line 416
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    move-object v0, p4

    move-object p4, p0

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, v0

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s(%d,%d,%d,%s,%d)"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 p1, 0x40

    .line 417
    const-string p3, "AnrTimerTrack"

    invoke-static {p1, p2, p3, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-boolean p1, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "AnrTimer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
