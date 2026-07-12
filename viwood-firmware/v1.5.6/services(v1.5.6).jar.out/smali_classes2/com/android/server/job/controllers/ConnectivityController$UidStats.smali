.class public Lcom/android/server/job/controllers/ConnectivityController$UidStats;
.super Ljava/lang/Object;
.source "ConnectivityController.java"


# instance fields
.field public baseBias:I

.field public earliestEJEnqueueTime:J

.field public earliestEnqueueTime:J

.field public earliestUIJEnqueueTime:J

.field public lastUpdatedElapsed:J

.field public numEJs:I

.field public numReadyWithConnectivity:I

.field public numRegular:I

.field public numRequestedNetworkAvailable:I

.field public numUIJs:I

.field public final runningJobs:Landroid/util/ArraySet;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Landroid/util/IndentingPrintWriter;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2207
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 2219
    iput p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/server/job/controllers/ConnectivityController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final dumpLocked(Landroid/util/IndentingPrintWriter;J)V
    .locals 2

    .line 2223
    const-string v0, "UidStats{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2224
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2225
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "pri"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2226
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#run"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2227
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#readyWithConn"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2228
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#netAvail"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2229
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#EJs"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2230
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#reg"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2231
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "earliestEnqueue"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2232
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "earliestEJEnqueue"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2233
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "earliestUIJEnqueue"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2234
    const-string/jumbo v0, "updated="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2235
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2236
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
