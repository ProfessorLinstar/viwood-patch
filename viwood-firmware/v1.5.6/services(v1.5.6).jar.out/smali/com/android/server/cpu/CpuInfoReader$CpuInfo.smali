.class public final Lcom/android/server/cpu/CpuInfoReader$CpuInfo;
.super Ljava/lang/Object;
.source "CpuInfoReader.java"


# instance fields
.field public final avgTimeInStateCpuFreqKHz:J

.field public final cpuCore:I

.field public final cpusetCategories:I

.field public final curCpuFreqKHz:J

.field public final isOnline:Z

.field public final latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

.field public mNormalizedAvailableCpuFreqKHz:J

.field public final maxCpuFreqKHz:J


# direct methods
.method public constructor <init>(IIZJJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V
    .locals 0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    .line 776
    iput p2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    .line 777
    iput-boolean p3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 778
    iput-wide p4, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    .line 779
    iput-wide p6, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    .line 780
    iput-wide p8, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    .line 781
    iput-object p12, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 782
    iput-wide p10, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    return-void
.end method

.method public constructor <init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V
    .locals 13

    const-wide/16 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v12, p10

    .line 764
    invoke-direct/range {v0 .. v12}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->computeNormalizedAvailableCpuFreqKHz()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    return-void
.end method


# virtual methods
.method public final computeNormalizedAvailableCpuFreqKHz()J
    .locals 9

    .line 832
    iget-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->getTotalTimeMillis()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 837
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v0, "Total CPU time millis is 0. This shouldn\'t happen unless stats are polled too frequently"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_1
    long-to-double v3, v3

    .line 841
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-wide v5, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    long-to-double v5, v5

    sub-double v5, v3, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    div-double/2addr v5, v3

    .line 843
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 844
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    :cond_2
    long-to-double v0, v3

    mul-double/2addr v5, v0

    .line 845
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    long-to-double v2, v0

    div-double/2addr v5, v2

    sub-double v2, v7, v5

    long-to-double v0, v0

    mul-double/2addr v2, v0

    div-double/2addr v2, v7

    double-to-long v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 813
    :cond_0
    instance-of v1, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 816
    :cond_1
    check-cast p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 817
    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    iget v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    iget v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    iget-boolean v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-object v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 821
    invoke-virtual {v1, v3}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    iget-wide p0, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getNormalizedAvailableCpuFreqKHz()J
    .locals 2

    .line 786
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .line 827
    iget v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    .line 828
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-wide v8, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 827
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuInfo{ cpuCore = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpusetCategories = ["

    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    .line 793
    invoke-static {v1}, Lcom/android/server/cpu/CpuInfoReader;->-$$Nest$smtoCpusetCategoriesStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], isOnline = "

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    if-eqz v1, :cond_0

    const-string v1, "Yes"

    goto :goto_0

    :cond_0
    const-string v1, "No"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curCpuFreqKHz = "

    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-string/jumbo v6, "missing"

    if-nez v5, :cond_1

    move-object v1, v6

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxCpuFreqKHz = "

    .line 797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    move-object v1, v6

    goto :goto_2

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avgTimeInStateCpuFreqKHz = "

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 801
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 800
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latestCpuUsageStats = "

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNormalizedAvailableCpuFreqKHz = "

    .line 803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    .line 804
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 805
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
