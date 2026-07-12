.class public abstract Lcom/android/server/utils/SnapshotCache;
.super Lcom/android/server/utils/Watcher;
.source "SnapshotCache.java"


# static fields
.field public static final sCaches:Ljava/util/WeakHashMap;


# instance fields
.field public volatile mSealed:Z

.field public volatile mSnapshot:Ljava/lang/Object;

.field public final mSource:Ljava/lang/Object;

.field public final mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/server/utils/SnapshotCache;->sCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 107
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 109
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    .line 81
    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    .line 82
    invoke-interface {p2, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    if-eqz p3, :cond_0

    .line 84
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Statistics;

    invoke-direct {p1, p3}, Lcom/android/server/utils/SnapshotCache$Statistics;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    .line 85
    sget-object p1, Lcom/android/server/utils/SnapshotCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 87
    :cond_0
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    return-void
.end method


# virtual methods
.method public abstract createSnapshot()Ljava/lang/Object;
.end method

.method public final onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 117
    iget-boolean p1, p0, Lcom/android/server/utils/SnapshotCache;->mSealed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    return-void

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to change a sealed object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 142
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/utils/SnapshotCache$Statistics;->-$$Nest$fgetmReused(Lcom/android/server/utils/SnapshotCache$Statistics;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    return-object v0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->createSnapshot()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/android/server/utils/SnapshotCache;->mSnapshot:Ljava/lang/Object;

    .line 140
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mStatistics:Lcom/android/server/utils/SnapshotCache$Statistics;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/server/utils/SnapshotCache$Statistics;->-$$Nest$fgetmRebuilt(Lcom/android/server/utils/SnapshotCache$Statistics;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    return-object v0
.end method
