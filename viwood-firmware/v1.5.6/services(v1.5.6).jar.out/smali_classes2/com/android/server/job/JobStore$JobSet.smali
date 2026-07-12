.class public final Lcom/android/server/job/JobStore$JobSet;
.super Ljava/lang/Object;
.source "JobStore.java"


# instance fields
.field final mJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field final mJobsPerSourceUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Ogrjy8cbnKakGMK8Ug9l_r3Ikrk([ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 1883
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$RA6YfP6IBdA_T2lAW98eyR1LWXw([ILcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 1885
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1800
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 1801
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    .line 1832
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 1833
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    .line 1834
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_0

    .line 1836
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1837
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_1

    .line 1841
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1842
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1844
    :cond_1
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    .line 1845
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eq p0, p1, :cond_2

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJobs and mJobsPerSourceUid mismatch; caller= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " source= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .locals 1

    .line 1943
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1944
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    .line 1907
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 1908
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 1909
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public countJobsForUid(I)I
    .locals 3

    .line 1959
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 1961
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1962
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1963
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    if-ne v2, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public forEachJob(ILjava/util/function/Consumer;)V
    .locals 1

    .line 1987
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 1989
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 1990
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1973
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1974
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_2

    .line 1976
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 1977
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_0

    .line 1978
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1979
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public forEachJobForSourceUid(ILjava/util/function/Consumer;)V
    .locals 1

    .line 1996
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 1998
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 1999
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(ILjava/lang/String;I)Lcom/android/server/job/controllers/JobStatus;
    .locals 2

    .line 1913
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_1

    .line 1915
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 1916
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 1917
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    if-ne v1, p3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllJobs()Ljava/util/List;
    .locals 5

    .line 1927
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1928
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1929
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    .line 1934
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 1935
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getJobsBySourceUid(I)Landroid/util/ArraySet;
    .locals 1

    .line 1819
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1820
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    return-object v0
.end method

.method public getJobsBySourceUid(ILjava/util/Set;)V
    .locals 0

    .line 1825
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 1827
    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public getJobsByUid(I)Landroid/util/ArraySet;
    .locals 1

    .line 1805
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1806
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(ILjava/util/Set;)V

    return-object v0
.end method

.method public getJobsByUid(ILjava/util/Set;)V
    .locals 0

    .line 1811
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    .line 1813
    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 9

    .line 1854
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 1855
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1856
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 1857
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 1858
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 1859
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-eq v6, p1, :cond_2

    .line 1861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Job presence mismatch; caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "JobStore"

    invoke-static {v8, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v6, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    return v4

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 1866
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 1867
    iget-object p1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    if-eqz v3, :cond_6

    .line 1869
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 1870
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_6
    return v5
.end method

.method public final removeAll(Ljava/util/function/Predicate;)V
    .locals 2

    .line 1890
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1891
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1892
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1893
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1894
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1897
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 1898
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1899
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1900
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1901
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeJobsOfUnlistedUsers([I)V
    .locals 2

    .line 1882
    new-instance v0, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda0;-><init>([I)V

    .line 1884
    new-instance v1, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/job/JobStore$JobSet$$ExternalSyntheticLambda1;-><init>([I)V

    .line 1886
    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$JobSet;->removeAll(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public size()I
    .locals 3

    .line 1949
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 1950
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method
