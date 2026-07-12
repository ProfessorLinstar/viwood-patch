.class public final Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;
.super Ljava/lang/Object;
.source "LegacyHistoricalRegistry.java"

# interfaces
.implements Landroid/app/AppOpsManager$HistoricalOpsVisitor;


# instance fields
.field public final mAttributionPrefix:Ljava/lang/String;

.field public final mDate:Ljava/util/Date;

.field public final mDateFormatter:Ljava/text/SimpleDateFormat;

.field public final mEntryPrefix:Ljava/lang/String;

.field public final mFilter:I

.field public final mFilterAttributionTag:Ljava/lang/String;

.field public final mFilterOp:I

.field public final mFilterPackage:Ljava/lang/String;

.field public final mFilterUid:I

.field public final mNow:J

.field public final mOpsPrefix:Ljava/lang/String;

.field public final mPackagePrefix:Ljava/lang/String;

.field public final mUidPrefix:Ljava/lang/String;

.field public final mUidStatePrefix:Ljava/lang/String;

.field public final mWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mNow:J

    .line 1820
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    .line 1822
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    .line 1840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mAttributionPrefix:Ljava/lang/String;

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    .line 1846
    iput-object p3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    .line 1847
    iput p4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilterUid:I

    .line 1848
    iput-object p5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1849
    iput-object p6, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilterAttributionTag:Ljava/lang/String;

    .line 1850
    iput p7, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilterOp:I

    .line 1851
    iput p8, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilter:I

    return-void
.end method


# virtual methods
.method public visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 2

    .line 1901
    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1902
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1901
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mAttributionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Attribution "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1907
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1908
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1913
    iget v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilterOp:I

    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 1916
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1917
    iget-object v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1918
    iget-object v2, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 1920
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    .line 1922
    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1923
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v8

    .line 1924
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v9

    .line 1926
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    .line 1927
    const-string v15, " = "

    const/16 v16, 0x1

    if-lez v14, :cond_1

    .line 1929
    iget-object v14, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1930
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1931
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1934
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v14, "access="

    invoke-virtual {v4, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1935
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    move/from16 v4, v16

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1937
    :goto_1
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v10

    cmp-long v14, v10, v12

    move-wide/from16 v17, v12

    .line 1938
    const-string v12, ", "

    if-lez v14, :cond_3

    if-nez v4, :cond_2

    .line 1940
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v13, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1942
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v4, v16

    goto :goto_2

    .line 1945
    :cond_2
    iget-object v13, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v13, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1947
    :goto_2
    iget-object v13, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v14, "reject="

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1948
    iget-object v13, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v13, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1950
    :cond_3
    invoke-virtual {v1, v8, v8, v9}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v8

    cmp-long v10, v8, v17

    if-lez v10, :cond_5

    if-nez v4, :cond_4

    .line 1953
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v10, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1954
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1955
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 1958
    :cond_4
    iget-object v6, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v16, v4

    .line 1960
    :goto_3
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v6, "duration="

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1961
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move/from16 v4, v16

    :cond_5
    if-eqz v4, :cond_6

    .line 1964
    iget-object v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public visitHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 6

    .line 1856
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1857
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "snapshot:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "begin = "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1861
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1862
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1863
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "  ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mNow:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1865
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1866
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "end = "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1868
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 1869
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mNow:J

    sub-long/2addr v0, v3

    iget-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1872
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .locals 2

    .line 1889
    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1890
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1889
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1894
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1896
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .locals 2

    .line 1877
    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mFilterUid:I

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1881
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1884
    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
