.class public Lcom/android/server/power/stats/SystemServerCpuThreadReader;
.super Ljava/lang/Object;
.source "SystemServerCpuThreadReader.java"


# instance fields
.field public final mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

.field public final mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

.field public mLastBinderThreadCpuTimesUs:[J

.field public mLastThreadCpuTimesUs:[J


# direct methods
.method public constructor <init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;-><init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/SystemServerCpuThreadReader;-><init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    invoke-direct {v0}, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    .line 67
    iput-object p1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    return-void
.end method


# virtual methods
.method public readAbsolute()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v0

    .line 119
    iget-object p0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_0
    new-instance v1, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    invoke-direct {v1}, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;-><init>()V

    .line 125
    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    .line 126
    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 128
    iget-object v3, v1, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 129
    iget-object v3, v1, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    aget-wide v4, v4, v2

    mul-long/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readDelta()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .locals 12

    .line 86
    iget-object v0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    if-nez v1, :cond_0

    .line 88
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    .line 89
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    .line 91
    iget-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    .line 92
    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 96
    invoke-virtual {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 102
    iget-object v2, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 103
    iget-object v6, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    aget-wide v6, v6, v0

    mul-long/2addr v6, v4

    .line 104
    iget-object v4, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    iget-object v4, v4, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    iget-object v5, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    aget-wide v8, v5, v0

    sub-long v8, v2, v8

    const-wide/16 v10, 0x0

    .line 105
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    aput-wide v8, v4, v0

    .line 106
    iget-object v4, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    iget-object v4, v4, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    iget-object v5, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    aget-wide v8, v5, v0

    sub-long v8, v6, v8

    .line 107
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    aput-wide v8, v4, v0

    .line 108
    iget-object v4, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    aput-wide v2, v4, v0

    .line 109
    iget-object v2, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    aput-wide v6, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    return-object p0
.end method

.method public setBinderThreadNativeTids([I)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->setSelectedThreadIds([I)V

    return-void
.end method
