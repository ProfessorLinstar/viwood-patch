.class public Lcom/android/server/job/controllers/ConnectivityController$1;
.super Ljava/lang/Object;
.source "ConnectivityController.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I
    .locals 8

    .line 210
    iget-object v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    .line 211
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 216
    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 223
    :cond_1
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 230
    :cond_2
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v3, 0x27

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 237
    :cond_3
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 242
    :cond_4
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 249
    :cond_5
    iget v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v3, 0x22

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_6

    return p0

    .line 255
    :cond_6
    iget-wide v0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    iget-wide v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    cmp-long p0, v0, v3

    const/4 v5, -0x1

    if-gez p0, :cond_7

    return v5

    :cond_7
    cmp-long p0, v0, v3

    const/4 v0, 0x1

    if-lez p0, :cond_8

    return v0

    .line 261
    :cond_8
    iget-wide v3, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v6, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long p0, v3, v6

    if-gez p0, :cond_9

    return v5

    :cond_9
    cmp-long p0, v3, v6

    if-lez p0, :cond_a

    return v0

    .line 267
    :cond_a
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq p0, v1, :cond_b

    sub-int/2addr v1, p0

    return v1

    .line 271
    :cond_b
    iget-wide p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v3, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long p2, p0, v3

    if-gez p2, :cond_c

    return v5

    :cond_c
    cmp-long p0, p0, v3

    if-lez p0, :cond_d

    return v0

    :cond_d
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 181
    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController$1;->compare(Lcom/android/server/job/controllers/ConnectivityController$UidStats;Lcom/android/server/job/controllers/ConnectivityController$UidStats;)I

    move-result p0

    return p0
.end method

.method public final prioritizeExistenceOver(III)I
    .locals 0

    .line 0
    if-le p2, p1, :cond_0

    if-gt p3, p1, :cond_1

    :cond_0
    if-gt p2, p1, :cond_2

    if-gt p3, p1, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    if-le p2, p1, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
