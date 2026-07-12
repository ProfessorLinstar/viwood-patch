.class public final Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;
.super Ljava/lang/Object;
.source "CpuInfoReader.java"


# instance fields
.field public final guestNiceTimeMillis:J

.field public final guestTimeMillis:J

.field public final idleTimeMillis:J

.field public final iowaitTimeMillis:J

.field public final irqTimeMillis:J

.field public final niceTimeMillis:J

.field public final softirqTimeMillis:J

.field public final stealTimeMillis:J

.field public final systemTimeMillis:J

.field public final userTimeMillis:J


# direct methods
.method public constructor <init>(JJJJJJJJJJ)V
    .locals 0

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 868
    iput-wide p3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 869
    iput-wide p5, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 870
    iput-wide p7, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 871
    iput-wide p9, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 872
    iput-wide p11, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 873
    iput-wide p13, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    move-wide p1, p15

    .line 874
    iput-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    move-wide/from16 p1, p17

    .line 875
    iput-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    move-wide/from16 p1, p19

    .line 876
    iput-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    return-void
.end method

.method public static diff(JJ)J
    .locals 1

    .line 0
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    sub-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method public delta(Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 930
    new-instance v2, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-wide v3, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    iget-wide v5, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    iget-wide v7, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 931
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    iget-wide v9, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 932
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    iget-wide v11, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 933
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    iget-wide v13, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 934
    invoke-static {v11, v12, v13, v14}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v11

    iget-wide v13, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    move-object v15, v2

    move-wide/from16 v16, v3

    iget-wide v2, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 935
    invoke-static {v13, v14, v2, v3}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v2

    iget-wide v13, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 936
    invoke-static {v13, v14, v2, v3}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v13

    iget-wide v2, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    move-wide/from16 v20, v5

    iget-wide v4, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 937
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 938
    invoke-static {v4, v5, v2, v3}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    iget-wide v0, v1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 939
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    move-result-wide v0

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide/from16 v11, v18

    move-wide/from16 v24, v0

    move-object v0, v15

    move-wide/from16 v26, v20

    move-wide/from16 v19, v24

    move-wide/from16 v24, v16

    move-wide/from16 v17, v2

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    move-wide/from16 v15, v22

    invoke-direct/range {v0 .. v20}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;-><init>(JJJJJJJJJJ)V

    move-object v15, v0

    return-object v15
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 906
    :cond_0
    instance-of v1, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 909
    :cond_1
    check-cast p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 910
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    iget-wide p0, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getTotalTimeMillis()J
    .locals 4

    .line 880
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 12

    .line 923
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 924
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 925
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 926
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    .line 923
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuUsageStats{ userTimeMillis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 888
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", niceTimeMillis = "

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", systemTimeMillis = "

    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", idleTimeMillis = "

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", iowaitTimeMillis = "

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", irqTimeMillis = "

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", softirqTimeMillis = "

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stealTimeMillis = "

    .line 895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", guestTimeMillis = "

    .line 896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", guestNiceTimeMillis = "

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 898
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
