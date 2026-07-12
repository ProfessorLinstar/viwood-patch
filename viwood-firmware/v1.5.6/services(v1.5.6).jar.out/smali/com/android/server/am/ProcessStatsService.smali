.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field public static WRITE_PERIOD:J = 0x1b7740L


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mBaseDir:Ljava/io/File;

.field public mCommitPending:Z

.field public mFile:Landroid/util/AtomicFile;

.field public final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mInjectedScreenState:Ljava/lang/Boolean;

.field public mLastMemOnlyState:I

.field public mLastWriteTime:J

.field public final mLock:Ljava/lang/Object;

.field public mMemFactorLowered:Z

.field public mPendingWrite:Landroid/os/Parcel;

.field public mPendingWriteCommitted:Z

.field public mPendingWriteFile:Landroid/util/AtomicFile;

.field public final mPendingWriteLock:Ljava/lang/Object;

.field public final mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field public mShuttingDown:Z


# direct methods
.method public static synthetic $r8$lambda$gFOgl7-fhr_FeWQN9TFsgKRPU8g(Lcom/android/server/am/ProcessStatsService;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->lambda$scheduleRequestPssAllProcs$0(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUidProcStateStatsOverTime(Lcom/android/server/am/ProcessStatsService;J)Landroid/util/SparseArray;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mperformWriteState(Lcom/android/server/am/ProcessStatsService;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteStateLocked(Lcom/android/server/am/ProcessStatsService;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 125
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 126
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 127
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 128
    monitor-enter v0

    .line 129
    :try_start_0
    new-instance p1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    new-instance p1, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    .line 891
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    const-string v0, "    [--start-testing] [--stop-testing] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    const-string v0, "    [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    const-string v0, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    const-string v0, "    options can be combined to select desired stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    const-string v0, "  --pretend-screen-on: pretend screen is on."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    const-string v0, "  --pretend-screen-off: pretend screen is off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static parseSectionOptions(Ljava/lang/String;)I
    .locals 6

    .line 564
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 565
    array-length v0, p0

    if-nez v0, :cond_0

    const/16 p0, 0x1f

    return p0

    .line 569
    :cond_0
    sget-object v0, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 570
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    .line 571
    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 573
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    aget v4, v5, v4

    or-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 7

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 525
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_8

    .line 526
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    const/16 v6, 0x20

    if-eq v4, v6, :cond_1

    if-eqz v4, :cond_1

    goto :goto_6

    :cond_1
    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    const/4 v6, 0x0

    if-nez v3, :cond_3

    .line 533
    aput-boolean v5, p3, v1

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    .line 534
    aget-boolean v4, p3, v1

    if-eq v4, v5, :cond_4

    .line 535
    const-string p0, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object p0, p4, v1

    return-object v6

    :cond_4
    :goto_3
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_7

    .line 539
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v4, v1

    .line 540
    :goto_4
    array-length v5, p0

    if-ge v4, v5, :cond_6

    .line 541
    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 542
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid word \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v1

    return-object v6

    :cond_7
    add-int/lit8 v3, v2, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 556
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_9

    .line 557
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/2addr p2, p1

    aput p2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    return-object p0
.end method

.method public static protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 706
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 707
    new-instance v1, Lcom/android/server/am/ProcessStatsService$3;

    const-string v2, "ProcessStats pipe output"

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 720
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x0

    .line 721
    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual/range {p0 .. p10}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 931
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 934
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 936
    :try_start_0
    array-length v2, p3

    if-lez v2, :cond_2

    .line 937
    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 940
    :cond_1
    :try_start_1
    const-string v2, "--statsd"

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 945
    :cond_2
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    throw p0
.end method

.method public final dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 6

    const v0, 0x36ee80

    mul-int/2addr p4, v0

    int-to-long v0, p4

    .line 1386
    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1391
    :cond_0
    new-instance p4, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1392
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1393
    invoke-virtual {p4, v0}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 1394
    iget-object p0, p4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p0, :cond_1

    :goto_0
    return-void

    .line 1397
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/16 p0, 0x1f

    .line 1398
    invoke-virtual {p4, p1, p5, p6, p0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1399
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .locals 10

    const-wide/32 v0, 0x36ee80

    mul-long/2addr p2, v0

    .line 865
    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 868
    const-string p0, "Unable to build stats!"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 871
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 p2, 0x0

    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 872
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p2, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 873
    invoke-virtual {v0, p2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 874
    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 875
    const-string p0, "Failure reading: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p7, :cond_2

    move-object/from16 v2, p6

    move/from16 v9, p12

    .line 879
    invoke-virtual {v0, p1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return-void

    :cond_2
    move-object/from16 v2, p6

    move/from16 v9, p12

    if-nez p8, :cond_4

    if-eqz p9, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    move-wide v3, p4

    move/from16 v5, p11

    .line 885
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    return-void

    :cond_4
    :goto_0
    xor-int/lit8 v5, p9, 0x1

    move-object v1, p1

    move-wide v3, p4

    move-object/from16 v2, p6

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    .line 882
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    return-void
.end method

.method public final dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 19

    move-object/from16 v0, p0

    .line 508
    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v8, 0x0

    move-object/from16 v4, p8

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 510
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_0

    .line 512
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v9, p1

    move/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p8

    move-wide/from16 v17, p9

    .line 514
    invoke-static/range {v9 .. v18}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 33
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    .line 969
    new-array v6, v5, [I

    const/4 v10, 0x0

    aput v10, v6, v10

    const/4 v11, 0x1

    const/4 v7, 0x4

    aput v7, v6, v11

    .line 971
    new-array v8, v11, [I

    const/4 v9, 0x3

    aput v9, v8, v10

    .line 973
    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const/16 v13, 0x1f

    if-eqz v0, :cond_26

    move v14, v10

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v21, v19

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v11

    const/16 v20, 0x0

    .line 976
    :goto_0
    array-length v12, v0

    if-ge v14, v12, :cond_25

    .line 977
    aget-object v12, v0, v14

    move/from16 v30, v10

    .line 978
    const-string v10, "--checkin"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v26, v11

    move/from16 v31, v26

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 980
    :cond_0
    const-string v10, "-c"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move/from16 v21, v11

    move/from16 v31, v21

    goto :goto_1

    .line 982
    :cond_1
    const-string v10, "--csv"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move/from16 v16, v11

    move/from16 v31, v16

    goto :goto_1

    .line 984
    :cond_2
    const-string v10, "--csv-screen"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 986
    array-length v6, v0

    if-lt v14, v6, :cond_3

    .line 987
    const-string v0, "Error: argument required for --csv-screen"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 991
    :cond_3
    new-array v6, v11, [Z

    .line 992
    new-array v10, v11, [Ljava/lang/String;

    .line 993
    sget-object v12, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    aget-object v15, v0, v14

    invoke-static {v12, v7, v15, v6, v10}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v12

    if-nez v12, :cond_4

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v10, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1000
    :cond_4
    aget-boolean v15, v6, v30

    move/from16 v31, v11

    move-object v6, v12

    goto :goto_1

    .line 1001
    :cond_5
    const-string v10, "--csv-mem"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    add-int/lit8 v14, v14, 0x1

    .line 1003
    array-length v8, v0

    if-lt v14, v8, :cond_6

    .line 1004
    const-string v0, "Error: argument required for --csv-mem"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1008
    :cond_6
    new-array v8, v11, [Z

    .line 1009
    new-array v10, v11, [Ljava/lang/String;

    .line 1010
    sget-object v12, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v7, v0, v14

    invoke-static {v12, v11, v7, v8, v10}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v7

    if-nez v7, :cond_7

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v10, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1017
    :cond_7
    aget-boolean v27, v8, v30

    move-object v8, v7

    :goto_2
    move/from16 v31, v11

    goto/16 :goto_1

    .line 1018
    :cond_8
    const-string v7, "--csv-proc"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    add-int/lit8 v14, v14, 0x1

    .line 1020
    array-length v7, v0

    if-lt v14, v7, :cond_9

    .line 1021
    const-string v0, "Error: argument required for --csv-proc"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1025
    :cond_9
    new-array v7, v11, [Z

    .line 1026
    new-array v9, v11, [Ljava/lang/String;

    .line 1027
    sget-object v10, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v12, v0, v14

    invoke-static {v10, v11, v12, v7, v9}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v10

    if-nez v10, :cond_a

    .line 1030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v9, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1034
    :cond_a
    aget-boolean v29, v7, v30

    move-object v9, v10

    goto :goto_2

    .line 1035
    :cond_b
    const-string v7, "--details"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move/from16 v22, v11

    move/from16 v31, v22

    goto/16 :goto_1

    .line 1037
    :cond_c
    const-string v7, "--full-details"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move/from16 v23, v11

    move/from16 v31, v23

    goto/16 :goto_1

    .line 1039
    :cond_d
    const-string v7, "--hours"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    add-int/lit8 v14, v14, 0x1

    .line 1041
    array-length v7, v0

    if-lt v14, v7, :cond_e

    .line 1042
    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1047
    :cond_e
    :try_start_0
    aget-object v7, v0, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1049
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --hours argument not an int -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1053
    :cond_f
    const-string v7, "--last"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    add-int/lit8 v14, v14, 0x1

    .line 1055
    array-length v7, v0

    if-lt v14, v7, :cond_10

    .line 1056
    const-string v0, "Error: argument required for --last"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1061
    :cond_10
    :try_start_1
    aget-object v7, v0, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1063
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --last argument not an int -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1067
    :cond_11
    const-string v7, "--max"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    add-int/lit8 v14, v14, 0x1

    .line 1069
    array-length v5, v0

    if-lt v14, v5, :cond_12

    .line 1070
    const-string v0, "Error: argument required for --max"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1075
    :cond_12
    :try_start_2
    aget-object v5, v0, v14

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1077
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --max argument not an int -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1081
    :cond_13
    const-string v7, "--active"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    move/from16 v25, v11

    move/from16 v28, v25

    :goto_3
    move/from16 v31, v28

    goto/16 :goto_1

    .line 1084
    :cond_14
    const-string v7, "--current"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    move/from16 v28, v11

    goto :goto_3

    .line 1086
    :cond_15
    const-string v7, "--commit"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1087
    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1088
    :try_start_3
    iget-object v10, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v12, v11

    iput v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 1089
    invoke-virtual {v1, v11, v11}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 1090
    const-string v10, "Process stats committed."

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    monitor-exit v7

    move/from16 v17, v11

    move/from16 v31, v17

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1093
    :cond_16
    const-string v7, "--section"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    add-int/lit8 v14, v14, 0x1

    .line 1095
    array-length v7, v0

    if-lt v14, v7, :cond_17

    .line 1096
    const-string v0, "Error: argument required for --section"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1100
    :cond_17
    aget-object v7, v0, v14

    invoke-static {v7}, Lcom/android/server/am/ProcessStatsService;->parseSectionOptions(Ljava/lang/String;)I

    move-result v7

    move v13, v7

    goto/16 :goto_2

    .line 1101
    :cond_18
    const-string v7, "--clear"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1102
    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1103
    :try_start_4
    iget-object v10, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    move/from16 v10, v30

    .line 1104
    invoke-virtual {v1, v11, v10}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 1105
    iget-object v12, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1107
    :try_start_5
    invoke-virtual {v1, v10, v11, v11}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_19

    .line 1109
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v11

    :goto_4
    if-ltz v10, :cond_19

    .line 1110
    new-instance v11, Ljava/io/File;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p2

    const/4 v11, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 1114
    :cond_19
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1116
    const-string v0, "All process stats cleared."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    monitor-exit v7

    :goto_5
    const/4 v0, 0x0

    :goto_6
    const/16 v17, 0x1

    :goto_7
    const/16 v31, 0x1

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 1114
    :goto_8
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1115
    throw v0

    .line 1118
    :goto_9
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1119
    :cond_1a
    const-string v0, "--write"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1120
    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1121
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 1122
    const-string v0, "Process stats written."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    monitor-exit v7

    goto :goto_5

    :catchall_3
    move-exception v0

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 1125
    :cond_1b
    const-string v0, "--read"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1126
    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1127
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1129
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v10, v1, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1130
    const-string v0, "Process stats read."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1133
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1135
    monitor-exit v7

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_a

    :catchall_5
    move-exception v0

    .line 1133
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1134
    throw v0

    .line 1135
    :goto_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 1136
    :cond_1c
    const-string v0, "--start-testing"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1137
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 1138
    const-string v0, "Started high frequency sampling."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1140
    :cond_1d
    const-string v0, "--stop-testing"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1141
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 1142
    const-string v0, "Stopped high frequency sampling."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1144
    :cond_1e
    const-string v0, "--pretend-screen-on"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1145
    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1146
    :try_start_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1147
    monitor-exit v7

    goto/16 :goto_5

    :catchall_6
    move-exception v0

    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 1149
    :cond_1f
    const-string v0, "--pretend-screen-off"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1150
    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1151
    :try_start_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1152
    monitor-exit v7

    goto/16 :goto_5

    :catchall_7
    move-exception v0

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    .line 1154
    :cond_20
    const-string v0, "--stop-pretend-screen"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1155
    iget-object v7, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v0, 0x0

    .line 1156
    :try_start_d
    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1157
    monitor-exit v7

    goto/16 :goto_6

    :catchall_8
    move-exception v0

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v0

    :cond_21
    const/4 v0, 0x0

    .line 1159
    const-string v7, "-h"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1160
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 1162
    :cond_22
    const-string v7, "-a"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    const/16 v22, 0x1

    const/16 v24, 0x1

    goto/16 :goto_7

    .line 1165
    :cond_23
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_24

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_24

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_24
    move-object/from16 v20, v12

    const/16 v22, 0x1

    goto/16 :goto_7

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    const/4 v7, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_25
    move-object v7, v8

    move/from16 v0, v18

    move/from16 v8, v19

    move-object/from16 v12, v20

    move/from16 v10, v23

    move/from16 v11, v24

    goto :goto_c

    :cond_26
    const/4 v0, 0x0

    move-object v12, v0

    move-object v7, v8

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    :goto_c
    if-eqz v17, :cond_27

    goto/16 :goto_26

    :cond_27
    if-eqz v16, :cond_2b

    .line 1186
    const-string v0, "Processes running summed over"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v15, :cond_28

    const/4 v0, 0x0

    .line 1188
    :goto_d
    array-length v5, v6

    if-ge v0, v5, :cond_28

    .line 1189
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    aget v5, v6, v0

    invoke-static {v2, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    if-nez v27, :cond_29

    const/4 v0, 0x0

    .line 1194
    :goto_e
    array-length v5, v7

    if-ge v0, v5, :cond_29

    .line 1195
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    aget v5, v7, v0

    invoke-static {v2, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_29
    if-nez v29, :cond_2a

    const/4 v10, 0x0

    .line 1200
    :goto_f
    array-length v0, v9

    if-ge v10, v0, :cond_2a

    .line 1201
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1202
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v5, v9, v10

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 1205
    :cond_2a
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1206
    iget-object v14, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    move-wide v10, v3

    const/4 v3, 0x0

    move-object v5, v6

    move v4, v15

    move/from16 v6, v27

    move/from16 v8, v29

    .line 1207
    :try_start_e
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 1227
    monitor-exit v14

    return-void

    :catchall_9
    move-exception v0

    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    throw v0

    :cond_2b
    move-object v1, v2

    move-object v2, v12

    if-eqz v0, :cond_2c

    .line 1230
    const-string v5, "AGGREGATED OVER LAST "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " HOURS:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    int-to-long v5, v0

    move-wide v7, v5

    move-wide v5, v3

    move-wide v3, v7

    move-object v7, v2

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v12, v25

    move-object v2, v1

    move-object/from16 v1, p0

    .line 1231
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    return-void

    :cond_2c
    move/from16 v23, v10

    move/from16 v9, v22

    move/from16 v12, v25

    move-object/from16 v10, p0

    if-lez v8, :cond_36

    .line 1235
    const-string v0, "LAST STATS AT INDEX "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1243
    :try_start_f
    invoke-virtual {v10, v5, v5, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v8, v5, :cond_2d

    .line 1245
    const-string v2, "Only have "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " data sets"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 1252
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_a
    move-exception v0

    goto/16 :goto_12

    .line 1248
    :cond_2d
    :try_start_10
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1249
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1250
    invoke-virtual {v10, v6, v5}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 1252
    iget-object v7, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1256
    iget-object v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v7, :cond_30

    if-nez v26, :cond_2e

    if-eqz v21, :cond_2f

    .line 1257
    :cond_2e
    const-string v2, "err,"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    :cond_2f
    const-string v2, "Failure reading "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1262
    :cond_30
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1263
    const-string v5, ".ci"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v26, :cond_31

    if-eqz v21, :cond_32

    :cond_31
    move-object v0, v6

    goto :goto_11

    .line 1268
    :cond_32
    const-string v5, "COMMITTED STATS FROM "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    iget-object v5, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_33

    .line 1270
    const-string v0, " (checked in)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    :cond_33
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v9, :cond_34

    if-eqz v23, :cond_35

    :cond_34
    move-object v0, v6

    const/16 v31, 0x1

    goto :goto_10

    :cond_35
    move-object v0, v6

    move v5, v12

    .line 1279
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    return-void

    :goto_10
    xor-int/lit8 v5, v23, 0x1

    move-object/from16 v1, p1

    move v6, v9

    move v7, v11

    move v8, v12

    move v9, v13

    .line 1273
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    if-eqz v11, :cond_4c

    .line 1276
    const-string v0, "  mFile="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    .line 1266
    :goto_11
    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return-void

    .line 1252
    :goto_12
    iget-object v1, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1253
    throw v0

    :cond_36
    move/from16 v22, v9

    if-nez v11, :cond_38

    if-eqz v26, :cond_37

    goto :goto_13

    :cond_37
    move v8, v12

    move v9, v13

    const/16 v30, 0x0

    goto/16 :goto_21

    :cond_38
    :goto_13
    if-nez v28, :cond_37

    .line 1287
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 v31, 0x1

    xor-int/lit8 v0, v26, 0x1

    const/4 v7, 0x0

    .line 1289
    :try_start_11
    invoke-virtual {v10, v7, v7, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_45

    if-eqz v26, :cond_39

    const/4 v0, 0x0

    goto :goto_14

    .line 1291
    :cond_39
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_14
    if-gez v0, :cond_3a

    const/4 v0, 0x0

    :cond_3a
    move v15, v0

    const/4 v5, 0x0

    .line 1295
    :goto_15
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    if-ge v15, v0, :cond_44

    .line 1298
    :try_start_12
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1299
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    const/4 v7, 0x0

    :try_start_13
    invoke-direct {v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1300
    invoke-virtual {v10, v6, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1301
    iget-object v8, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v8, :cond_3d

    if-nez v26, :cond_3b

    if-eqz v21, :cond_3c

    .line 1302
    :cond_3b
    const-string v0, "err,"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1303
    :cond_3c
    const-string v0, "Failure reading "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1304
    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    new-instance v0, Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move/from16 v30, v7

    move v8, v12

    move v9, v13

    goto/16 :goto_1d

    :catchall_b
    move-exception v0

    move/from16 v30, v7

    move v8, v12

    move v9, v13

    goto/16 :goto_1c

    .line 1309
    :cond_3d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1310
    const-string v9, ".ci"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v26, :cond_3e

    if-eqz v21, :cond_3f

    :cond_3e
    move/from16 v30, v7

    move v9, v13

    move-object v13, v8

    move v8, v12

    move-object v12, v0

    move-object v0, v6

    goto/16 :goto_1a

    :cond_3f
    if-eqz v5, :cond_40

    .line 1316
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move/from16 v16, v5

    goto :goto_16

    :cond_40
    const/16 v16, 0x1

    .line 1320
    :goto_16
    :try_start_14
    const-string v5, "COMMITTED STATS FROM "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    iget-object v5, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v9, :cond_41

    .line 1322
    const-string v5, " (checked in)"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_18

    :catchall_c
    move-exception v0

    move/from16 v30, v7

    move v8, v12

    move v9, v13

    :goto_17
    move/from16 v5, v16

    goto/16 :goto_1c

    .line 1323
    :cond_41
    :goto_18
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    if-eqz v23, :cond_42

    move-object v5, v0

    move-object v0, v6

    const/4 v6, 0x0

    move/from16 v30, v7

    const/4 v7, 0x0

    move-object v9, v5

    const/4 v5, 0x0

    move/from16 v32, v13

    move-object v13, v8

    move v8, v12

    move-object v12, v9

    move/from16 v9, v32

    .line 1328
    :try_start_15
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    move v5, v8

    move-object/from16 v1, p1

    move v8, v5

    goto :goto_19

    :catchall_d
    move-exception v0

    move v5, v8

    move-object/from16 v1, p1

    goto :goto_17

    :cond_42
    move/from16 v30, v7

    move v5, v12

    move v9, v13

    move-object v12, v0

    move-object v0, v6

    move-object v13, v8

    .line 1331
    :try_start_16
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    move v8, v5

    :goto_19
    move/from16 v5, v16

    goto :goto_1b

    :catchall_e
    move-exception v0

    move v8, v5

    goto :goto_17

    .line 1313
    :goto_1a
    :try_start_17
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    :goto_1b
    if-eqz v26, :cond_43

    .line 1336
    invoke-virtual {v12}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".ci"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_1d

    :catchall_f
    move-exception v0

    goto :goto_1c

    :catchall_10
    move-exception v0

    move v8, v12

    move v9, v13

    const/16 v30, 0x0

    .line 1340
    :goto_1c
    :try_start_18
    const-string v6, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    :cond_43
    :goto_1d
    add-int/lit8 v15, v15, 0x1

    move v12, v8

    move v13, v9

    goto/16 :goto_15

    :catchall_11
    move-exception v0

    goto :goto_20

    :cond_44
    move/from16 v30, v5

    :goto_1e
    move v8, v12

    move v9, v13

    goto :goto_1f

    :cond_45
    const/16 v30, 0x0

    goto :goto_1e

    .line 1346
    :goto_1f
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_21

    :goto_20
    iget-object v1, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1347
    throw v0

    :goto_21
    if-nez v26, :cond_4c

    .line 1350
    iget-object v12, v10, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    if-eqz v21, :cond_46

    .line 1352
    :try_start_19
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    move v5, v8

    move v13, v9

    move/from16 v9, v22

    goto :goto_24

    :catchall_12
    move-exception v0

    goto/16 :goto_25

    :cond_46
    if-eqz v30, :cond_47

    .line 1355
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1357
    :cond_47
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v22, :cond_48

    if-eqz v23, :cond_49

    :cond_48
    move v5, v8

    goto :goto_22

    .line 1365
    :cond_49
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-object/from16 v1, p1

    move v13, v9

    move/from16 v9, v22

    const/16 v31, 0x1

    goto :goto_23

    .line 1359
    :goto_22
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move v8, v5

    const/16 v31, 0x1

    xor-int/lit8 v5, v23, 0x1

    move-object/from16 v1, p1

    move v7, v11

    move/from16 v6, v22

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    move v5, v8

    move v13, v9

    move v9, v6

    if-eqz v11, :cond_4a

    .line 1362
    const-string v0, "  mFile="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4a
    :goto_23
    move/from16 v30, v31

    .line 1369
    :goto_24
    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    if-nez v28, :cond_4c

    if-eqz v30, :cond_4b

    .line 1372
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1374
    :cond_4b
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v12, v5

    move-wide v5, v3

    const-wide/16 v3, 0x18

    move-object v7, v2

    move/from16 v8, v21

    move-object v2, v1

    move-object v1, v10

    move/from16 v10, v23

    .line 1375
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    move-object v1, v2

    move-wide v3, v5

    move-object v2, v7

    .line 1377
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1378
    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v3, 0x3

    move-object v2, v1

    move-object/from16 v1, p0

    .line 1379
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    goto :goto_26

    .line 1369
    :goto_25
    :try_start_1a
    monitor-exit v12
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    throw v0

    :cond_4c
    :goto_26
    return-void
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .locals 7

    .line 1403
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1407
    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1408
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide v2, 0x10b00000001L

    .line 1409
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1410
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v4, 0x1f

    invoke-virtual {v0, v1, v5, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1411
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1412
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x10b00000002L

    const/4 v4, 0x3

    move-object v0, p0

    .line 1415
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v2, 0x10b00000003L

    const/16 v4, 0x18

    .line 1418
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1420
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1412
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    .locals 9

    const/4 v0, 0x1

    .line 1427
    new-array v0, v0, [Landroid/util/proto/ProtoOutputStream;

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 1429
    new-instance v8, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v8, p1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 1430
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    const-wide/32 v1, 0xf423f

    .line 1431
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 1433
    aget-object p0, v0, p1

    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final getCommittedFilesLF(IZZ)Ljava/util/ArrayList;
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 455
    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_2

    .line 458
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 461
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 462
    aget-object v2, v0, v1

    .line 463
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "state-v2-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    .line 469
    const-string v2, ".ci"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 473
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 477
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCommittedStats(JIZLjava/util/List;)J
    .locals 7

    .line 623
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 640
    const-string v7, "ProcessStatsService"

    invoke-super {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStatsMerged_enforcePermission()V

    .line 643
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 645
    :try_start_0
    invoke-virtual {v1, v8, v8, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 647
    const-string/jumbo v10, "yyyy-MM-dd-HH-mm-ss"

    .line 648
    invoke-static {v10, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 649
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v0

    :goto_0
    if-ltz v11, :cond_4

    .line 650
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :try_start_1
    const-string/jumbo v0, "state-v2-"

    .line 653
    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    .line 654
    const-string v13, ".bin"

    .line 655
    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 652
    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-virtual {v0, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 657
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x10000000

    invoke-static {v0, v13}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 660
    new-instance v13, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v13, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 661
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0, v8}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 662
    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 663
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 664
    iget-wide v13, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v15, v13, v2

    if-lez v15, :cond_0

    move-wide v2, v13

    :cond_0
    if-eqz p4, :cond_1

    .line 668
    invoke-virtual {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    if-eqz v5, :cond_2

    .line 670
    invoke-static {v0, v4}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_2
    :goto_1
    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 673
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure reading process stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 680
    :goto_2
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure to read and parse commit file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    .line 678
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure opening procstat file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    :cond_4
    if-eqz p4, :cond_5

    if-eqz v5, :cond_5

    .line 684
    invoke-static {v6, v4}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 691
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v2

    .line 689
    :goto_5
    :try_start_3
    const-string v4, "Failure opening procstat file"

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 691
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v2

    :goto_6
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 692
    throw v0
.end method

.method public final getCurrentFile()Ljava/io/File;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    throw v0
.end method

.method public getCurrentMemoryState()I
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    iget p0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 802
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 7

    .line 582
    invoke-super {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentStats_enforcePermission()V

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 587
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 588
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    const/4 v5, 0x0

    .line 589
    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 590
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 591
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 594
    :try_start_1
    invoke-virtual {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_0

    .line 598
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 599
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 598
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 600
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 602
    :try_start_3
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 608
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 609
    throw p1

    .line 608
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    .line 590
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public getMemFactorLocked()I
    .locals 1

    .line 224
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMinAssociationDumpDuration()J
    .locals 2

    .line 701
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-wide v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p0

    return-object p0
.end method

.method public getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 2

    .line 173
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 11

    .line 727
    invoke-super {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getStatsOverTime_enforcePermission()V

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 733
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 734
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    const/4 v5, 0x0

    .line 735
    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 736
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v6, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v6

    .line 738
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 739
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    cmp-long v1, v3, p1

    if-gez v1, :cond_2

    const/4 v1, 0x1

    .line 743
    :try_start_1
    invoke-virtual {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 744
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 745
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 746
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats;

    .line 747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 749
    iget-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, p1

    if-gez v1, :cond_1

    .line 751
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    add-int/lit8 v4, v0, -0x1

    .line 753
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v6, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 754
    invoke-virtual {p0, v6, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 755
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 756
    invoke-virtual {v3, v6}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    const-string v1, "Added stats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v1, ", over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-wide v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v9, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 763
    const-string v1, "ProcessStatsService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 765
    :cond_0
    const-string v1, "ProcessStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v4

    goto :goto_0

    .line 770
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 771
    invoke-virtual {v3, v0, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 777
    new-instance v0, Lcom/android/server/am/ProcessStatsService$4;

    const-string v1, "ProcessStats pipe output"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/am/ProcessStatsService$4;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 789
    aget-object p1, p2, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 791
    :goto_2
    :try_start_2
    const-string p2, "ProcessStatsService"

    const-string v0, "Failed building output pipe"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 793
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_3
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 794
    throw p1

    :catchall_1
    move-exception p0

    .line 738
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;
    .locals 9

    .line 806
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>()V

    .line 808
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 809
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 810
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 811
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 812
    invoke-virtual {v0, v4}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 813
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v3, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v5, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v3, v5

    .line 814
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v1, v3, p1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    .line 817
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    .line 819
    invoke-virtual {p0, v2, v2, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 820
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 821
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    .line 822
    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, p1

    if-gez v1, :cond_1

    .line 824
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    add-int/lit8 v5, v4, -0x1

    .line 826
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v6, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 827
    invoke-virtual {p0, v6, v1}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 828
    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 829
    invoke-virtual {v0, v6}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 831
    :cond_0
    const-string v1, "ProcessStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v4, v5

    goto :goto_0

    .line 838
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 839
    throw p1

    .line 841
    :cond_2
    :goto_3
    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 842
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 843
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_3

    .line 844
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 845
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/UidState;

    .line 846
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/UidState;->getAggregatedDurationsInStates()[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    return-object p1

    :catchall_1
    move-exception p0

    .line 814
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final synthetic lambda$scheduleRequestPssAllProcs$0(ZZ)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 322
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 149
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 151
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_0

    .line 152
    const-string p1, "ProcessStatsService"

    const-string p2, "Process Stats Crash"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_0
    throw p0
.end method

.method public final performWriteState(J)V
    .locals 8

    .line 353
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 355
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    const/4 v3, 0x0

    .line 356
    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v1, :cond_0

    .line 358
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 360
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 361
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 362
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 368
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 370
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 371
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 372
    const-string/jumbo v0, "procstats"

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v6, p1

    .line 372
    invoke-static {v0, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    :try_start_2
    const-string p2, "ProcessStatsService"

    const-string v0, "Error writing process statistics"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 379
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    throw p1

    .line 363
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public publish()V
    .locals 3

    .line 852
    const-class v0, Lcom/android/internal/app/procstats/ProcessStatsInternal;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ProcessStatsService$LocalService;-><init>(Lcom/android/server/am/ProcessStatsService;Lcom/android/server/am/ProcessStatsService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 3

    .line 388
    const-string p0, "ProcessStatsService"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p2

    .line 389
    invoke-virtual {p1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 390
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 391
    iget-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring existing stats; "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 444
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 445
    const-string p1, "Error reading process statistics"

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final scheduleRequestPssAllProcs(ZZ)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMemFactorLocked(IZJ)Z
    .locals 8

    .line 185
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 186
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_1
    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, 0x4

    .line 193
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget p2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, p2, :cond_8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v3, v0, p2

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, p2

    .line 198
    :cond_3
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 199
    iput-wide p3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 200
    iget-object p0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_1
    if-ltz p2, :cond_7

    .line 204
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 205
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_6

    .line 206
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 207
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_3
    if-ltz v4, :cond_5

    .line 208
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 209
    iget-object v5, v5, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 210
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_4
    if-ltz v6, :cond_4

    .line 211
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ServiceState;

    .line 212
    invoke-virtual {v7, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 6

    .line 240
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    if-lez p1, :cond_0

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 245
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public shutdown()V
    .locals 3

    .line 253
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 256
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    const/4 v1, 0x1

    .line 257
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 258
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final trimHistoricStatesWriteLF()V
    .locals 5

    .line 485
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    .line 487
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 488
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "state-v2-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    const/4 v2, 0x1

    .line 493
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    .line 497
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 498
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pruning old procstats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProcessStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateFileLocked()V
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 332
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-v2-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    return-void

    :catchall_0
    move-exception v0

    .line 335
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    throw v0
.end method

.method public updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 162
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p0, p2, p6}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public updateTrackingAssociationsLocked(IJ)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    return-void
.end method

.method public writeStateAsync()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 263
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeStateLocked(Z)V
    .locals 2

    .line 274
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    const/4 v1, 0x0

    .line 278
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method public final writeStateLocked(ZZ)V
    .locals 8

    .line 285
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 287
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 288
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 289
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 290
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    if-eqz p2, :cond_1

    .line 292
    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 294
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    new-instance v3, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 296
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    :cond_2
    if-eqz p2, :cond_3

    .line 299
    iget-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p2}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 301
    invoke-virtual {p0, v5, v4}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 303
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    if-nez p1, :cond_4

    .line 307
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {p2, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    monitor-exit v0

    return-void

    .line 314
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void

    .line 314
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final writeStateSyncLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    return-void
.end method
