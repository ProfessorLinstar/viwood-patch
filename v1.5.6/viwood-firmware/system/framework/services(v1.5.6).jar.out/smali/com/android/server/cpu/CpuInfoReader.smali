.class public final Lcom/android/server/cpu/CpuInfoReader;
.super Ljava/lang/Object;
.source "CpuInfoReader.java"


# static fields
.field public static final MILLIS_PER_CLOCK_TICK:J

.field public static final PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

.field public static final TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public mCpuFreqDir:Ljava/io/File;

.field public final mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

.field public final mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

.field public mCpusetDir:Ljava/io/File;

.field public mCumulativeCpuUsageStats:Landroid/util/SparseArray;

.field public mHasTimeInStateFile:Z

.field public mIsEnabled:Z

.field public mLastReadCpuInfos:Landroid/util/SparseArray;

.field public mLastReadUptimeMillis:J

.field public final mMinReadIntervalMillis:J

.field public mProcStatFile:Ljava/io/File;

.field public final mShouldReadCpusetCategories:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mStaticPolicyInfoById:Landroid/util/SparseArray;

.field public final mTimeInStateByPolicyId:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$jQBUynzxWR2ZUcdjqmjLMG5hjjk(Ljava/io/File;)Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "policy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$roIUmCaCkWNgL7Rd3oIho7Rd6uk(Ljava/io/File;)Z
    .locals 1

    .line 351
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "policy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smtoCpusetCategoriesStr(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 64
    const-string v0, "cpu(?<core>[0-9]+)\\s(?<userClockTicks>[0-9]+)\\s(?<niceClockTicks>[0-9]+)\\s(?<sysClockTicks>[0-9]+)\\s(?<idleClockTicks>[0-9]+)\\s(?<iowaitClockTicks>[0-9]+)\\s(?<irqClockTicks>[0-9]+)\\s(?<softirqClockTicks>[0-9]+)\\s(?<stealClockTicks>[0-9]+)\\s(?<guestClockTicks>[0-9]+)\\s(?<guestNiceClockTicks>[0-9]+)"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpu/CpuInfoReader;->PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "(?<freqKHz>[0-9]+)\\s(?<time>[0-9]+)"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpu/CpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    sput-wide v2, Lcom/android/server/cpu/CpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 101
    new-instance v1, Ljava/io/File;

    const-string v0, "/dev/cpuset"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v0, "/sys/devices/system/cpu/cpufreq"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v0, "/proc/stat"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cpu/CpuInfoReader;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;J)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 107
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 108
    iput-object p2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 109
    iput-object p3, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 110
    iput-wide p4, p0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    .line 111
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mShouldReadCpusetCategories:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    .line 612
    :goto_0
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 613
    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v3, v4, v0

    if-nez v3, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 619
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 620
    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v8

    mul-long/2addr v6, v8

    long-to-double v6, v6

    div-double/2addr v6, v4

    add-double/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    double-to-long v0, v0

    return-wide v0
.end method

.method public static calculateDeltaTimeInState(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Landroid/util/LongSparseLongArray;
    .locals 10

    .line 598
    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 599
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 601
    invoke-virtual {p1, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v3

    .line 602
    invoke-virtual {p1, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v5

    .line 603
    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    sub-long/2addr v5, v7

    .line 604
    :cond_0
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/LongSparseLongArray;->put(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static clockTickStrToMillis(Ljava/lang/String;)J
    .locals 4

    .line 727
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/cpu/CpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static readCpuCores(Ljava/io/File;)Landroid/util/IntArray;
    .locals 12

    .line 637
    const-string v0, ","

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 638
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 639
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 638
    const-string v1, "Failed to read CPU cores as the file \'%s\' doesn\'t exist"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 643
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v1

    .line 644
    new-instance v3, Landroid/util/IntArray;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/util/IntArray;-><init>(I)V

    move v5, v4

    .line 645
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 646
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 647
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_5

    .line 650
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    .line 651
    :cond_2
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :goto_1
    move v7, v4

    .line 652
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_7

    .line 653
    aget-object v8, v6, v7

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 654
    array-length v9, v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-lt v9, v10, :cond_4

    .line 655
    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 656
    aget-object v8, v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v9, v8, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    if-gt v9, v8, :cond_6

    .line 661
    invoke-virtual {v3, v9}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 663
    :cond_4
    array-length v9, v8

    if-ne v9, v11, :cond_5

    .line 664
    aget-object v8, v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/util/IntArray;->add(I)V

    goto :goto_4

    .line 666
    :cond_5
    sget-object v8, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v9, "Invalid CPU core range format %s"

    aget-object v10, v6, v7

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return-object v3

    .line 675
    :goto_6
    sget-object v1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "Failed to read CPU cores from %s"

    invoke-static {v1, v0, v3, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 672
    :goto_7
    sget-object v1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 673
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 672
    const-string v3, "Failed to read CPU cores from %s due to incorrect file format"

    invoke-static {v1, v0, v3, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-object v2
.end method

.method public static readCpuFreqKHz(Ljava/io/File;)J
    .locals 5

    .line 580
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 581
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "CPU frequency file %s doesn\'t exist"

    invoke-static {v0, v3, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v1

    .line 585
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 587
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v3, v1

    if-lez p0, :cond_1

    return-wide v3

    :cond_1
    return-wide v1

    :catch_0
    move-exception v0

    .line 591
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v4, "Failed to read integer content from file: %s"

    invoke-static {v3, v0, v4, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-wide v1
.end method

.method public static toCpusetCategoriesStr(I)Ljava/lang/String;
    .locals 2

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 733
    const-string v1, "FLAG_CPUSET_CATEGORY_TOP_APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    .line 736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/16 p0, 0x7c

    .line 737
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :cond_1
    const-string p0, "FLAG_CPUSET_CATEGORY_BACKGROUND"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 282
    const-class v0, Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "*%s*\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 283
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 285
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mCpusetDir = %s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 286
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mCpuFreqDir = %s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 287
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mProcStatFile = %s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 288
    iget-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mIsEnabled = %s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 289
    iget-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mHasTimeInStateFile = %s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 290
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mLastReadUptimeMillis = %d\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 291
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "mMinReadIntervalMillis = %d\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 293
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Cpuset categories by CPU core:\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 294
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v0

    .line 295
    :goto_0
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string v3, "CPU core id = %d, %s\n"

    if-ge v1, v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 297
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 296
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 301
    const-string v1, "Cpu frequency policy directories by policy id:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v0

    .line 303
    :goto_1
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 305
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 304
    const-string v4, "Policy id = %d, Dir = %s\n"

    invoke-virtual {p1, v4, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 309
    const-string v1, "Static cpu frequency policy infos by policy id:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v0

    .line 311
    :goto_2
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 312
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 313
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 312
    const-string v4, "Policy id = %d, %s\n"

    invoke-virtual {p1, v4, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 315
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 317
    const-string v1, "Cpu time in frequency state by policy id:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v0

    .line 319
    :goto_3
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 321
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 320
    const-string v4, "Policy id = %d, Time(millis) in state by CPU frequency(KHz) = %s\n"

    invoke-virtual {p1, v4, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 323
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 325
    const-string v1, "Last read CPU infos:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v0

    .line 327
    :goto_4
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 328
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%s\n"

    invoke-virtual {p1, v4, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 330
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 332
    const-string v1, "Latest cumulative CPU usage stats by CPU core:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 334
    :goto_5
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 335
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 336
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 335
    invoke-virtual {p1, v3, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 338
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 340
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public init()Z
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring duplicate CpuInfoReader init request"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    return p0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    new-instance v1, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 126
    array-length v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 131
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/cpu/CpuInfoReader;->populateCpuFreqPolicyDirsById([Ljava/io/File;)V

    .line 132
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 133
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 134
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 133
    const-string v2, "Failed to parse CPU frequency policy directory paths: %s"

    invoke-static {p0, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuInfoReader;->readStaticPolicyInfo()V

    .line 138
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 139
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 140
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 139
    const-string v2, "Failed to read static CPU frequency policy info from policy dirs: %s"

    invoke-static {p0, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 144
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Missing proc stat file at %s"

    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuInfoReader;->readCpusetCategories()Z

    move-result v0

    if-nez v0, :cond_5

    .line 148
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Failed to read cpuset information from %s"

    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 156
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    if-nez v0, :cond_6

    .line 160
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const-string/jumbo v4, "stats/time_in_state"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    if-nez v0, :cond_7

    .line 164
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "Time in state file not available for any cpufreq policy"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    return v0

    .line 127
    :cond_8
    :goto_1
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 127
    const-string v2, "Missing CPU frequency policy directories at %s"

    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final populateCpuFreqPolicyDirsById([Ljava/io/File;)V
    .locals 5

    .line 404
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 405
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 406
    aget-object v1, p1, v0

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 411
    :cond_0
    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 412
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 413
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v4, "Cached policy directory %s for policy id %s"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final readAvgTimeInStateCpuFrequency(ILjava/io/File;)J
    .locals 1

    .line 529
    invoke-virtual {p0, p2}, Lcom/android/server/cpu/CpuInfoReader;->readTimeInState(Ljava/io/File;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 530
    invoke-virtual {p2}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_2

    .line 535
    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 537
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Added aggregated time in state info for policy id %d"

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    :cond_1
    invoke-static {p2}, Lcom/android/server/cpu/CpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    move-result-wide p0

    return-wide p0

    .line 541
    :cond_2
    invoke-static {v0, p2}, Lcom/android/server/cpu/CpuInfoReader;->calculateDeltaTimeInState(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    .line 543
    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 544
    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 545
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Added latest delta time in state info for policy id %d"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    :cond_3
    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    move-result-wide p0

    return-wide p0

    :cond_4
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public readCpuInfos()Landroid/util/SparseArray;
    .locals 24

    move-object/from16 v0, p0

    .line 186
    iget-boolean v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 190
    iget-wide v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    sub-long v9, v3, v5

    iget-wide v11, v0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    cmp-long v1, v9, v11

    if-gez v1, :cond_1

    .line 192
    sget-object v1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    sub-long/2addr v3, v5

    .line 194
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 192
    const-string v3, "Skipping reading from device and returning the last read CpuInfos. Last read was %d ms ago, min read interval is %d ms"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    return-object v0

    .line 197
    :cond_1
    iput-wide v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    .line 198
    iput-object v2, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 199
    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mShouldReadCpusetCategories:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpusetCategories()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    sget-object v1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 201
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 200
    const-string v5, "Failed to read cpuset information from %s"

    invoke-static {v1, v5, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iput-boolean v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    return-object v2

    .line 205
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader;->readLatestCpuUsageStats()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 206
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_7

    .line 210
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader;->readDynamicPolicyInfo()Landroid/util/SparseArray;

    move-result-object v4

    .line 211
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 212
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to read dynamic policy infos"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 215
    :cond_4
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move v5, v3

    .line 216
    :goto_0
    iget-object v6, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 217
    iget-object v6, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 218
    iget-object v9, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;

    .line 219
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;

    if-nez v10, :cond_6

    .line 221
    sget-object v9, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v10, "Missing dynamic policy info for policy ID %d"

    invoke-static {v9, v10, v6}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    move-object/from16 v23, v4

    goto/16 :goto_6

    .line 224
    :cond_6
    iget-wide v11, v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    cmp-long v13, v11, v7

    if-eqz v13, :cond_7

    iget-wide v13, v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    cmp-long v15, v13, v7

    if-nez v15, :cond_8

    :cond_7
    move-object/from16 v23, v4

    goto/16 :goto_5

    :cond_8
    cmp-long v13, v11, v13

    if-lez v13, :cond_9

    .line 231
    sget-object v9, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 233
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v11, v10, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 231
    const-string v10, "Current CPU frequency (%d) is greater than maximum CPU frequency (%d) for policy ID (%d). Skipping CPU frequency policy"

    invoke-static {v9, v10, v6}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    move v6, v3

    .line 236
    :goto_2
    iget-object v11, v9, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v11}, Landroid/util/IntArray;->size()I

    move-result v11

    if-ge v6, v11, :cond_5

    .line 237
    iget-object v11, v9, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v11, v6}, Landroid/util/IntArray;->get(I)I

    move-result v13

    .line 238
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    if-eqz v11, :cond_a

    .line 240
    sget-object v12, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 241
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    .line 240
    const-string v15, "CPU info already available for the CPU core %d"

    invoke-static {v12, v15, v14}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-boolean v11, v11, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    if-eqz v11, :cond_a

    :goto_3
    move-object/from16 v23, v4

    goto/16 :goto_4

    .line 246
    :cond_a
    iget-object v11, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    const/4 v12, -0x1

    invoke-virtual {v11, v13, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    if-gez v14, :cond_b

    .line 248
    sget-object v11, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 249
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    .line 248
    const-string v13, "Missing cpuset information for the CPU core %d"

    invoke-static {v11, v13, v12}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 252
    :cond_b
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v22, v11

    check-cast v22, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 253
    iget-object v11, v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    invoke-virtual {v11, v13}, Landroid/util/IntArray;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_c

    .line 254
    new-instance v12, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    move-object/from16 v23, v4

    iget-wide v3, v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    const-wide/16 v20, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v3

    invoke-direct/range {v12 .. v22}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_4

    :cond_c
    move-object/from16 v23, v4

    if-nez v22, :cond_d

    .line 263
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 264
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 263
    const-string v12, "Missing CPU usage information for online CPU core %d"

    invoke-static {v3, v12, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 267
    :cond_d
    new-instance v12, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    iget-wide v3, v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    move-object v15, v12

    iget-wide v11, v10, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    move-wide/from16 v20, v11

    move-object v12, v15

    const/4 v15, 0x1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v7

    invoke-direct/range {v12 .. v22}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    .line 270
    invoke-virtual {v2, v13, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 271
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 272
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v12, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "Added %s for CPU core %d"

    invoke-static {v3, v7, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v23

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_2

    .line 226
    :goto_5
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 227
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 226
    const-string v6, "Current and maximum CPU frequency information mismatch/missing for policy ID %d"

    invoke-static {v3, v6, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v23

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_0

    .line 276
    :cond_f
    iput-object v2, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    return-object v2

    .line 207
    :cond_10
    :goto_7
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to read latest CPU usage stats"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final readCpusetCategories()Z
    .locals 10

    const/4 v0, 0x1

    .line 433
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 435
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Missing cpuset directories at %s"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 438
    :cond_0
    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    move v3, v2

    .line 439
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 440
    aget-object v4, v1, v3

    .line 442
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    const-string v6, "background"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "top-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    .line 454
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v7, "cpus"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {v6}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 456
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    move v6, v2

    .line 460
    :goto_2
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 461
    iget-object v7, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/IntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    or-int/2addr v7, v5

    .line 463
    iget-object v8, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/IntArray;->get(I)I

    move-result v9

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 464
    sget-boolean v8, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 465
    sget-object v8, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 466
    invoke-virtual {v4, v6}, Landroid/util/IntArray;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v9, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 465
    const-string v9, "Mapping CPU core id %d with cpuset categories [%s]"

    invoke-static {v8, v9, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    add-int/2addr v6, v0

    goto :goto_2

    .line 457
    :cond_5
    :goto_3
    sget-object v4, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Failed to read CPU cores from %s"

    invoke-static {v4, v6, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    add-int/2addr v3, v0

    goto/16 :goto_0

    .line 470
    :cond_7
    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-lez p0, :cond_8

    return v0

    :cond_8
    return v2
.end method

.method public final readCumulativeCpuUsageStats()Landroid/util/SparseArray;
    .locals 28

    move-object/from16 v1, p0

    .line 699
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 701
    :try_start_0
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 702
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 703
    sget-object v4, Lcom/android/server/cpu/CpuInfoReader;->PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 704
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v27, v0

    goto :goto_1

    .line 707
    :cond_0
    const-string v5, "core"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    const-string/jumbo v7, "userClockTicks"

    .line 708
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v7

    const-string/jumbo v9, "niceClockTicks"

    .line 709
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v9

    const-string/jumbo v11, "sysClockTicks"

    .line 710
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v11

    const-string v13, "idleClockTicks"

    .line 711
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v13

    const-string v15, "iowaitClockTicks"

    .line 712
    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v27, v0

    const-string v0, "irqClockTicks"

    .line 713
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v17

    const-string/jumbo v0, "softirqClockTicks"

    .line 714
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v19

    const-string/jumbo v0, "stealClockTicks"

    .line 715
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v21

    const-string v0, "guestClockTicks"

    .line 716
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v23

    const-string v0, "guestNiceClockTicks"

    .line 717
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v25

    invoke-direct/range {v6 .. v26}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;-><init>(JJJJJJJJJJ)V

    .line 707
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 720
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 721
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 720
    const-string v4, "Failed to read cpu usage stats from %s"

    invoke-static {v3, v0, v4, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v2
.end method

.method public final readDynamicPolicyInfo()Landroid/util/SparseArray;
    .locals 14

    .line 494
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 495
    :goto_0
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 496
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 497
    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 498
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "scaling_cur_freq"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/cpu/CpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    move-result-wide v7

    const-wide/16 v4, 0x0

    cmp-long v6, v7, v4

    if-nez v6, :cond_0

    .line 500
    sget-object v2, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 501
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 500
    const-string v4, "Missing current frequency information at %s"

    invoke-static {v2, v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 504
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/cpu/CpuInfoReader;->readAvgTimeInStateCpuFrequency(ILjava/io/File;)J

    move-result-wide v11

    .line 505
    new-instance v6, Ljava/io/File;

    const-string v9, "affected_cpus"

    invoke-direct {v6, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 506
    invoke-static {v6}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 507
    invoke-virtual {v13}, Landroid/util/IntArray;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 511
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "scaling_max_freq"

    invoke-direct {v6, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/cpu/CpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    move-result-wide v9

    cmp-long v4, v9, v4

    if-nez v4, :cond_2

    .line 513
    sget-object v2, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 514
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 513
    const-string v4, "Missing max CPU frequency information at %s"

    invoke-static {v2, v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 517
    :cond_2
    new-instance v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;

    invoke-direct/range {v6 .. v13}, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;-><init>(JJJLandroid/util/IntArray;)V

    .line 519
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 520
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 521
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 522
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 521
    const-string v4, "Read dynamic policy info %s for policy id %d"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 508
    :cond_3
    :goto_1
    sget-object v2, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to read CPU cores from %s"

    invoke-static {v2, v4, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public final readLatestCpuUsageStats()Landroid/util/SparseArray;
    .locals 6

    .line 682
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuInfoReader;->readCumulativeCpuUsageStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 684
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to read cumulative CPU usage stats"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 687
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 688
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 689
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 690
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 691
    iget-object v5, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    if-nez v5, :cond_1

    goto :goto_1

    .line 692
    :cond_1
    invoke-virtual {v4, v5}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->delta(Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 694
    :cond_2
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    return-object v1
.end method

.method public final readStaticPolicyInfo()V
    .locals 5

    const/4 v0, 0x0

    .line 474
    :goto_0
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 475
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 476
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 477
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "related_cpus"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 478
    invoke-static {v3}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 479
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 484
    :cond_0
    new-instance v3, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;

    invoke-direct {v3, v2}, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;-><init>(Landroid/util/IntArray;)V

    .line 485
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 486
    sget-boolean v2, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 487
    sget-object v2, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 488
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 487
    const-string v3, "Added static policy info %s for policy id %d"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 480
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 481
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 480
    const-string v3, "Failed to read related CPU cores from %s"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final readTimeInState(Ljava/io/File;)Landroid/util/LongSparseLongArray;
    .locals 8

    .line 552
    iget-boolean p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 555
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "stats/time_in_state"

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object p1

    .line 558
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    sget-object p1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    const-string v1, "Empty time in state file at %s"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 562
    :cond_1
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1}, Landroid/util/LongSparseLongArray;-><init>()V

    const/4 v2, 0x0

    .line 563
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 564
    sget-object v3, Lcom/android/server/cpu/CpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 565
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 568
    :cond_2
    const-string v4, "freqKHz"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "time"

    .line 569
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v6

    .line 568
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/LongSparseLongArray;->put(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    .line 573
    :goto_2
    sget-object v1, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 574
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 573
    const-string v2, "Failed to read CPU time in state from file: %s"

    invoke-static {v1, p1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public setCpuFreqDir(Ljava/io/File;)Z
    .locals 4

    .line 350
    new-instance v0, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 352
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/cpu/CpuInfoReader;->populateCpuFreqPolicyDirsById([Ljava/io/File;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 359
    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    const/4 p0, 0x1

    return p0

    .line 361
    :cond_2
    :goto_0
    sget-object v3, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 365
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v0, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 361
    const-string v0, "Failed to set CPU frequency directory to %s. Total CPU frequency policies (%d) under new path is either 0 or not equal to initial total CPU frequency policies. Clearing CPU frequency policy directories"

    invoke-static {v3, v0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return v1

    .line 353
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 353
    const-string v0, "Failed to set CPU frequency directory. Missing policy directories at %s"

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public setCpusetDir(Ljava/io/File;)Z
    .locals 1

    .line 395
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Missing or invalid cpuset directory at %s"

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    .line 399
    :cond_0
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method

.method public setProcStatFile(Ljava/io/File;)Z
    .locals 1

    .line 380
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    sget-object p0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Missing proc stat file at %s"

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method

.method public stopPeriodicCpusetReading()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mShouldReadCpusetCategories:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuInfoReader;->readCpusetCategories()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/android/server/cpu/CpuMonitorService;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 173
    const-string v3, "Failed to read cpuset information from %s"

    invoke-static {v0, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iput-boolean v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    :cond_0
    return-void
.end method
