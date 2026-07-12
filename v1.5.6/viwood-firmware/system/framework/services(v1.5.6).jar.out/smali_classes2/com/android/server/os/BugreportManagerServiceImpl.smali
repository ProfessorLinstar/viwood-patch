.class public Lcom/android/server/os/BugreportManagerServiceImpl;
.super Landroid/os/IDumpstate$Stub;
.source "BugreportManagerServiceImpl.java"


# static fields
.field public static final DEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS:J

.field public static final sFeatureFlags:Lcom/android/server/os/FeatureFlags;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBugreportAllowlistedPackages:Landroid/util/ArraySet;

.field public final mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

.field public final mFinishedBugreports:Landroid/util/LocalLog;

.field public final mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mNumberFinishedBugreports:I

.field public mPreDumpedDataUid:Ljava/util/OptionalInt;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBugreportFileManager(Lcom/android/server/os/BugreportManagerServiceImpl;)Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentDumpstateListener(Lcom/android/server/os/BugreportManagerServiceImpl;)Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFinishedBugreports(Lcom/android/server/os/BugreportManagerServiceImpl;)Landroid/util/LocalLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumberFinishedBugreports(Lcom/android/server/os/BugreportManagerServiceImpl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentDumpstateListener(Lcom/android/server/os/BugreportManagerServiceImpl;Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNumberFinishedBugreports(Lcom/android/server/os/BugreportManagerServiceImpl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/os/BugreportManagerServiceImpl;->DEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smcallerToString(Landroid/util/Pair;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->callerToString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/os/BugreportManagerServiceImpl;->DEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS:J

    .line 115
    new-instance v0, Lcom/android/server/os/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/os/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/os/BugreportManagerServiceImpl;->sFeatureFlags:Lcom/android/server/os/FeatureFlags;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 459
    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 460
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object v1

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    .line 462
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "system"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "bugreport-mapping.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;-><init>(Landroid/content/Context;Landroid/util/ArraySet;Landroid/util/AtomicFile;)V

    .line 459
    invoke-direct {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V
    .locals 2

    .line 466
    invoke-direct {p0}, Landroid/os/IDumpstate$Stub;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 119
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 127
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    .line 467
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 468
    invoke-virtual {p1}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 469
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 470
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 471
    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    invoke-virtual {p1}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->getMappingFile()Landroid/util/AtomicFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;-><init>(Landroid/util/AtomicFile;)V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 472
    invoke-virtual {p1}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->getAllowlistedPackages()Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public static callerToString(Landroid/util/Pair;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 974
    const-string p0, "N/A"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelBugreport(ILjava/lang/String;)V
    .locals 3

    .line 554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/4 v0, 0x1

    .line 555
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(Ljava/lang/String;IZ)V

    .line 557
    const-string v0, "BugreportManagerService"

    const-string v1, "Cancelling bugreport for %s / %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v1

    if-nez v1, :cond_0

    .line 561
    const-string p0, "BugreportManagerService"

    const-string p1, "cancelBugreport: Could not find native dumpstate service"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 569
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 571
    :try_start_2
    const-string p2, "BugreportManagerService"

    const-string v1, "RemoteException in cancelBugreport"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    .line 574
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final clearBugreportFlag(II)I
    .locals 0

    .line 0
    not-int p0, p2

    and-int/2addr p0, p1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 927
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string p3, "BugreportManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 929
    :cond_0
    const-string p1, "Allow-listed packages: %s\n"

    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 931
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 932
    :try_start_0
    const-string p3, "Pre-dumped data UID: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    invoke-virtual {p3}, Ljava/util/OptionalInt;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 934
    const-string/jumbo p3, "none"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    .line 936
    :cond_1
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    invoke-virtual {p3}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 939
    :goto_0
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    if-nez p3, :cond_2

    .line 940
    const-string p3, "Not taking a bug report"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 942
    :cond_2
    invoke-static {p3, p2}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->-$$Nest$mdump(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;Ljava/io/PrintWriter;)V

    .line 945
    :goto_1
    iget p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    const/4 v0, 0x1

    if-nez p3, :cond_3

    .line 946
    const-string p3, "No finished bugreports"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 948
    :cond_3
    const-string v1, "%d finished bugreport%s. Last %d:\n"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 949
    iget v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    if-le v2, v0, :cond_4

    const-string/jumbo v3, "s"

    goto :goto_2

    :cond_4
    const-string v3, ""

    :goto_2
    const/16 v4, 0x14

    .line 950
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, v3, v2}, [Ljava/lang/Object;

    move-result-object p3

    .line 948
    invoke-virtual {p2, v1, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 951
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    const-string v1, "  "

    invoke-virtual {p3, v1, p2}, Landroid/util/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 953
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    invoke-static {p1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->-$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 956
    :try_start_1
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    invoke-static {p1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->-$$Nest$fgetmReadBugreportMapping(Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 957
    const-string p1, "Has not read bugreport mapping"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_7

    .line 959
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    invoke-static {p1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->-$$Nest$fgetmBugreportFiles(Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 960
    const-string v1, "%d pending file%s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-le p1, v0, :cond_6

    const-string/jumbo v0, "s"

    goto :goto_5

    :cond_6
    const-string v0, ""

    :goto_5
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    if-lez p1, :cond_7

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_8

    .line 963
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    invoke-static {v1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->-$$Nest$fgetmBugreportFiles(Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 964
    iget-object v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    invoke-static {v2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->-$$Nest$fgetmBugreportFiles(Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 965
    const-string v3, "  %s: %s\n"

    invoke-static {v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->callerToString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 968
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 970
    :cond_8
    monitor-exit p3

    return-void

    :goto_7
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 953
    :goto_8
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final enforcePermission(Ljava/lang/String;IZ)V
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 677
    iget-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 681
    :try_start_0
    iget-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    invoke-virtual {p2}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->getRoleManagerWrapper()Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    move-result-object p2

    const-string v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {p2, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 682
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    throw p0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 688
    iget-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 695
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_2

    .line 697
    :try_start_1
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 698
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x1

    if-ne p0, p2, :cond_2

    .line 703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    throw p0

    .line 703
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not hold the DUMP permission or is not bugreport-whitelisted or does not have an allowed role "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    .line 710
    const-string p1, "and does not have carrier privileges "

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "to request a bugreport"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 712
    const-string p1, "BugreportManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ensureUserCanTakeBugReport(I)V
    .locals 4

    .line 725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 727
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 729
    :try_start_0
    iget-object v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 730
    invoke-virtual {v3}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 732
    iget-object v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    invoke-virtual {v3}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 736
    :cond_0
    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    .line 737
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v3, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 744
    invoke-virtual {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->isUserAffiliated(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 749
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 747
    const-string v0, "Calling user %s is not an admin user. Only admin users and their profiles are allowed to take bugreport."

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 740
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 741
    throw p0
.end method

.method public final getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .locals 0

    .line 872
    const-string p0, "dumpstate"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object p0

    return-object p0
.end method

.method public final isDumpstateBinderServiceRunningLocked()Z
    .locals 0

    .line 865
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserAffiliated(I)Z
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eq p1, v1, :cond_1

    .line 768
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not affiliated to the device owner."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final logAndThrow(Ljava/lang/String;)V
    .locals 0

    .line 992
    const-string p0, "BugreportManagerService"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public preDumpUiData(Ljava/lang/String;)V
    .locals 2

    .line 478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(Ljava/lang/String;IZ)V

    .line 480
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->preDumpUiDataLocked(Ljava/lang/String;)V

    .line 482
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final preDumpUiDataLocked(Ljava/lang/String;)V
    .locals 2

    .line 776
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 778
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->isDumpstateBinderServiceRunningLocked()Z

    move-result v0

    const-string v1, "BugreportManagerService"

    if-eqz v0, :cond_0

    .line 779
    const-string p0, "\'dumpstate\' is already running. Cannot pre-dump data while another operation is currently in progress."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    if-nez v0, :cond_1

    .line 786
    const-string p0, "Unable to get bugreport service"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 791
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IDumpstate;->preDumpUiData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    .line 802
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    return-void

    :catchall_0
    move-exception p1

    .line 798
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    .line 799
    throw p1

    .line 798
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    return-void
.end method

.method public final reportError(Landroid/os/IDumpstateListener;I)V
    .locals 0

    .line 984
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onError() transaction threw RemoteException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BugreportManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v2, p8

    .line 583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v0, 0x0

    .line 584
    invoke-virtual {v1, v8, v9, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(Ljava/lang/String;IZ)V

    .line 586
    const-string v3, "BugreportManagerService"

    const-string v4, "Retrieving bugreport for %s / %d"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v8, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    :try_start_0
    iget-object v10, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v11, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 589
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v13, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v16, 0x0

    move/from16 v14, p3

    move-object/from16 v15, p5

    .line 588
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->ensureCallerPreviouslyGeneratedFile(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 597
    iget-object v10, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 598
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->isDumpstateBinderServiceRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    const-string v0, "BugreportManagerService"

    const-string v3, "\'dumpstate\' is already running. Cannot retrieve a bugreport while another one is currently in progress."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 601
    invoke-virtual {v1, v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 603
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 606
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v3

    if-nez v3, :cond_1

    .line 608
    const-string v0, "BugreportManagerService"

    const-string v3, "Unable to get bugreport service"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 609
    invoke-virtual {v1, v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 610
    monitor-exit v10

    return-void

    .line 613
    :cond_1
    iget-object v4, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    invoke-virtual {v4, v8, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->canSkipConsentScreen(Ljava/lang/String;Z)Z

    move-result v11

    .line 617
    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    new-instance v4, Landroid/util/Pair;

    .line 618
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    xor-int/lit8 v6, v11, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZ)V

    move-object v8, v0

    move-object v0, v3

    .line 623
    iget-object v2, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v2, v2, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    move-object/from16 v15, p5

    invoke-interface {v2, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 627
    invoke-virtual {v1, v8}, Lcom/android/server/os/BugreportManagerServiceImpl;->setCurrentDumpstateListenerLocked(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v1, v9

    move v7, v11

    move-object v5, v15

    .line 629
    :try_start_2
    invoke-interface/range {v0 .. v8}, Landroid/os/IDumpstate;->retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 632
    :try_start_3
    const-string v1, "BugreportManagerService"

    const-string v2, "RemoteException in retrieveBugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    :goto_0
    monitor-exit v10

    return-void

    :goto_1
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    .line 592
    const-string v3, "BugreportManagerService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 593
    invoke-virtual {v1, v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    return-void
.end method

.method public final setCurrentDumpstateListenerLocked(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;)V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    if-eqz v0, :cond_0

    .line 640
    const-string/jumbo v1, "setCurrentDumpstateListenerLocked(%s): called when mCurrentDumpstateListener is already set (%s)"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "BugreportManagerService"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    :cond_0
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    return-void
.end method

.method public final startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .locals 9

    .line 889
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    const-string v1, "ctl.start"

    const-string v2, "bugreportd"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    move v3, v1

    move v4, v3

    .line 895
    :goto_0
    const-string/jumbo v5, "ms)"

    const-string v6, "BugreportManagerService"

    if-nez v3, :cond_2

    .line 896
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->getDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    const-string p0, "Got bugreport service handle."

    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    int-to-long v7, v2

    .line 901
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting to get dumpstate service handle ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v5, v4

    const-wide/16 v7, 0x7530

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 909
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out waiting to get dumpstate service handle ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    .locals 3

    .line 491
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    invoke-virtual {p0, p5}, Lcom/android/server/os/BugreportManagerServiceImpl;->validateBugreportMode(I)V

    .line 495
    invoke-virtual {p0, p6}, Lcom/android/server/os/BugreportManagerServiceImpl;->validateBugreportFlags(I)V

    .line 497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/4 p9, 0x4

    const/4 v0, 0x0

    if-ne p5, p9, :cond_0

    const/4 p9, 0x1

    goto :goto_0

    :cond_0
    move p9, v0

    .line 498
    :goto_0
    invoke-virtual {p0, p2, p1, p9}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(Ljava/lang/String;IZ)V

    .line 500
    invoke-virtual {p0, p5}, Lcom/android/server/os/BugreportManagerServiceImpl;->ensureUserCanTakeBugReport(I)V

    .line 502
    const-string p9, "BugreportManagerService"

    const-string v1, "Starting bugreport for %s / %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p9, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    new-instance p9, Landroid/util/MutableBoolean;

    invoke-direct {p9, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 537
    iget-object p9, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p9

    .line 538
    :try_start_0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/os/BugreportManagerServiceImpl;->startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;Z)V

    .line 547
    monitor-exit p9

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;Z)V
    .locals 13

    move-object v9, p2

    move/from16 v0, p6

    move-object/from16 v2, p7

    .line 810
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->isDumpstateBinderServiceRunningLocked()Z

    move-result v3

    const-string v4, "BugreportManagerService"

    if-eqz v3, :cond_0

    .line 811
    const-string v0, "\'dumpstate\' is already running. Cannot start a new bugreport while another operation is currently in progress."

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 813
    invoke-virtual {p0, v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    return-void

    :cond_0
    and-int/lit8 v3, v0, 0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 818
    iget-object v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    invoke-virtual {v3}, Ljava/util/OptionalInt;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 819
    invoke-virtual {p0, v0, v5}, Lcom/android/server/os/BugreportManagerServiceImpl;->clearBugreportFlag(II)I

    move-result v0

    .line 821
    const-string v3, "Ignoring BUGREPORT_FLAG_USE_PREDUMPED_UI_DATA. No pre-dumped data is available."

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    move v10, v0

    goto :goto_1

    .line 823
    :cond_2
    iget-object v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    invoke-virtual {v3}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 824
    invoke-virtual {p0, v0, v5}, Lcom/android/server/os/BugreportManagerServiceImpl;->clearBugreportFlag(II)I

    move-result v0

    .line 826
    const-string v3, "Ignoring BUGREPORT_FLAG_USE_PREDUMPED_UI_DATA. Data was pre-dumped by a different UID."

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    and-int/lit8 v0, v10, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v5

    move v5, v3

    :goto_2
    and-int/lit8 v6, v10, 0x4

    if-eqz v6, :cond_4

    move v6, v0

    move v7, v3

    goto :goto_3

    :cond_4
    move v6, v3

    move v7, v6

    .line 837
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v3

    if-nez v3, :cond_5

    .line 839
    const-string v0, "Unable to get bugreport service"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 840
    invoke-virtual {p0, v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    return-void

    .line 843
    :cond_5
    iget-object v4, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    xor-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, p2, v8}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->canSkipConsentScreen(Ljava/lang/String;Z)Z

    move-result v11

    move v4, v0

    .line 845
    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    move v8, v4

    new-instance v4, Landroid/util/Pair;

    .line 846
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v4, v12, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v5, :cond_6

    if-nez v11, :cond_6

    move v7, v8

    :cond_6
    move v8, v5

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V

    move-object v7, v0

    move-object v0, v3

    .line 850
    invoke-virtual {p0, v7}, Lcom/android/server/os/BugreportManagerServiceImpl;->setCurrentDumpstateListenerLocked(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;)V

    move v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p8

    move-object v2, v9

    move v6, v10

    move v9, v11

    .line 852
    :try_start_0
    invoke-interface/range {v0 .. v9}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 859
    :catch_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/os/BugreportManagerServiceImpl;->cancelBugreport(ILjava/lang/String;)V

    return-void
.end method

.method public final stopDumpstateBinderServiceLocked()V
    .locals 2

    .line 921
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    const-string v0, "ctl.stop"

    const-string v1, "bugreportd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final validateBugreportFlags(I)V
    .locals 2

    const/4 v0, 0x7

    .line 661
    invoke-virtual {p0, p1, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->clearBugreportFlag(II)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 666
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown bugreport flags: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BugreportManagerService"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final validateBugreportMode(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown bugreport mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BugreportManagerService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
