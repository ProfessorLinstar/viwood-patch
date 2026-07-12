.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public static final HEAP_DUMP_PATH:Ljava/io/File;

.field public static sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

.field public static sPendingWtfs:Ljava/util/LinkedList;


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

.field public mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field public final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field public mEntropyMixer:Lcom/android/server/EntropyMixer;

.field public final mFactoryTestMode:I

.field public mFirstBoot:Z

.field public mIncrementalServiceHandle:J

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field public final mRuntimeRestart:Z

.field public final mRuntimeStartElapsedTime:J

.field public final mRuntimeStartUptime:J

.field public final mStartCount:I

.field public mSystemContext:Landroid/content/Context;

.field public mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field public mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field public mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mZygotePreload:Ljava/util/concurrent/Future;


# direct methods
.method public static synthetic $r8$lambda$0ek3wX68xKbgZMUwZfiBRkUNTFs()V
    .locals 2

    .line 1756
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1757
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1758
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1759
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$2PdG6KuU0ZTvilD515PGrttj0sk(III)V
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 633
    :catch_0
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    if-le v3, p0, :cond_0

    .line 636
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 637
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 638
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 641
    const-string v6, "System"

    const/16 v7, 0x16c

    if-le v3, p0, :cond_1

    if-nez v0, :cond_1

    .line 642
    const-string v0, "fdtrack enable threshold reached, enabling"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-static {v7, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 647
    const-string v0, "fdtrack"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    move v0, v4

    goto :goto_1

    :cond_1
    if-le v3, p1, :cond_2

    .line 650
    const-string v4, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    .line 651
    invoke-static {v7, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 655
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 656
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_1

    .line 659
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v6, v8, v1

    if-lez v6, :cond_4

    const-wide/32 v1, 0x36ee80

    add-long/2addr v8, v1

    if-eqz v0, :cond_3

    move v4, v5

    .line 662
    :cond_3
    invoke-static {v7, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v8

    :cond_4
    :goto_1
    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    .line 670
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static synthetic $r8$lambda$CJLFlg8wnqihjN12r-2Qq_1qSd8()V
    .locals 2

    .line 1749
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1750
    const-string v1, "StartISensorManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1751
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 1752
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$CKXj3ds6gqFm1f6gBL5oAqAHviY(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CQoJ9no8PBCQWigXqZnOQkSAyrE(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p17}, Lcom/android/server/SystemServer;->lambda$startOtherServices$6(Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SEp7M2CWq7mEDzo8pfMdSQNkGv4()V
    .locals 5

    .line 1578
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1580
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1581
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1582
    array-length v3, v0

    if-lez v3, :cond_0

    sget-boolean v3, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    .line 1583
    invoke-virtual {v3, v0}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    const-string v0, "Unable to preload default resources for secondary"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 1586
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1588
    :goto_1
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$W9fBdZlq2B12i1BBxZIhG9kbSqM(Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x6

    .line 3446
    const-string/jumbo v1, "tethering"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJe3jwfhMH0kZGfHy8OK7gif2ac(Lcom/android/server/SystemServer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$4()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerService(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 338
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "SystemServer"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 546
    invoke-static {}, Lcom/mediatek/server/MtkSystemServer;->getInstance()Lcom/mediatek/server/MtkSystemServer;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    .line 577
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 500
    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 518
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 697
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 700
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 701
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 702
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide v7, v3

    move-wide v9, v5

    .line 703
    invoke-static/range {v3 .. v10}, Landroid/os/Process;->setStartTimes(JJJJ)V

    if-le v0, v2, :cond_0

    move v1, v2

    .line 707
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    return-void
.end method

.method public static dumpHprof()V
    .locals 7

    .line 589
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 590
    sget-object v1, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 591
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 594
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fdtrack-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 597
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "System"

    if-lt v1, v2, :cond_4

    .line 602
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 604
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 605
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clean up hprof "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 612
    :cond_4
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/heapdump/fdtrack-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".hprof"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 616
    const-string v1, "Failed to dump fdtrack hprof"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method public static getMaxFd()I
    .locals 5

    const/4 v0, 0x0

    .line 557
    :try_start_0
    const-string v1, "/dev/null"

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :try_start_1
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 567
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 560
    :try_start_2
    const-string v2, "System"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get maximum fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 564
    :try_start_3
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 567
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    const v0, 0x7fffffff

    return v0

    :goto_1
    if-eqz v0, :cond_1

    .line 564
    :try_start_4
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 567
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 570
    :cond_1
    :goto_2
    throw v1
.end method

.method public static handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .locals 6

    .line 3723
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/16 p0, 0x3e8

    .line 3725
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string/jumbo v2, "system_server"

    iget-object v5, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    const/4 v3, -0x1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 3728
    const-string/jumbo v3, "system_server"

    const/4 v5, 0x3

    const/16 v0, 0x50

    move v4, v1

    const/16 v1, 0x3e8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3731
    const-class p0, Lcom/android/server/SystemServer;

    monitor-enter p0

    .line 3732
    :try_start_0
    sget-object p1, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez p1, :cond_0

    .line 3733
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    sput-object p1, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 3735
    :cond_0
    :goto_0
    sget-object p1, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, v2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3736
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 692
    new-instance p0, Lcom/android/server/SystemServer;

    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method public static spawnFdLeakCheckThread()V
    .locals 5

    .line 624
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x640

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 625
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 626
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 628
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 675
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startISensorManagerService()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method public static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 3707
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3708
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3709
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x100

    .line 3710
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3712
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3713
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method


# virtual methods
.method public final createSystemContext()V
    .locals 2

    .line 1128
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1129
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const p0, 0x1030424

    .line 1130
    invoke-virtual {v1, p0}, Landroid/content/Context;->setTheme(I)V

    .line 1132
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 1133
    invoke-virtual {v0, p0}, Landroid/content/Context;->setTheme(I)V

    .line 1134
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    return-void
.end method

.method public final deviceHasConfigString(Landroid/content/Context;I)Z
    .locals 0

    .line 3611
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3612
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 717
    iget-boolean p2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Runtime restart: %b\n"

    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 718
    iget p2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Start count: %d\n"

    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 719
    const-string p2, "Runtime start-up time: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 721
    const-string p2, "Runtime start-elapsed time: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .locals 0

    .line 712
    const-class p0, Lcom/android/server/SystemServer;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isFirstBootOrUpgrade()Z
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$startOtherServices$4()V
    .locals 3

    .line 3302
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 3304
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3305
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3306
    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 3307
    iget-object p0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 3308
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final synthetic lambda$startOtherServices$6(Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 10

    move-object/from16 v2, p7

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    .line 3276
    const-string v0, "Making services ready"

    const-string v5, "SystemServer"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3278
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x226

    invoke-virtual {v0, p1, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3279
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3280
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3284
    const-string/jumbo v6, "observing native crashes"

    invoke-virtual {p0, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3286
    :goto_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3288
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3290
    :try_start_1
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v6, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 3292
    const-string/jumbo v6, "registering app ops policy"

    invoke-virtual {p0, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3294
    :goto_1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3300
    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v6, "WebViewFactoryPreparation"

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 3301
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_0
    move-object v8, v7

    :goto_2
    if-eqz p2, :cond_3

    .line 3313
    const-string p2, "StartCarServiceHelperService"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3314
    iget-object p2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v0, "com.android.internal.car.CarServiceHelperService"

    .line 3315
    invoke-virtual {p2, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object p2

    .line 3316
    instance-of v0, p2, Landroid/util/Dumpable;

    if-eqz v0, :cond_1

    .line 3317
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v9, p2

    check-cast v9, Landroid/util/Dumpable;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 3319
    :cond_1
    instance-of v0, p2, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v0, :cond_2

    .line 3320
    check-cast p2, Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-virtual {p3, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    .line 3322
    :cond_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_3
    if-eqz p4, :cond_6

    .line 3326
    const-string p2, "StartWearService"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const p2, 0x10402f4

    .line 3328
    invoke-virtual {p5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 3331
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3335
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 3336
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 p2, 0x100

    .line 3337
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3338
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p5, p3, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_3

    .line 3340
    :cond_4
    const-string p2, "Null wear service component name."

    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_6
    if-eqz p6, :cond_7

    .line 3352
    const-string p2, "EnableAirplaneModeInSafeMode"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 3354
    :try_start_2
    invoke-virtual {v2, p2}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p2, v0

    .line 3356
    const-string p3, "enabling Airplane Mode during Safe Mode bootup"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3358
    :goto_4
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3360
    :cond_7
    const-string p2, "MakeNetworkManagementServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p8, :cond_8

    .line 3363
    :try_start_3
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->systemReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object p2, v0

    .line 3366
    const-string/jumbo p3, "making Network Managment Service ready"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 3371
    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v7

    .line 3373
    :cond_9
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3375
    sget-object p2, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string p3, "SystemServer:NetworkStatsService systemReady"

    invoke-virtual {p2, p3}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3376
    const-string p2, "MakeConnectivityServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    .line 3379
    :try_start_4
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object p2, v0

    .line 3382
    const-string/jumbo p3, "making Connectivity Service ready"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3384
    :cond_a
    :goto_6
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3386
    sget-object p2, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string p3, "SystemServer:ConnectivityService systemReady"

    invoke-virtual {p2, p3}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3387
    const-string p2, "MakeVpnManagerServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p10, :cond_b

    .line 3390
    :try_start_5
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object p2, v0

    .line 3393
    const-string/jumbo p3, "making VpnManagerService ready"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3395
    :cond_b
    :goto_7
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3396
    const-string p2, "MakeNetworkPolicyServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v3, :cond_c

    .line 3399
    :try_start_6
    invoke-virtual {v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object p2, v0

    .line 3402
    const-string/jumbo p3, "making Network Policy Service ready"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3404
    :cond_c
    :goto_8
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3406
    const-string p2, "SystemServer:NetworkPolicyManagerService systemReady"

    .line 3407
    sget-object p3, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {p3, p2}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3409
    iget-object p2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 3413
    const-string p2, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v8, :cond_d

    .line 3416
    invoke-static {v8, v6}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3418
    :cond_d
    iget-object p2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 p3, 0x258

    invoke-virtual {p2, p1, p3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3419
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v4, :cond_e

    .line 3422
    const-string p2, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {v4, p1}, Lcom/android/server/HsumBootUserInitializer;->systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3424
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3427
    :cond_e
    const-string p2, "StartNetworkStack"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3434
    :try_start_7
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkStackClient;->start()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object p2, v0

    .line 3436
    const-string/jumbo p3, "starting Network Stack"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3438
    :goto_9
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3440
    const-string p2, "StartTethering"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3443
    :try_start_8
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object p2

    const-string p3, "android.net.ITetheringConnector"

    const-string p4, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p2, p3, p4, v0}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object p2, v0

    .line 3451
    const-string/jumbo p3, "starting Tethering"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3453
    :goto_a
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3455
    const-string p2, "MakeCountryDetectionServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p12, :cond_f

    .line 3458
    :try_start_9
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object p2, v0

    .line 3461
    const-string p3, "Notifying CountryDetectorService running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3463
    :cond_f
    :goto_b
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3464
    const-string p2, "MakeNetworkTimeUpdateReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p13, :cond_10

    .line 3467
    :try_start_a
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    move-object p2, v0

    .line 3470
    const-string p3, "Notifying NetworkTimeService running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3472
    :cond_10
    :goto_c
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3485
    const-string p2, "MakeTelephonyRegistryReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p15, :cond_11

    .line 3488
    :try_start_b
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object p2, v0

    .line 3491
    const-string p3, "Notifying TelephonyRegistry running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3493
    :cond_11
    :goto_d
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3494
    const-string p2, "MakeMediaRouterServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p16, :cond_12

    .line 3497
    :try_start_c
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    move-object p2, v0

    .line 3500
    const-string p3, "Notifying MediaRouterService running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3502
    :cond_12
    :goto_e
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3503
    iget-object p2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p3, "android.hardware.telephony"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 3504
    const-string p2, "MakeMmsServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p17, :cond_13

    .line 3506
    :try_start_d
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v0

    move-object p2, v0

    .line 3508
    const-string p3, "Notifying MmsService running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3510
    :cond_13
    :goto_f
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3513
    :cond_14
    const-string p2, "IncidentDaemonReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3517
    :try_start_e
    const-string p2, "incident"

    .line 3518
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 3517
    invoke-static {p2}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 3520
    invoke-interface {p2}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v0

    move-object p2, v0

    .line 3523
    const-string p3, "Notifying incident daemon running"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3525
    :cond_15
    :goto_10
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3527
    sget-object p2, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string p3, "SystemServer:PhaseThirdPartyAppsCanStart"

    invoke-virtual {p2, p3}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3528
    iget-wide p2, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_16

    .line 3529
    const-string p2, "MakeIncrementalServiceReady"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3530
    iget-wide p2, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {p2, p3}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 3531
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3534
    :cond_16
    const-string p2, "OdsignStatsLogger"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3536
    :try_start_f
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    move-object p2, v0

    .line 3538
    const-string p3, "Triggering OdsignStatsLogger"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3540
    :goto_11
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final performPendingShutdown()V
    .locals 8

    .line 1068
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1070
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 1071
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1074
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    if-le v4, v5, :cond_1

    .line 1075
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 1085
    const-string/jumbo v4, "recovery-update"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1086
    new-instance v4, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1090
    :try_start_0
    invoke-static {v4, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1092
    const-string v4, "Error reading uncrypt package file"

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v6, :cond_2

    .line 1095
    const-string v2, "/data"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1096
    new-instance v2, Ljava/io/File;

    const-string v4, "/cache/recovery/block.map"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1097
    const-string p0, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1104
    :cond_2
    new-instance v0, Lcom/android/server/SystemServer$3;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    .line 1113
    invoke-virtual {p0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1114
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public final reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1063
    const-string p0, "***********************************************"

    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOT FAILURE "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final run()V
    .locals 13

    .line 800
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 804
    :try_start_0
    new-instance v3, Landroid/tracing/perfetto/InitArguments;

    const/4 v4, 0x2

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    invoke-static {v3}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 808
    const-string v3, "InitBeforeStartServices"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 811
    const-string/jumbo v3, "sys.system_server.start_count"

    iget v4, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string/jumbo v3, "sys.system_server.start_elapsed"

    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string/jumbo v3, "sys.system_server.start_uptime"

    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget v3, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 816
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xbc3

    .line 815
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 819
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 829
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 830
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 832
    const-string/jumbo v4, "persist.sys.locale"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 839
    invoke-static {v0}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 841
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 844
    const-string v1, "FULL"

    sput-object v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 847
    invoke-static {v1}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 850
    const-string v3, "SystemServer"

    const-string v4, "Entered the Android system server!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/16 v5, 0xbc2

    .line 852
    invoke-static {v5, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 853
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v6, 0xf0

    if-nez v5, :cond_1

    const/16 v5, 0x13

    .line 854
    invoke-static {v6, v5, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 860
    :cond_1
    sget-object v3, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v4, "Android:SysServerInit_START"

    invoke-virtual {v3, v4}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 868
    const-string/jumbo v3, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 875
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 879
    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 883
    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 886
    invoke-static {v0}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 889
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v3, 0x1f

    .line 892
    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v3, -0x2

    .line 895
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x0

    .line 897
    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 898
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 899
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const-wide/16 v7, 0x64

    const-wide/16 v9, 0xc8

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 902
    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 905
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v4

    .line 906
    iget-object v5, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v5, v4}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 912
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 916
    const-string v4, "android_servers"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 919
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 922
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_2

    .line 923
    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V

    .line 928
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 931
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 934
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 937
    const-string/jumbo v5, "system_server_dumper"

    iget-object v7, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 938
    iget-object v5, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v5, p0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 941
    new-instance v7, Lcom/android/server/SystemServiceManager;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, v5}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 942
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 944
    iget-object v5, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v5, v7}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 946
    const-class v5, Lcom/android/server/SystemServiceManager;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v5, v7}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    const-string v5, "System"

    if-eqz v4, :cond_3

    .line 959
    :try_start_1
    const-string/jumbo v4, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 960
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x3d

    .line 961
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 962
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v7, v0

    .line 964
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    :try_start_2
    invoke-static {v3, v0, v1}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 969
    :catch_0
    :try_start_3
    const-string v0, "*************************************************"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "********** Failed to load jvmti plugin: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 975
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 978
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    sget-object v3, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v4, v7}, Lcom/mediatek/server/MtkSystemServer;->setPrameters(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V

    .line 980
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 985
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->create()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    .line 986
    invoke-static {v0}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    .line 990
    :try_start_4
    const-string v0, "StartServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 993
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkBootstrapServices()V

    .line 994
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 996
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkCoreServices()V

    .line 997
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 998
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1001
    invoke-virtual {p0, v2}, Lcom/android/server/SystemServer;->updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1002
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logSystemServerStarted()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1008
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1011
    invoke-static {v1}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1013
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1014
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x14

    .line 1015
    invoke-static {v6, v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemServerTiming"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_4
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 1037
    new-instance v0, Lcom/android/server/SystemServer$2;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    .line 1045
    sget-object p0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v0, "Android:SysServerInit_END"

    invoke-virtual {p0, v0}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1048
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1049
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Main thread loop unexpectedly exited"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 1004
    :try_start_5
    const-string v0, "******************************************"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v0, "************ Failure starting system services"

    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 1008
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1009
    throw p0

    .line 975
    :goto_2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 976
    throw p0
.end method

.method public final startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 5

    .line 3577
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.crash_system"

    const/4 v1, 0x0

    .line 3578
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3579
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 3582
    :cond_1
    :goto_0
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3585
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 3586
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 3587
    invoke-virtual {v1}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3588
    invoke-virtual {v1}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v1

    .line 3589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3590
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3591
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_2

    .line 3593
    :cond_2
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3595
    :goto_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_1

    .line 3599
    :cond_3
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 3601
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 3677
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3678
    const-string p0, "SystemServer"

    const-string p1, "AttentionService is not configured on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3682
    :cond_0
    const-string p1, "StartAttentionManagerService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3683
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3684
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 10

    .line 1144
    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "moveab"

    const-string/jumbo v2, "startBootstrapServices"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1146
    const-string v2, "ArtModuleServiceInitializer"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1154
    new-instance v2, Landroid/os/ArtModuleServiceManager;

    invoke-direct {v2}, Landroid/os/ArtModuleServiceManager;-><init>()V

    invoke-static {v2}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 1155
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1159
    const-string v2, "StartWatchdog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1160
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 1161
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 1162
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v3, v2}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1163
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1179
    const-string v3, "InitializeProtoLog"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1180
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 1181
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1185
    const-string v3, "PlatformCompat"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1186
    new-instance v3, Lcom/android/server/compat/PlatformCompat;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1187
    const-string/jumbo v4, "platform_compat"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1188
    new-instance v4, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v4, v3}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v5, "platform_compat_native"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v4, 0x0

    .line 1190
    new-array v5, v4, [J

    new-array v6, v4, [J

    invoke-static {v5, v6}, Landroid/app/AppCompatCallbacks;->install([J[J)V

    .line 1191
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1196
    const-string v5, "StartFileIntegrityService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1197
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1198
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1203
    const-string v5, "StartInstaller"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1204
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Installer;

    .line 1205
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1209
    const-string v6, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1210
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1211
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1215
    const-string v6, "StartFeatureFlagsService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1216
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/flags/FeatureFlagsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1217
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1220
    const-string v6, "UriGrantsManagerService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1221
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1222
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1224
    const-string v6, "StartPowerStatsService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1226
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1227
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1229
    const-string v6, "StartIStatsService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1230
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1231
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1235
    const-string v6, "MemtrackProxyService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1236
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1237
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1240
    const-string v6, "StartAccessCheckingService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1241
    new-instance v6, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-direct {v6}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;-><init>()V

    const-class v7, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    invoke-static {v7, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1243
    new-instance v6, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-direct {v6}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    const-class v7, Lcom/android/server/appop/AppOpMigrationHelper;

    invoke-static {v7, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1245
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1246
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1249
    const-string v6, "StartActivityManager"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1251
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1252
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v6

    .line 1253
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v7, v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1255
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1256
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1257
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1258
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1261
    const-string v6, "StartDataLoaderManagerService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1262
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1264
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1267
    const-string v6, "StartIncrementalService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1269
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1275
    const-string v6, "StartPowerManager"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1276
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1277
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1279
    const-string v6, "StartThermalManager"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1280
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1281
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1285
    const-string v6, "InitPowerManagement"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1286
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1287
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1290
    const-string v6, "StartRecoverySystemService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1291
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1292
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1301
    const-string v6, "StartLightsService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1302
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/lights/LightsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1303
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1305
    const-string v6, "StartDisplayOffloadService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1307
    const-string v6, "config.enable_display_offload"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1308
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1310
    :cond_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1314
    const-string v6, "StartDisplayManager"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1315
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1316
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1319
    const-string v6, "WaitForDisplay"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1320
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x64

    invoke-virtual {v6, p1, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1321
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1324
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v7, 0xf0

    if-nez v6, :cond_1

    const/16 v6, 0xe

    .line 1328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1325
    invoke-static {v7, v6, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1331
    :cond_1
    const-string v6, "StartDomainVerificationService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1332
    new-instance v6, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1333
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v9

    invoke-direct {v6, v8, v9, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 1334
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v8, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1335
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1337
    const-string v8, "StartPackageManagerService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1339
    :try_start_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1340
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    move v9, v4

    :goto_0
    invoke-static {v8, v5, v6, v9}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1344
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1348
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1349
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1351
    const-string v0, "DexUseManagerLocal"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1354
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1355
    invoke-static {v5}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v5

    .line 1354
    invoke-static {v0, v5}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1356
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1358
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xf

    .line 1362
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1359
    invoke-static {v7, v0, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1366
    :cond_3
    const-string v0, "config.disable_otadexopt"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1368
    const-string v0, "StartOtaDexOptService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1370
    :try_start_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v5}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1375
    :goto_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1373
    :try_start_2
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-virtual {p0, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 1375
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1377
    throw p0

    .line 1380
    :cond_4
    :goto_2
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_5

    .line 1381
    const-string v0, "StartArcSystemHealthService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.arc.health.ArcSystemHealthService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1383
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1386
    :cond_5
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1388
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1391
    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1393
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1396
    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1398
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1401
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1405
    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1407
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1411
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1414
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1416
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1419
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1421
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1422
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1423
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1425
    const-string v0, "StartSensorPrivacyService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1427
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1429
    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    .line 1431
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1432
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1437
    :cond_6
    const-string v0, "StartSensorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1438
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/sensors/SensorService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1439
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1440
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_2
    move-exception p0

    .line 1344
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1345
    throw p0
.end method

.method public final startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    .line 3638
    const-string v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3640
    const-string v1, "SystemServer"

    if-eqz v0, :cond_1

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3641
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3643
    const-string v2, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3645
    :cond_0
    const-string p0, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const v0, 0x1040236

    .line 3652
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3653
    const-string p0, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v0, 0x1040237

    .line 3656
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3657
    const-string p1, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    :cond_3
    const-string p1, "StartContentCaptureService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3665
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3667
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3668
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz p1, :cond_4

    .line 3669
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p0, :cond_4

    .line 3670
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 3673
    :cond_4
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    .line 1447
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1450
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1452
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1454
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1457
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1460
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1462
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1463
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1462
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1464
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1467
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1470
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1474
    :cond_0
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1476
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1479
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1481
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1484
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1486
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1489
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1491
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1494
    const-string v0, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1496
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1499
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1501
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1504
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1506
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1509
    const-string v0, "StartRemoteProvisioningService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1511
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1515
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_2

    .line 1517
    :cond_1
    const-string v0, "CpuMonitorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1518
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1519
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1522
    :cond_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 3563
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3564
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v0, "com.android.server.ondeviceintelligence.OnDeviceIntelligenceManagerService"

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3565
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1529
    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1530
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1532
    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1547
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1550
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1552
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1555
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.type.pc"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    move v8, v5

    .line 1557
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureWatch(Landroid/content/Context;)Z

    move-result v5

    .line 1559
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "org.chromium.arc"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 1562
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.software.leanback"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    .line 1565
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureAutomotive(Landroid/content/Context;)Z

    move-result v11

    .line 1567
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.vr.high_performance"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 1576
    :try_start_0
    new-instance v13, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v13}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>()V

    const-string v14, "SecondaryZygotePreload"

    invoke-static {v13, v14}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1592
    const-string v13, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v2, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1593
    const-string/jumbo v13, "sec_key_att_app_id_provider"

    new-instance v14, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v14, v6}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v13, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1595
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1597
    const-string v13, "StartKeyChainSystemService"

    invoke-virtual {v2, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1598
    iget-object v13, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v13, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1599
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1601
    const-string v13, "StartBinaryTransparencyService"

    invoke-virtual {v2, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1602
    iget-object v13, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v13, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1603
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1605
    const-string v13, "StartSchedulingPolicyService"

    invoke-virtual {v2, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1606
    const-string/jumbo v13, "scheduling_policy"

    new-instance v14, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v14}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v13, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1607
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1611
    iget-object v13, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v14, "android.hardware.microphone"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    iget-object v13, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v14, "android.software.telecom"

    .line 1612
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    iget-object v13, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v14, "android.hardware.telephony"

    .line 1613
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1614
    :cond_0
    const-string v13, "StartTelecomLoaderService"

    invoke-virtual {v2, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1615
    iget-object v13, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v13, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1616
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1619
    :cond_1
    const-string v13, "StartTelephonyRegistry"

    invoke-virtual {v2, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1620
    new-instance v13, Lcom/android/server/TelephonyRegistry;

    new-instance v14, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v14}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v13, v6, v14}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V

    .line 1622
    const-string/jumbo v14, "telephony.registry"

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1623
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1625
    const-string v14, "StartEntropyMixer"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1626
    new-instance v14, Lcom/android/server/EntropyMixer;

    invoke-direct {v14, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v14, v1, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1627
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1629
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1632
    const-string v14, "StartAccountManagerService"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1633
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    invoke-virtual {v14, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1634
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1636
    const-string v14, "StartContentService"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1637
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/content/ContentService$Lifecycle;

    invoke-virtual {v14, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1638
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1640
    const-string v14, "InstallSystemProviders"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1641
    iget-object v14, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1643
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    invoke-virtual {v14, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1645
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1646
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1651
    const-string v14, "StartDropBoxManager"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1652
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v14, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1653
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1656
    const-string v14, "StartEnhancedConfirmationService"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1657
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v15, "com.android.ecm.EnhancedConfirmationService"

    invoke-virtual {v14, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1658
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1661
    const-string v14, "StartHintManager"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1662
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v14, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1663
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1666
    const-string v14, "StartRoleManagerService"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1667
    const-class v14, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v15, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v15, v3}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v14, v15}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1669
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.role.RoleService"

    invoke-virtual {v3, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1670
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1674
    const-string v3, "StartSupervisionService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1675
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-virtual {v3, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1676
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v10, :cond_2

    if-nez v7, :cond_2

    .line 1680
    const-string v3, "StartVibratorManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1681
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v3, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1682
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1685
    :cond_2
    const-string v3, "StartDynamicSystemService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1686
    new-instance v3, Lcom/android/server/DynamicSystemService;

    invoke-direct {v3, v6}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V

    .line 1687
    const-string v14, "dynamic_system"

    invoke-static {v14, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1688
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1690
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v14, "android.hardware.consumerir"

    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1691
    const-string v3, "StartConsumerIrService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1692
    new-instance v3, Lcom/android/server/ConsumerIrService;

    invoke-direct {v3, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    .line 1693
    const-string v14, "consumer_ir"

    invoke-static {v14, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1694
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1698
    :cond_3
    const-string v3, "StartAlarmManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1699
    sget-object v3, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v3}, Lcom/mediatek/server/MtkSystemServer;->startMtkAlarmManagerService()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1700
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1702
    :cond_4
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1704
    const-string v3, "StartInputManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1706
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/input/InputManagerService$Lifecycle;

    invoke-virtual {v3, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/InputManagerService$Lifecycle;

    .line 1707
    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$Lifecycle;->getService()Lcom/android/server/input/InputManagerService;

    move-result-object v15

    .line 1711
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1713
    const-string v3, "DeviceStateManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1714
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v3, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1715
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_5

    .line 1718
    const-string v0, "StartCameraServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1719
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1720
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1723
    :cond_5
    const-string v0, "StartWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1725
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1726
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    new-instance v14, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v14}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v6, v15, v0, v14, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    .line 1728
    const-string/jumbo v0, "window"

    const/16 v14, 0x13

    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1735
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1737
    const-string v0, "SetWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1738
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1739
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1741
    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1743
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1748
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V

    const-string v4, "StartISensorManagerService"

    invoke-static {v0, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1755
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    const-string v4, "StartHidlServices"

    invoke-static {v0, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    if-nez v5, :cond_6

    if-eqz v12, :cond_6

    .line 1763
    const-string v0, "StartVrManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1764
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1765
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1768
    :cond_6
    const-string v0, "StartInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1770
    invoke-virtual {v15}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1771
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1774
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1775
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1776
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1778
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 1779
    const-string v0, "SystemServer"

    const-string v4, "No Bluetooth Service (factory test)"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1780
    :cond_7
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.bluetooth"

    .line 1781
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1782
    const-string v0, "SystemServer"

    const-string v4, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1784
    :cond_8
    const-string v0, "StartBluetoothService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1785
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.bluetooth.BluetoothService"

    const-string v12, "/apex/com.android.bt/javalib/service-bluetooth.jar"

    invoke-virtual {v0, v4, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1787
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1790
    :goto_0
    const-string v0, "IpConnectivityMetrics"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1791
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1792
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1794
    const-string v0, "NetworkWatchlistService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1795
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1796
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1798
    const-string v0, "PinnerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1799
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1800
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1802
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1803
    const-string v0, "ProfcollectForwardingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1804
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1805
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1808
    :cond_9
    const-string v0, "SignedConfigService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1809
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1810
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1813
    const-string v0, "AppIntegrityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1814
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1815
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1818
    const-string v0, "StartLogcatManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1819
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1820
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v5, :cond_a

    if-nez v10, :cond_a

    if-nez v11, :cond_a

    if-nez v7, :cond_a

    .line 1824
    const-string v0, "StartIntrusionDetectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1825
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1826
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1829
    :cond_a
    invoke-static {v6}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1830
    const-string v0, "StartAppFunctionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1831
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/appfunctions/AppFunctionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1832
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_b
    if-nez v5, :cond_c

    if-nez v10, :cond_c

    if-nez v11, :cond_c

    if-nez v7, :cond_c

    .line 1837
    const-string v0, "StartAdvancedProtectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1838
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1839
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_c
    if-nez v5, :cond_d

    if-nez v10, :cond_d

    if-nez v11, :cond_d

    .line 1843
    const-string v0, "StartTradeInModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1844
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/TradeInModeService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1845
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1853
    :cond_d
    const-string v0, "ENoteSettingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1854
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/ENoteSettingService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1855
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1857
    const-string v0, "ENotePopWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1858
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/ENotePopWindowManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1859
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3b

    .line 1869
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1875
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "airplane_mode_on"

    const/4 v12, 0x1

    invoke-static {v0, v4, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1877
    :cond_e
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1110040

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1878
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v0, v4, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1889
    :cond_f
    :goto_1
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_11

    .line 1890
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1891
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1040269

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1893
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1894
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_2

    .line 1897
    :cond_10
    :try_start_1
    const-string v0, "SystemServer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Starting custom IMMS: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1900
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "starting "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1903
    :goto_2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1905
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1907
    :try_start_2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 1909
    const-string/jumbo v4, "starting Accessibility Manager"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1911
    :goto_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1917
    const-string/jumbo v0, "persist.sys.focusmonitor.config"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 1918
    const-string v0, "StartRefreshSyncService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1920
    :try_start_3
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/RefreshSyncService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 1922
    const-string/jumbo v4, "starting RefreshSync Service"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1924
    :goto_4
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1929
    :cond_11
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1931
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 1933
    const-string/jumbo v4, "making display ready"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1935
    :goto_5
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1937
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_12

    .line 1938
    const-string v0, "0"

    const-string/jumbo v4, "system_init.startmountservice"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1939
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1945
    :try_start_5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/StorageManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1946
    const-string/jumbo v0, "mount"

    .line 1947
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1946
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    .line 1949
    const-string/jumbo v4, "starting StorageManagerService"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1951
    :goto_6
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1953
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1955
    :try_start_6
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    .line 1957
    const-string/jumbo v4, "starting StorageStatsService"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1959
    :goto_7
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1965
    :cond_12
    const-string v0, "StartUiModeManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1966
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1967
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1969
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1971
    :try_start_7
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    .line 1973
    const-string/jumbo v4, "starting LocaleManagerService service"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1975
    :goto_8
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1977
    const-string v0, "StartGrammarInflectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1979
    :try_start_8
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    .line 1981
    const-string/jumbo v4, "starting GrammarInflectionService service"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1983
    :goto_9
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1985
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1986
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1987
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1989
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1990
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 1991
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1993
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1995
    :try_start_9
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v4, "dexopt"

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1996
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 2000
    :goto_a
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v4, "dexopt"

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    goto :goto_b

    :catchall_8
    move-exception v0

    .line 1998
    :try_start_a
    const-string/jumbo v4, "update packages"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3a

    goto :goto_a

    .line 2002
    :goto_b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2004
    const-string v0, "UpdateMetricsIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2005
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updateMetricsIfNeeded()V

    .line 2006
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2008
    const-string v0, "PerformFstrimIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2010
    :try_start_b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception v0

    .line 2012
    const-string/jumbo v4, "performing fstrim"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2014
    :goto_c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2017
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_13

    move/from16 v21, v5

    move-object v5, v13

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto/16 :goto_45

    .line 2020
    :cond_13
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2022
    :try_start_c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2023
    const-string/jumbo v0, "lock_settings"

    .line 2024
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2023
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    move-object v12, v0

    goto :goto_d

    :catchall_a
    move-exception v0

    .line 2026
    const-string/jumbo v12, "starting LockSettingsService service"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    .line 2028
    :goto_d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2030
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, ""

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2032
    const-string v14, "StartPersistentDataBlock"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2033
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v19, 0x0

    const-class v4, Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v14, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2034
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_e

    :cond_14
    const/16 v19, 0x0

    .line 2037
    :goto_e
    sget-boolean v4, Landroid/os/Build;->IS_ARC:Z

    if-eqz v4, :cond_15

    const-string/jumbo v4, "ro.boot.dev_mode"

    const/4 v14, 0x0

    invoke-static {v4, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v14, 0x1

    if-ne v4, v14, :cond_15

    .line 2038
    const-string v4, "StartArcPersistentDataBlock"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2039
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    invoke-virtual {v4, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2040
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2043
    :cond_15
    const-string v4, "StartTestHarnessMode"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2044
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v4, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2045
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v0, :cond_16

    .line 2047
    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2049
    :cond_16
    const-string v0, "StartOemLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2050
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2051
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2054
    :cond_17
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2055
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2056
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2060
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2061
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2062
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2064
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2066
    :try_start_d
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V

    .line 2067
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 2068
    const-string/jumbo v14, "statusbar"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    move-object/from16 v20, v4

    const/16 v4, 0x14

    move/from16 v21, v5

    const/4 v5, 0x0

    :try_start_e
    invoke-static {v14, v0, v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception v0

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v21, v5

    .line 2071
    :goto_f
    const-string/jumbo v4, "starting StatusBarManagerService"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2073
    :goto_10
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const v0, 0x1040248

    .line 2075
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2077
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2078
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2079
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_11

    .line 2081
    :cond_18
    const-string v0, "SystemServer"

    const-string v4, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :goto_11
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2086
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2087
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2088
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2089
    invoke-virtual {v1, v6, v2}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    if-eqz v21, :cond_19

    .line 2093
    const-string v0, "SystemServer"

    const-string v4, "Not starting WearableSensingService"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2091
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2095
    :goto_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const v0, 0x104022e

    .line 2097
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2099
    const-string v0, "StartAmbientContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2100
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2101
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_13

    .line 2103
    :cond_1a
    const-string v0, "SystemServer"

    const-string v4, "AmbientContextManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :goto_13
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2108
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2109
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const v0, 0x104022f

    .line 2112
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2113
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2114
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2115
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_14

    .line 2117
    :cond_1b
    const-string v0, "SystemServer"

    const-string v4, "AppPredictionService not defined by OEM"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    const v0, 0x1040238

    .line 2121
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2122
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2123
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2124
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_15

    .line 2126
    :cond_1c
    const-string v0, "SystemServer"

    const-string v4, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    const v0, 0x1040254

    .line 2130
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2131
    const-string v0, "StartSearchUiService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2132
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2133
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1d
    const v0, 0x1040257

    .line 2137
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2138
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2139
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2140
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_16

    .line 2142
    :cond_1e
    const-string v0, "SystemServer"

    const-string v4, "SmartspaceManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    const v0, 0x104023c

    .line 2146
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2148
    const-string v0, "StartContextualSearchService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2149
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2150
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_17

    .line 2152
    :cond_1f
    const-string v0, "SystemServer"

    const-string v4, "ContextualSearchManagerService not defined or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :goto_17
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2157
    :try_start_f
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    goto :goto_18

    :catchall_d
    move-exception v0

    .line 2159
    const-string v4, "initializing ConnectivityModuleConnector"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2161
    :goto_18
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2163
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2165
    :try_start_10
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    goto :goto_19

    :catchall_e
    move-exception v0

    .line 2167
    const-string v4, "initializing NetworkStackClient"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2169
    :goto_19
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2171
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2173
    :try_start_11
    invoke-static {v6}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    move-result-object v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    .line 2174
    :try_start_12
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    goto :goto_1b

    :catchall_f
    move-exception v0

    goto :goto_1a

    :catchall_10
    move-exception v0

    move-object/from16 v4, v19

    .line 2176
    :goto_1a
    const-string/jumbo v5, "starting NetworkManagement Service"

    invoke-virtual {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2178
    :goto_1b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2180
    const-string v0, "StartFontManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2181
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v5, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v5, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2182
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v21, :cond_20

    goto :goto_1c

    .line 2185
    :cond_20
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2186
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2187
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_1c
    if-nez v18, :cond_21

    .line 2191
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2192
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2193
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2194
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2197
    :cond_21
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2198
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2199
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2201
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2204
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.NetworkStatsServiceInitializer"

    const-string v14, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v5, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2206
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2208
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2210
    :try_start_13
    new-instance v5, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v5, v6, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    .line 2212
    :try_start_14
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    goto :goto_1e

    :catchall_11
    move-exception v0

    goto :goto_1d

    :catchall_12
    move-exception v0

    move-object/from16 v5, v19

    .line 2214
    :goto_1d
    const-string/jumbo v14, "starting NetworkPolicy Service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2216
    :goto_1e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2218
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v14, "android.hardware.wifi"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2221
    const-string v0, "StartWifi"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2222
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.wifi.WifiService"

    move-object/from16 v18, v4

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v14, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2224
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2225
    const-string v0, "StartWifiScanning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2226
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v4, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2228
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_1f

    :cond_22
    move-object/from16 v18, v4

    .line 2231
    :goto_1f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1110138

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2233
    const-string v0, "StartWifiUsd"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2234
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.usd.UsdService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v4, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2236
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2239
    :cond_23
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2241
    const-string v0, "StartRttService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2242
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.rtt.RttService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v4, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2244
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2247
    :cond_24
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.aware"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2249
    const-string v0, "StartWifiAware"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2250
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.aware.WifiAwareService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v4, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2252
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2255
    :cond_25
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.direct"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2257
    const-string v0, "StartWifiP2P"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2258
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v14, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v4, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2260
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2263
    :cond_26
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.lowpan"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2265
    const-string v0, "StartLowpan"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2266
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2267
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2270
    :cond_27
    const-string v0, "StartPacProxyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2272
    :try_start_15
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v6}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V

    .line 2273
    const-string/jumbo v4, "pac_proxy"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_13

    goto :goto_20

    :catchall_13
    move-exception v0

    .line 2275
    const-string/jumbo v4, "starting PacProxyService"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2277
    :goto_20
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2279
    const-string v0, "StartConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2283
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.ConnectivityServiceInitializer"

    const-string v14, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v4, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2285
    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2286
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2288
    const-string v0, "StartSecurityStateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2290
    :try_start_16
    const-string/jumbo v0, "security_state"

    new-instance v4, Lcom/android/server/SecurityStateManagerService;

    invoke-direct {v4, v6}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    goto :goto_21

    :catchall_14
    move-exception v0

    .line 2293
    const-string/jumbo v4, "starting SecurityStateManagerService"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2295
    :goto_21
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2298
    const-string v0, "EnoteDeviceCheckService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2300
    :try_start_17
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/EnoteDeviceCheckService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_15

    goto :goto_22

    :catchall_15
    move-exception v0

    .line 2302
    const-string/jumbo v4, "starting EnoteDeviceCheckService service"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2304
    :goto_22
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v21, :cond_28

    .line 2318
    const-string v0, "SystemServer"

    const-string v4, "Not starting VpnManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v19

    goto :goto_25

    .line 2307
    :cond_28
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2309
    :try_start_18
    invoke-static {v6}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    .line 2310
    :try_start_19
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    goto :goto_24

    :catchall_16
    move-exception v0

    goto :goto_23

    :catchall_17
    move-exception v0

    move-object/from16 v4, v19

    .line 2312
    :goto_23
    const-string/jumbo v14, "starting VPN Manager Service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2314
    :goto_24
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2323
    :goto_25
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastB()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2324
    const-string v0, "StartVcnManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2333
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.ConnectivityServiceInitializerB"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_19

    move-object/from16 v22, v4

    :try_start_1b
    const-string v4, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v14, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_18

    goto :goto_27

    :catchall_18
    move-exception v0

    goto :goto_26

    :catchall_19
    move-exception v0

    move-object/from16 v22, v4

    .line 2338
    :goto_26
    const-string/jumbo v4, "starting VCN Management Service"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2340
    :goto_27
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_28

    :cond_29
    move-object/from16 v22, v4

    .line 2343
    :goto_28
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2345
    :try_start_1c
    const-string/jumbo v0, "system_update"

    new-instance v4, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v4, v6}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1a

    goto :goto_29

    :catchall_1a
    move-exception v0

    .line 2348
    const-string/jumbo v4, "starting SystemUpdateManagerService"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2350
    :goto_29
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2352
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2354
    :try_start_1d
    const-string/jumbo v0, "updatelock"

    new-instance v4, Lcom/android/server/UpdateLockService;

    invoke-direct {v4, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1b

    goto :goto_2a

    :catchall_1b
    move-exception v0

    .line 2357
    const-string/jumbo v4, "starting UpdateLockService"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2359
    :goto_2a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2361
    const-string v0, "StartNotificationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2362
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2363
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2364
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2365
    const-string/jumbo v0, "notification"

    .line 2366
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2365
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 2367
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2369
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2370
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2371
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2373
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2375
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1c

    goto :goto_2b

    :catchall_1c
    move-exception v0

    .line 2377
    const-string/jumbo v4, "starting TimeDetectorService service"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2379
    :goto_2b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2381
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2382
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2383
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2385
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2387
    :try_start_1f
    new-instance v4, Lcom/android/server/CountryDetectorService;

    invoke-direct {v4, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1e

    .line 2388
    :try_start_20
    const-string v0, "country_detector"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1d

    goto :goto_2d

    :catchall_1d
    move-exception v0

    goto :goto_2c

    :catchall_1e
    move-exception v0

    move-object/from16 v4, v19

    .line 2390
    :goto_2c
    const-string/jumbo v14, "starting Country Detector"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2392
    :goto_2d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2394
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2396
    :try_start_21
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1f

    goto :goto_2e

    :catchall_1f
    move-exception v0

    .line 2398
    const-string/jumbo v14, "starting TimeZoneDetectorService service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2400
    :goto_2e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2402
    const-string v0, "StartAltitudeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2404
    :try_start_22
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_20

    goto :goto_2f

    :catchall_20
    move-exception v0

    .line 2406
    const-string/jumbo v14, "starting AltitudeService service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2408
    :goto_2f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2410
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2412
    :try_start_23
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_21

    goto :goto_30

    :catchall_21
    move-exception v0

    .line 2414
    const-string/jumbo v14, "starting LocationTimeZoneManagerService service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2416
    :goto_30
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2418
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x111017a

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2419
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2421
    :try_start_24
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_22

    goto :goto_31

    :catchall_22
    move-exception v0

    .line 2423
    const-string/jumbo v14, "starting GnssTimeUpdateService service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2425
    :goto_31
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_2a
    if-nez v21, :cond_2b

    .line 2429
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2431
    :try_start_25
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_23

    goto :goto_32

    :catchall_23
    move-exception v0

    .line 2433
    const-string/jumbo v14, "starting Search Service"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2435
    :goto_32
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2438
    :cond_2b
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x1110198

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2439
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2440
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2441
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_33

    .line 2443
    :cond_2c
    const-string v0, "SystemServer"

    const-string v14, "Wallpaper service disabled by config"

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    const v0, 0x104025d

    .line 2447
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2449
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2450
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2451
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2454
    :cond_2d
    const-string v0, "StartAudioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-nez v9, :cond_2e

    .line 2456
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v23, v4

    goto :goto_35

    .line 2458
    :cond_2e
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1040265

    .line 2459
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2461
    :try_start_26
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_25

    move-object/from16 v23, v4

    :try_start_27
    const-string v4, "$Lifecycle"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_24

    goto :goto_35

    :catchall_24
    move-exception v0

    goto :goto_34

    :catchall_25
    move-exception v0

    move-object/from16 v23, v4

    .line 2463
    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "starting "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2466
    :goto_35
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2468
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2469
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2470
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2472
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.broadcastradio"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2473
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2474
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2475
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_2f
    if-nez v10, :cond_30

    .line 2479
    const-string v0, "StartDockObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2480
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2481
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_30
    if-eqz v21, :cond_31

    .line 2485
    const-string v0, "StartThermalObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2486
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2487
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_31
    if-nez v21, :cond_32

    .line 2491
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2494
    :try_start_28
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v6, v15}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v15, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_26

    goto :goto_36

    :catchall_26
    move-exception v0

    .line 2497
    const-string/jumbo v4, "starting WiredAccessoryManager"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2499
    :goto_36
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2502
    :cond_32
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.midi"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2504
    const-string v0, "StartMidiManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2505
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/midi/MidiService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2506
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2510
    :cond_33
    const-string v0, "StartAdbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2512
    :try_start_29
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/adb/AdbService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_27

    goto :goto_37

    .line 2514
    :catchall_27
    const-string v0, "SystemServer"

    const-string v4, "Failure starting AdbService"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :goto_37
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2518
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.usb.host"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.usb.accessory"

    .line 2519
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_35

    .line 2523
    :cond_34
    const-string v0, "StartUsbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2524
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/usb/UsbService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2525
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_35
    if-nez v21, :cond_36

    .line 2529
    const-string v0, "StartSerialService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2530
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/SerialService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2531
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2534
    :cond_36
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2536
    :try_start_2a
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    .line 2537
    const-string v4, "hardware_properties"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_28

    goto :goto_38

    :catchall_28
    move-exception v0

    .line 2540
    const-string v4, "SystemServer"

    const-string v9, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v4, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2542
    :goto_38
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v21, :cond_37

    .line 2545
    const-string v0, "StartTwilightService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2546
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2547
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2550
    :cond_37
    const-string v0, "StartColorDisplay"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2551
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2552
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2555
    const-string v0, "StartJobScheduler"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2556
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2557
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2559
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2560
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2561
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2563
    const-string v0, "StartTrustManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2564
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2565
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2567
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.backup"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2568
    const-string v0, "StartBackupManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2569
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2570
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2573
    :cond_38
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.app_widgets"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2574
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x111016a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2575
    :cond_39
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2576
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/appwidget/AppWidgetService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2577
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2584
    :cond_3a
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2585
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2586
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2588
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2589
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2590
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2591
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2593
    :cond_3b
    const-string v0, "StartSensorNotification"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2594
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2595
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2597
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.context_hub"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2598
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2599
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2600
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2603
    :cond_3c
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2605
    :try_start_2b
    const-string v0, "diskstats"

    new-instance v4, Lcom/android/server/DiskStatsService;

    invoke-direct {v4, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_29

    goto :goto_39

    :catchall_29
    move-exception v0

    .line 2607
    const-string/jumbo v4, "starting DiskStats Service"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2609
    :goto_39
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2611
    const-string v0, "RuntimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2613
    :try_start_2c
    const-string/jumbo v0, "runtime"

    new-instance v4, Lcom/android/server/RuntimeService;

    invoke-direct {v4, v6}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2a

    goto :goto_3a

    :catchall_2a
    move-exception v0

    .line 2615
    const-string/jumbo v4, "starting RuntimeService"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2617
    :goto_3a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v8, :cond_3e

    if-eqz v21, :cond_3d

    if-eqz v21, :cond_3e

    .line 2620
    :cond_3d
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2622
    :try_start_2d
    new-instance v4, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {v4, v6}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2c

    .line 2623
    :try_start_2e
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2b

    goto :goto_3c

    :catchall_2b
    move-exception v0

    goto :goto_3b

    :catchall_2c
    move-exception v0

    move-object/from16 v4, v19

    .line 2625
    :goto_3b
    const-string/jumbo v8, "starting NetworkTimeUpdate service"

    invoke-virtual {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2627
    :goto_3c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_3d

    :cond_3e
    move-object/from16 v4, v19

    .line 2630
    :goto_3d
    const-string v0, "CertBlocklister"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2632
    :try_start_2f
    new-instance v0, Lcom/android/server/CertBlocklister;

    invoke-direct {v0, v6}, Lcom/android/server/CertBlocklister;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2d

    goto :goto_3e

    :catchall_2d
    move-exception v0

    .line 2634
    const-string/jumbo v8, "starting CertBlocklister"

    invoke-virtual {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2636
    :goto_3e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2640
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2641
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2642
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2645
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2646
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2647
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2650
    const-string v0, "StartDreamManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2651
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2652
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2654
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2655
    const-string v0, "graphicsstats"

    new-instance v8, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v8, v6}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2657
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2659
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_3f

    .line 2660
    const-string v0, "AddCoverageService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2661
    const-string v0, "coverage"

    new-instance v8, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v8}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2662
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2665
    :cond_3f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.print"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2666
    const-string v0, "StartPrintManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2667
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2668
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2671
    :cond_40
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2672
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2673
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2675
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.companion_device_setup"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2676
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2677
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2678
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2681
    :cond_41
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1110197

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2682
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2683
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2684
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2687
    :cond_42
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2688
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2689
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2691
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2692
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2693
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2695
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2696
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2697
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2698
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2701
    :cond_43
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.live_tv"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.leanback"

    .line 2702
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2703
    :cond_44
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2704
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2705
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2708
    :cond_45
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.live_tv"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.leanback"

    .line 2709
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2710
    :cond_46
    const-string v0, "StartTvInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2711
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2712
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2715
    :cond_47
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.tv.tuner"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2716
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2717
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2718
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_48
    if-eqz v10, :cond_49

    .line 2722
    const-string v0, "StartMediaQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2723
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2724
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2727
    :cond_49
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.picture_in_picture"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2728
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2729
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2730
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2733
    :cond_4a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.leanback"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2734
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2735
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2736
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2739
    :cond_4b
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2741
    :try_start_30
    new-instance v8, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v8, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2f

    .line 2742
    :try_start_31
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2e

    goto :goto_40

    :catchall_2e
    move-exception v0

    goto :goto_3f

    :catchall_2f
    move-exception v0

    move-object/from16 v8, v19

    .line 2744
    :goto_3f
    const-string/jumbo v9, "starting MediaRouterService"

    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2746
    :goto_40
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2748
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.hardware.biometrics.face"

    .line 2749
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 2750
    iget-object v9, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v14, "android.hardware.biometrics.iris"

    .line 2751
    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 2752
    iget-object v14, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v24, v0

    const-string v0, "android.hardware.fingerprint"

    .line 2753
    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v24, :cond_4c

    .line 2756
    const-string v14, "StartFaceSensor"

    invoke-virtual {v2, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2757
    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v24, v0

    const-class v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2758
    invoke-virtual {v14, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2759
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_41

    :cond_4c
    move/from16 v24, v0

    :goto_41
    if-eqz v9, :cond_4d

    .line 2763
    const-string v0, "StartIrisSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2764
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2765
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4d
    if-eqz v24, :cond_4e

    .line 2769
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2770
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2771
    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2772
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2776
    :cond_4e
    const-string v0, "StartBiometricService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2777
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2778
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2780
    const-string v0, "StartAuthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2781
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2782
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v21, :cond_4f

    if-nez v10, :cond_4f

    if-nez v11, :cond_4f

    .line 2792
    const-string v0, "StartAuthenticationPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2793
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2794
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4f
    if-nez v21, :cond_50

    .line 2801
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2803
    :try_start_32
    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_30

    goto :goto_42

    :catchall_30
    move-exception v0

    .line 2805
    const-string/jumbo v9, "starting DynamicCodeLoggingService"

    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2807
    :goto_42
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_50
    if-nez v21, :cond_51

    .line 2811
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2813
    :try_start_33
    invoke-static {v6}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_31

    goto :goto_43

    :catchall_31
    move-exception v0

    .line 2815
    const-string v9, "StartPruneInstantAppsJobService"

    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2817
    :goto_43
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2820
    :cond_51
    const-string v0, "StartSelinuxAuditLogsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2822
    :try_start_34
    invoke-static {v6}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_32

    goto :goto_44

    :catchall_32
    move-exception v0

    .line 2824
    const-string/jumbo v9, "starting SelinuxAuditLogsService"

    invoke-virtual {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2826
    :goto_44
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2829
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2830
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2831
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2833
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2834
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2835
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2837
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2838
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2839
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2841
    const-string v0, "StartPeopleService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2842
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2843
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2845
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2846
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2847
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2849
    const-string/jumbo v0, "ro.system_settings.service.backgound_install_control_enabled"

    const/4 v14, 0x1

    .line 2850
    invoke-static {v0, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2852
    const-string v0, "StartBackgroundInstallControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2853
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2854
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_52
    move-object v14, v4

    move-object v10, v5

    move-object v5, v13

    move-object/from16 v9, v18

    move-object/from16 v4, v22

    move-object/from16 v13, v23

    .line 2858
    :goto_45
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2859
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v18, v4

    const-class v4, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2860
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v21, :cond_54

    .line 2864
    const-string v0, "StartWearPowerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2865
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2866
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2868
    const-string v0, "StartHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2869
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2870
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2872
    const-string v0, "StartSystemStateDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2873
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2874
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2876
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2877
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2878
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2880
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2881
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2882
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2884
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_53

    .line 2885
    const-string v0, "StartWearDebugService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2886
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.debug.WearDebugService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2887
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2890
    :cond_53
    const-string v0, "StartWearTimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2891
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2892
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2894
    const-string v0, "StartWearSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2895
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.settings.WearSettingsService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2896
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2898
    const-string v0, "StartWearModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2899
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.clockwork.modes.ModeManagerService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2900
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2919
    :cond_54
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.slices_disabled"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 2920
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2921
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2922
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2925
    :cond_55
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureEmbedded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2926
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2927
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2928
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2932
    :cond_56
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2933
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.stats.StatsCompanion$Lifecycle"

    move-object/from16 v22, v5

    const-string v5, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2935
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2938
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2939
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v5, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2941
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2944
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2945
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2946
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2949
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2950
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2951
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2954
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2955
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2956
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2959
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2960
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2961
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2964
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2965
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2966
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2969
    const-string/jumbo v0, "ro.system_settings.service.odp_enabled"

    const/4 v4, 0x1

    .line 2970
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2971
    const-string v0, "StartOnDevicePersonalizationSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2972
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2973
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2978
    :cond_57
    const-string v0, "StartProfilingCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2979
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "android.os.profiling.ProfilingService$Lifecycle"

    const-string v5, "/apex/com.android.profiling/javalib/service-profiling.jar"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2981
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v7, :cond_58

    .line 2985
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2988
    :cond_58
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2990
    const-string v0, "StartMmsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2991
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/MmsServiceBroker;

    .line 2992
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    move v4, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v0

    goto :goto_46

    :cond_59
    move v4, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v19

    .line 2995
    :goto_46
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.autofill"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2996
    const-string v0, "StartAutoFillService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2997
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2998
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3001
    :cond_5a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.credentials"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 3002
    const-string v0, "credential_manager"

    const-string v5, "enable_credential_manager"

    move/from16 v23, v4

    const/4 v4, 0x1

    .line 3003
    invoke-static {v0, v5, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3009
    const-string v0, "StartCredentialManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3010
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3011
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_47

    .line 3014
    :cond_5b
    const-string v0, "SystemServer"

    const-string v4, "CredentialManager disabled."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_5c
    move/from16 v23, v4

    :goto_47
    const v0, 0x104025b

    .line 3019
    invoke-virtual {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3020
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3021
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3022
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_48

    .line 3024
    :cond_5d
    const-string v0, "SystemServer"

    const-string v4, "TranslationService not defined by OEM"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    :goto_48
    const-string v0, "StartClipboardService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3029
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3030
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3032
    const-string v0, "AppServiceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3033
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3034
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3036
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkOtherServices()V

    .line 3038
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3039
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3040
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3044
    const-string v0, "StartDynamicInstrumentationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3045
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3046
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3051
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v12, :cond_5e

    .line 3054
    :try_start_35
    invoke-interface {v12}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_33

    goto :goto_49

    :catchall_33
    move-exception v0

    .line 3056
    const-string/jumbo v4, "making Lock Settings Service ready"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3059
    :cond_5e
    :goto_49
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3062
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3063
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x1e0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3064
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3068
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 3071
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v17, v8

    const v8, 0x11101cd

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 3069
    invoke-static {v0, v4, v5, v8}, Lcom/android/server/HsumBootUserInitializer;->createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;

    move-result-object v12

    if-eqz v12, :cond_5f

    .line 3073
    const-string v0, "HsumBootUserInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3074
    invoke-virtual {v12, v2}, Lcom/android/server/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3075
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3079
    :cond_5f
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3080
    const-string v0, "CommunalProfileInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3081
    new-instance v0, Lcom/android/server/CommunalProfileInitializer;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v4}, Lcom/android/server/CommunalProfileInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    .line 3083
    invoke-virtual {v0, v2}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3084
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_4a

    .line 3086
    :cond_60
    const-string v0, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3087
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 3088
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3091
    :goto_4a
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3092
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3093
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3095
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3097
    :try_start_36
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_34

    goto :goto_4b

    :catchall_34
    move-exception v0

    .line 3099
    const-string/jumbo v4, "making Window Manager Service ready"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3101
    :goto_4b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3103
    const-string v0, "RegisterLogMteState"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3105
    :try_start_37
    invoke-static {v6}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_35

    goto :goto_4c

    :catchall_35
    move-exception v0

    .line 3107
    const-string v4, "RegisterLogMteState"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3109
    :goto_4c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3112
    const-class v4, Lcom/android/server/SystemService;

    monitor-enter v4

    .line 3113
    :try_start_38
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-eqz v0, :cond_61

    .line 3114
    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 3115
    sput-object v19, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    goto :goto_4d

    :catchall_36
    move-exception v0

    goto/16 :goto_53

    .line 3117
    :cond_61
    :goto_4d
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_36

    if-eqz v7, :cond_62

    .line 3120
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_62
    const/4 v4, 0x0

    .line 3126
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3127
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3128
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3129
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3132
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 3133
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_63

    .line 3134
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 3138
    :cond_63
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3139
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3140
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3142
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3143
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 3144
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3147
    const-string v0, "StartCrashRecoveryModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3148
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->initializeCrashrecoveryModuleService(Lcom/android/server/SystemServiceManager;)V

    .line 3149
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3158
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3161
    :try_start_39
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_37

    goto :goto_4e

    :catchall_37
    move-exception v0

    .line 3163
    const-string/jumbo v4, "making Display Manager Service ready"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3165
    :goto_4e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3167
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 3170
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3171
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1070045

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 3173
    array-length v5, v4

    const/4 v8, 0x0

    :goto_4f
    if-ge v8, v5, :cond_64

    move-object/from16 v19, v3

    aget-object v3, v4, v8

    .line 3174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    const-string v4, "StartDeviceSpecificServices "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3176
    :try_start_3a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_38

    move/from16 v25, v5

    goto :goto_50

    :catchall_38
    move-exception v0

    .line 3178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v5

    const-string/jumbo v5, "starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3180
    :goto_50
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v24

    move/from16 v5, v25

    goto :goto_4f

    :cond_64
    move-object/from16 v19, v3

    .line 3182
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v21, :cond_65

    .line 3189
    const-string v0, "SystemServer"

    const-string v3, "Not starting GameManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3185
    :cond_65
    const-string v0, "GameManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3186
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3187
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3192
    :goto_51
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3193
    const-string v0, "UwbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3194
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.uwb.UwbService"

    const-string v4, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3195
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3198
    :cond_66
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingStackEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3199
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 3200
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 3202
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingCsEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3203
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3205
    :cond_67
    const-string v0, "RangingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3206
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ranging.RangingService"

    const-string v4, "/apex/com.android.uwb/javalib/service-ranging.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3208
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3212
    :cond_68
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3213
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x208

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3214
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3216
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3217
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3218
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3220
    const-string v0, "AppSearchModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3221
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3222
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3224
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 3225
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3226
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3227
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3230
    :cond_69
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3231
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3232
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3234
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3235
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3236
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3238
    const-string v0, "HealthConnectManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3239
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.healthconnect.HealthConnectManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3240
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3242
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.device_lock"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 3243
    const-string v0, "DeviceLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3244
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.devicelock.DeviceLockService"

    const-string v4, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3246
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3251
    :cond_6a
    const-string v0, "StartSensitiveContentProtectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3252
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3253
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3267
    const-string v0, "connectivity"

    .line 3268
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 3275
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    move-object/from16 v27, v3

    move-object/from16 v26, v19

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v16, v22

    move/from16 v3, v23

    invoke-direct/range {v0 .. v18}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v3, v27

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3543
    const-string v0, "LockSettingsThirdPartyAppsStarted"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3544
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 3545
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    if-eqz v0, :cond_6b

    .line 3547
    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 3549
    :cond_6b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3551
    const-string v0, "StartSystemUI"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v3, v26

    .line 3553
    :try_start_3b
    invoke-static {v6, v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_39

    goto :goto_52

    :catchall_39
    move-exception v0

    .line 3555
    const-string/jumbo v3, "starting System UI"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3557
    :goto_52
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3559
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    .line 3117
    :goto_53
    :try_start_3c
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_36

    throw v0

    :catchall_3a
    move-exception v0

    .line 2000
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string v2, "dexopt"

    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2001
    throw v0

    :catchall_3b
    move-exception v0

    .line 1862
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const-string v1, "System"

    const-string v2, "************ Failure starting core service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    throw v0
.end method

.method public final startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 3689
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3690
    const-string p0, "SystemServer"

    const-string p1, "RotationResolverService is not configured on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3694
    :cond_0
    const-string p1, "StartRotationResolverService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3695
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3696
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    const v0, 0x1040259

    .line 3617
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3618
    const-string p0, "SystemServer"

    const-string p1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3622
    :cond_0
    const-string p1, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3623
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3624
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 1120
    const-string p0, "SystemServer"

    const-string v0, "Reading configuration..."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string p0, "ReadingSystemConfig"

    invoke-virtual {p1, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1124
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    .line 3629
    const-string p1, "StartTextToSpeechManagerService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3630
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3631
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 3701
    const-string/jumbo v0, "startWearableSensingService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3702
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3703
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    .line 3605
    const-string v0, "UpdateWatchdogTimeout"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3606
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 3607
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method
