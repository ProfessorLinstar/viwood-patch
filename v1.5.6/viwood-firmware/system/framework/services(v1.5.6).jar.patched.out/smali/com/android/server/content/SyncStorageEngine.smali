.class public Lcom/android/server/content/SyncStorageEngine;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# static fields
.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field public static final SOURCES:[Ljava/lang/String;

.field public static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field public static sAuthorityRenames:Ljava/util/HashMap;

.field public static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field public final mAccountInfoFile:Landroid/util/AtomicFile;

.field public final mAccounts:Ljava/util/HashMap;

.field final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field public final mCal:Ljava/util/Calendar;

.field public final mChangeListeners:Landroid/os/RemoteCallbackList;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentSyncs:Landroid/util/SparseArray;

.field final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field public mDefaultMasterSyncAutomatically:Z

.field public mGrantSyncAdaptersAccountAccess:Z

.field public final mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

.field public volatile mIsClockValid:Z

.field public volatile mIsJobAttributionFixed:Z

.field public volatile mIsJobNamespaceMigrated:Z

.field public final mLogger:Lcom/android/server/content/SyncLogger;

.field public mMasterSyncAutomatically:Landroid/util/SparseArray;

.field public mNextAuthorityId:I

.field public mNextHistoryId:I

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServices:Landroid/util/ArrayMap;

.field public final mStatisticsFile:Landroid/util/AtomicFile;

.field public final mStatusFile:Landroid/util/AtomicFile;

.field public mSyncDir:Ljava/io/File;

.field public final mSyncHistory:Ljava/util/ArrayList;

.field public mSyncRandomOffset:I

.field public mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mYear:I

.field public mYearInDays:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmPeriodicSyncAddedListener()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 143
    const-string v4, "PERIODIC"

    const-string v5, "FEED"

    const-string v0, "OTHER"

    const-string v1, "LOCAL"

    const-string v2, "POLL"

    const-string v3, "USER"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 180
    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 482
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .locals 4

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 451
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 454
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 457
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 464
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 468
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    .line 471
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/16 v2, 0x1c

    .line 474
    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 517
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 518
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 530
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-direct {v2, p0, p3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 531
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 532
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 533
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 535
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1110279

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 540
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 542
    new-instance p1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 543
    new-instance p2, Ljava/io/File;

    const-string/jumbo v2, "sync"

    invoke-direct {p2, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    .line 544
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 546
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 548
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string v3, "accounts.xml"

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "sync-accounts"

    invoke-direct {p1, p2, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 550
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v3, "status"

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "sync-status"

    invoke-direct {p1, p2, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 551
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v3, "stats"

    invoke-direct {p2, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "sync-stats"

    invoke-direct {p1, p2, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 553
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 554
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 555
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 557
    invoke-virtual {p3}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, " items"

    const-string v2, "Loaded "

    filled-new-array {v2, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    :goto_0
    if-ge v1, p1, :cond_0

    .line 561
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    iget-object p3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-virtual {p3}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toSafeString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .locals 2

    .line 0
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    long-to-double p0, p0

    const-wide v0, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0xd80

    return-wide p0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .locals 2

    .line 579
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 571
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 575
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .locals 8

    .line 1174
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1175
    :try_start_0
    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1179
    invoke-virtual {v3}, Lcom/android/server/content/SyncOperation;->getExtrasAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1181
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1182
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1186
    new-instance v2, Landroid/content/SyncInfo;

    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object v5, v4

    iget-object v4, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-direct/range {v2 .. v7}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 1191
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    iget-object p1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-object v2

    .line 1192
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 628
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p1

    .line 629
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 630
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearAllBackoffsLocked()V
    .locals 12

    .line 957
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 958
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 960
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 961
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 962
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 964
    :cond_2
    :goto_1
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 965
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " account:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v10, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " user:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v10, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " backoffTime was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " backoffDelay was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_3
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 973
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 974
    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 978
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_2
    if-lez v1, :cond_5

    .line 982
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    .line 981
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    return-void

    .line 978
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 3

    if-gez p2, :cond_0

    .line 1604
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 p3, p2, 0x1

    .line 1605
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/4 p3, 0x1

    :cond_0
    const/4 v0, 0x2

    .line 1608
    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created a new AuthorityInfo for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1612
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p3, :cond_2

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_2
    return-object v0
.end method

.method public final createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .locals 1

    .line 1532
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object p0

    .line 1533
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance p1, Landroid/content/SyncStatusInfo;

    invoke-direct {p1, p0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1072
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1073
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAuthorityCount()I
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1066
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1067
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 4

    .line 1556
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1557
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1558
    const-string v3, "SyncManager"

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    .line 1560
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unknown account "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    .line 1566
    :cond_1
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    .line 1569
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unknown provider "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    return-object p0
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 878
    :try_start_0
    const-string v1, "getBackoff"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 880
    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 882
    monitor-exit v0

    return-object p0

    .line 883
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 3

    .line 1448
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1449
    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p1

    .line 1452
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1453
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentDayLocked()I
    .locals 5

    .line 1537
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1538
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1539
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1541
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1542
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1543
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1545
    :cond_0
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getCurrentSyncs(I)Ljava/util/List;
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1408
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1409
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .locals 6

    .line 1418
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object p0

    .line 1420
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    if-nez p2, :cond_0

    .line 1424
    iget v2, v1, Landroid/content/SyncInfo;->authorityId:I

    iget-object v3, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v4, v1, Landroid/content/SyncInfo;->startTime:J

    invoke-static {v2, v3, v4, v5}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1427
    :cond_0
    new-instance v2, Landroid/content/SyncInfo;

    invoke-direct {v2, v1}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    move-object v1, v2

    .line 1429
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1431
    :cond_1
    monitor-exit v0

    return-object p1

    .line 1432
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentSyncsLocked(I)Ljava/util/List;
    .locals 1

    .line 1436
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .locals 4

    .line 1523
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1524
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, p0

    new-array v2, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    .line 1525
    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1526
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 1527
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 988
    :try_start_0
    const-string v1, "getDelayUntil"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    .line 990
    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 992
    :cond_0
    iget-wide p0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0

    return-wide p0

    .line 993
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 783
    :try_start_0
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string p1, "get authority syncable"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 787
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 789
    :cond_0
    iget p0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return p0

    .line 792
    :cond_1
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :cond_2
    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 795
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 796
    iget-object v2, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 797
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 798
    iget p0, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return p0

    .line 801
    :cond_3
    monitor-exit v0

    return v1

    .line 802
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMasterSyncAutomatically(I)Z
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1059
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    .line 1060
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    monitor-exit v0

    return p0

    .line 1061
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 3

    .line 1587
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1588
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-nez v1, :cond_0

    .line 1590
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v1, v0}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 1591
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    :cond_0
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v0, :cond_1

    .line 1595
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    .line 1596
    iget-object p2, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    if-nez v0, :cond_0

    .line 1649
    new-instance v0, Landroid/content/SyncStatusInfo;

    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1650
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .locals 7

    .line 1463
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1467
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1469
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1470
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz v5, :cond_1

    .line 1471
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1472
    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1473
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1476
    :cond_2
    monitor-exit v0

    return-object v1

    .line 1477
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 7

    .line 715
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 717
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string p1, "getSyncAutomatically"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 720
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    .line 723
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 726
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 727
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v4, :cond_2

    .line 729
    monitor-exit v0

    return v2

    .line 732
    :cond_3
    monitor-exit v0

    return v1

    .line 733
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .locals 5

    .line 1507
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1509
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1511
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1513
    :cond_0
    monitor-exit v0

    return-object v2

    .line 1514
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .locals 5

    .line 1225
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1226
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertStartSyncEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 1229
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string v3, "insertStartSyncEvent"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 p0, -0x1

    .line 1231
    monitor-exit v0

    return-wide p0

    .line 1233
    :cond_1
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1234
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1235
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v1, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1236
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v1, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    const/4 v1, 0x0

    if-gez v4, :cond_2

    .line 1237
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1238
    :cond_2
    iput-wide p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1239
    iget p2, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1240
    iget p2, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1241
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1242
    iput v1, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1243
    iget p2, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1244
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1245
    :goto_1
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0x64

    if-le p2, p3, :cond_3

    .line 1246
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1248
    :cond_3
    iget p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long p2, p2

    .line 1249
    const-string v1, "SyncManager"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning historyId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    return-wide p2

    .line 1250
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isClockValid()Z
    .locals 0

    .line 2666
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    return p0
.end method

.method public isJobAttributionFixed()Z
    .locals 0

    .line 873
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    return p0
.end method

.method public isJobNamespaceMigrated()Z
    .locals 0

    .line 859
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    return p0
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1082
    :try_start_0
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 1083
    iget v2, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1084
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    .line 1085
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1088
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 7

    .line 1482
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1485
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1486
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v5, :cond_0

    goto :goto_1

    .line 1490
    :cond_0
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 1493
    :cond_1
    iget-boolean v4, v4, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v4, :cond_2

    const/4 p0, 0x1

    .line 1494
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1497
    :cond_3
    monitor-exit v0

    return v2

    .line 1498
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .locals 3

    .line 1093
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1094
    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1098
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1100
    :cond_0
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v1

    .line 1101
    iput-boolean p2, v1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x2

    .line 1103
    invoke-virtual {p0, p2, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    .line 1102
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .locals 1

    .line 1789
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "pending.bin"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1793
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 10

    .line 1804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1805
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_3

    .line 1807
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1809
    sget-object v7, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_0

    goto :goto_1

    .line 1816
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    iget-boolean v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v8, :cond_1

    goto :goto_1

    .line 1825
    :cond_1
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v8, v9, v7, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1829
    const-string v6, "cleanup"

    invoke-virtual {p0, v8, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    .line 1834
    invoke-virtual {p0, v8, v4, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1835
    iput-boolean v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1839
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1840
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v7, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v4, v2}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    move v4, v5

    goto :goto_2

    :cond_4
    return v4
.end method

.method public final parseAuthority(Lcom/android/modules/utils/TypedXmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 1864
    const-string v4, "SyncManager"

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 1867
    :try_start_0
    const-string v0, "id"

    invoke-interface {v2, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1869
    const-string v7, "error parsing the id of the authority"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    :goto_0
    if-ltz v0, :cond_9

    .line 1872
    const-string v7, "authority"

    invoke-interface {v2, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1873
    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-interface {v2, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 1874
    const-string/jumbo v9, "syncable"

    invoke-interface {v2, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1875
    const-string v10, "account"

    invoke-interface {v2, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1876
    const-string/jumbo v11, "type"

    invoke-interface {v2, v5, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1877
    const-string/jumbo v12, "user"

    const/4 v13, 0x0

    invoke-interface {v2, v5, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 1878
    const-string/jumbo v14, "package"

    invoke-interface {v2, v5, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1879
    const-string v15, "class"

    invoke-interface {v2, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v11, :cond_0

    if-nez v14, :cond_0

    .line 1882
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.google"

    .line 1884
    :cond_0
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1885
    const-string v15, "SyncManagerFile"

    move/from16 v16, v6

    const/4 v6, 0x2

    invoke-static {v15, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    const-string v13, " syncable="

    const-string v6, " enabled="

    if-eqz v17, :cond_1

    move-object/from16 v17, v5

    .line 1886
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "Adding authority: account="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " accountType="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " auth="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " class="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    :goto_1
    if-nez v17, :cond_5

    const/4 v2, 0x2

    .line 1897
    invoke-static {v15, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1898
    const-string v2, "Creating authority entry"

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v10, :cond_5

    if-eqz v7, :cond_5

    .line 1901
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4, v7, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1904
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v12}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1905
    invoke-virtual {v3, v7, v12}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 1906
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-lez p2, :cond_3

    .line 1914
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    move-object v5, v0

    goto :goto_2

    .line 1917
    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "35028827"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_5
    move-object/from16 v5, v17

    :goto_2
    if-eqz v5, :cond_8

    .line 1924
    iput-boolean v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v9, :cond_6

    move/from16 v0, v16

    goto :goto_3

    .line 1927
    :cond_6
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1931
    :catch_1
    const-string/jumbo v0, "unknown"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v1, v16

    .line 1932
    iput v1, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_4

    .line 1934
    :cond_7
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1935
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_4

    .line 1940
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure adding authority: auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-object v5
.end method

.method public final parseExtra(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V
    .locals 4

    .line 1980
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1981
    const-string/jumbo v1, "type"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1984
    :try_start_0
    const-string/jumbo v2, "long"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "value1"

    if-eqz v2, :cond_0

    .line 1985
    :try_start_1
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 1986
    :cond_0
    const-string v2, "integer"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1987
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 1988
    :cond_1
    const-string v2, "double"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1989
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 1990
    :cond_2
    const-string v2, "float"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1991
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void

    .line 1992
    :cond_3
    const-string v2, "boolean"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1993
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 1994
    :cond_4
    const-string/jumbo v2, "string"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1995
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1996
    :cond_5
    const-string v2, "account"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1997
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1998
    const-string/jumbo v2, "value2"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1999
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2002
    const-string p1, "SyncManager"

    const-string p2, "error parsing bundle value"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    return-void
.end method

.method public final parseLastEventInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;
    .locals 5

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    move-object v2, p0

    .line 2273
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide v2, 0x10900000002L

    .line 2278
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-wide v0, 0x10300000001L

    .line 2275
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return-object p0

    .line 2281
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final parseListenForTickles(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    const/4 v0, 0x0

    .line 1854
    :try_start_0
    const-string/jumbo v1, "user"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1856
    const-string v2, "SyncManager"

    const-string v3, "error parsing the user for listen-for-tickles"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1858
    :goto_0
    const-string v2, "enabled"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 1859
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final parsePeriodicSync(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .locals 8

    .line 1953
    const-string p0, "SyncManager"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 1957
    :try_start_0
    const-string/jumbo v0, "period"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1963
    :try_start_1
    const-string v0, "flex"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v6, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1965
    invoke-static {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v0

    .line 1966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error formatting value parsed for periodic sync flex, using default: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v6, v0

    .line 1970
    :goto_0
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object p0, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1975
    iget-object p0, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 1959
    const-string p2, "error parsing the period of a periodic sync"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public queueBackup()V
    .locals 0

    .line 2655
    const-string p0, "android"

    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final readAccountInfoLocked()V
    .locals 17

    move-object/from16 v1, p0

    .line 1691
    const-string v2, "Error reading accounts"

    const-string v3, "No initial accounts"

    const-string v0, "SyncManagerFile"

    const-string v4, "SyncManager"

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1694
    :try_start_0
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v9, 0x2

    .line 1695
    :try_start_1
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v10, :cond_0

    .line 1696
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v8

    const/4 v6, -0x1

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object v7, v8

    const/4 v6, -0x1

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v7, v8

    const/4 v6, -0x1

    goto/16 :goto_10

    .line 1698
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v8}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1699
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v10
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_1
    if-eq v10, v9, :cond_1

    if-eq v10, v5, :cond_1

    .line 1702
    :try_start_4
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    if-ne v10, v5, :cond_2

    .line 1705
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1771
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v8, :cond_10

    .line 1774
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    return-void

    .line 1709
    :cond_2
    :try_start_6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1710
    const-string v12, "accounts"

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1711
    const-string/jumbo v10, "listen-for-tickles"

    invoke-interface {v0, v7, v10, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 1713
    const-string/jumbo v12, "version"

    invoke-interface {v0, v7, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v13, 0x3

    if-ge v12, v13, :cond_3

    .line 1716
    :try_start_7
    iput-boolean v5, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1719
    :cond_3
    :try_start_8
    const-string/jumbo v14, "nextAuthorityId"

    invoke-interface {v0, v7, v14, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 1720
    iget v15, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1722
    const-string/jumbo v14, "offsetInSeconds"

    invoke-interface {v0, v7, v14, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-nez v14, :cond_4

    .line 1724
    :try_start_9
    new-instance v14, Ljava/util/Random;
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v15, -0x1

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v14, v6, v7}, Ljava/util/Random;-><init>(J)V

    const v6, 0x15180

    .line 1725
    invoke-virtual {v14, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_2
    move-object v7, v8

    move v6, v15

    goto/16 :goto_12

    :catch_2
    move-exception v0

    :goto_3
    move-object v7, v8

    move v6, v15

    goto/16 :goto_d

    :catch_3
    move-exception v0

    :goto_4
    move-object v7, v8

    move v6, v15

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    const/4 v15, -0x1

    goto :goto_2

    :catch_4
    move-exception v0

    const/4 v15, -0x1

    goto :goto_3

    :catch_5
    move-exception v0

    const/4 v15, -0x1

    goto :goto_4

    :cond_4
    const/4 v15, -0x1

    .line 1727
    :goto_5
    :try_start_b
    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1728
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    .line 1731
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move v14, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ne v6, v9, :cond_a

    .line 1734
    :try_start_c
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v16, v15

    .line 1735
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v15

    if-ne v15, v9, :cond_8

    .line 1736
    const-string v15, "authority"

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1737
    invoke-virtual {v1, v0, v12, v7}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lcom/android/modules/utils/TypedXmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1740
    iget v6, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v6, v14, :cond_5

    move v14, v6

    :cond_5
    :goto_7
    const/4 v10, 0x0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v7, v8

    move v6, v14

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move-object v7, v8

    move v6, v14

    goto/16 :goto_d

    :catch_7
    move-exception v0

    move-object v7, v8

    move v6, v14

    goto/16 :goto_10

    .line 1744
    :cond_6
    const-string v6, "26513719"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v15, "Malformed authority"

    filled-new-array {v6, v10, v15}, [Ljava/lang/Object;

    move-result-object v6

    const v10, 0x534e4554

    invoke-static {v10, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_7

    .line 1747
    :cond_7
    const-string/jumbo v15, "listenForTickles"

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1748
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_8

    .line 1750
    :cond_8
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v15

    if-ne v15, v13, :cond_9

    .line 1751
    const-string/jumbo v15, "periodicSync"

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v11, :cond_b

    .line 1752
    invoke-virtual {v1, v0, v11}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v10

    goto :goto_8

    .line 1754
    :cond_9
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v15

    const/4 v9, 0x4

    if-ne v15, v9, :cond_b

    if-eqz v10, :cond_b

    .line 1755
    const-string v9, "extra"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1756
    iget-object v6, v10, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v6}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_a
    move/from16 v16, v15

    .line 1760
    :cond_b
    :goto_8
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-ne v6, v5, :cond_c

    move v6, v14

    goto :goto_c

    :cond_c
    move/from16 v15, v16

    const/4 v9, 0x2

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    move/from16 v16, v15

    :goto_9
    move-object v7, v8

    move/from16 v6, v16

    goto/16 :goto_12

    :catch_8
    move-exception v0

    move/from16 v16, v15

    :goto_a
    move-object v7, v8

    move/from16 v6, v16

    goto :goto_d

    :catch_9
    move-exception v0

    move/from16 v16, v15

    :goto_b
    move-object v7, v8

    move/from16 v6, v16

    goto :goto_10

    :catchall_5
    move-exception v0

    const/16 v16, -0x1

    goto :goto_9

    :catch_a
    move-exception v0

    const/16 v16, -0x1

    goto :goto_a

    :catch_b
    move-exception v0

    const/16 v16, -0x1

    goto :goto_b

    :cond_d
    const/16 v16, -0x1

    move/from16 v6, v16

    :goto_c
    add-int/2addr v6, v5

    .line 1771
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v8, :cond_e

    .line 1774
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 1780
    :catch_c
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    return-void

    :catchall_6
    move-exception v0

    const/16 v16, -0x1

    move/from16 v6, v16

    const/4 v7, 0x0

    goto :goto_12

    :catch_d
    move-exception v0

    const/16 v16, -0x1

    move/from16 v6, v16

    const/4 v7, 0x0

    goto :goto_d

    :catch_e
    move-exception v0

    const/16 v16, -0x1

    move/from16 v6, v16

    const/4 v7, 0x0

    goto :goto_10

    :goto_d
    if-nez v7, :cond_f

    .line 1767
    :try_start_e
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catchall_7
    move-exception v0

    goto :goto_12

    .line 1768
    :cond_f
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_e
    add-int/2addr v6, v5

    .line 1771
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v7, :cond_10

    .line 1774
    :goto_f
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_11

    .line 1764
    :goto_10
    :try_start_10
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    add-int/2addr v6, v5

    .line 1771
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v7, :cond_10

    goto :goto_f

    :catch_f
    :cond_10
    :goto_11
    return-void

    :goto_12
    add-int/2addr v6, v5

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v7, :cond_11

    .line 1774
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 1778
    :catch_10
    :cond_11
    throw v0
.end method

.method public final readDayStatsLocked(Ljava/io/InputStream;)V
    .locals 4

    .line 2540
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 2543
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide v1, 0x20b00000001L

    .line 2545
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2546
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readIndividualDayStatsLocked(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v3

    .line 2547
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2548
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2550
    array-length v1, v1

    if-ne p1, v1, :cond_0

    :cond_2
    return-void
.end method

.method public final readIndividualDayStatsLocked(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/content/SyncStorageEngine$DayStats;
    .locals 5

    const-wide v0, 0x10500000001L

    .line 2562
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2564
    new-instance p0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    goto :goto_0

    .line 2567
    :cond_0
    new-instance p0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2571
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10300000005L

    .line 2594
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_0

    :cond_2
    const-wide v2, 0x10500000004L

    .line 2591
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    goto :goto_0

    :cond_3
    const-wide v2, 0x10300000003L

    .line 2588
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_0

    :cond_4
    const-wide v2, 0x10500000002L

    .line 2585
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    goto :goto_0

    .line 2574
    :cond_5
    const-string v2, "SyncManager"

    const-string v3, "Failed to read the day via fast-path; some data might not have been read."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 2577
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2578
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iput v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2579
    iget-wide v3, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iput-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2580
    iget v3, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iput v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2581
    iget-wide v3, p0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iput-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    move-object p0, v2

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final readStatisticsLocked()V
    .locals 2

    .line 2525
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->upgradeStatisticsIfNeededLocked()V

    .line 2527
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2531
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readDayStatsLocked(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2533
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 2531
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 2535
    const-string v0, "SyncManager"

    const-string v1, "Unable to read day stats file."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final readStatsParcelLocked(Ljava/io/File;)V
    .locals 6

    .line 2472
    const-string v0, "SyncManager"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2474
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2475
    invoke-virtual {v2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object p1

    .line 2476
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2477
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2480
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 v2, 0x65

    const/16 v4, 0x64

    if-eq p1, v2, :cond_2

    if-ne p1, v4, :cond_1

    goto :goto_1

    .line 2497
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stats token: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 2482
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne p1, v4, :cond_3

    add-int/lit16 v2, v2, 0x2fcc

    .line 2486
    :cond_3
    new-instance p1, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {p1, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2488
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2489
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2490
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2491
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 2492
    aput-object p1, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2504
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2502
    :catch_0
    :try_start_1
    const-string p0, "No initial statistics"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2505
    throw p0
.end method

.method public final readStatusInfoLocked(Ljava/io/InputStream;)V
    .locals 3

    .line 2128
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2130
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide v1, 0x10800000003L

    .line 2146
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    goto :goto_0

    :cond_2
    const-wide v1, 0x10800000002L

    .line 2142
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    goto :goto_0

    :cond_3
    const-wide v1, 0x20b00000001L

    .line 2132
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2133
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/content/SyncStatusInfo;

    move-result-object p1

    .line 2134
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2135
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    .line 2136
    iput-boolean v1, p1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2137
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v2, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readStatusLocked()V
    .locals 2

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->upgradeStatusIfNeededLocked()V

    .line 2115
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2120
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusInfoLocked(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2121
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 2119
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 2123
    const-string v0, "SyncManager"

    const-string v1, "Unable to read status info file."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final readStatusParcelLocked(Ljava/io/File;)V
    .locals 5

    .line 2067
    const-string v0, "SyncManager"

    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2068
    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object p1

    .line 2069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2070
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2071
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2073
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_2

    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    .line 2076
    :try_start_1
    new-instance p1, Landroid/content/SyncStatusInfo;

    invoke-direct {p1, v1}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2077
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 2078
    iput-boolean v3, p1, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2079
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v2, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2082
    :try_start_2
    const-string v2, "Unable to parse some sync status."

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2086
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown status token: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2091
    :catch_1
    const-string p0, "No initial status"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final readSyncStatusInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/content/SyncStatusInfo;
    .locals 11

    const-wide v0, 0x10500000002L

    .line 2156
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2158
    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/content/SyncStatusInfo;-><init>(I)V

    goto :goto_0

    .line 2161
    :cond_0
    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v3}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 2166
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    .line 2168
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    const-string v7, "SyncManager"

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-wide v8, 0x20300000012L

    .line 2252
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    .line 2254
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v10, v6

    if-ne v5, v10, :cond_1

    .line 2255
    const-string v6, "Attempted to read more per source last failure times than expected; data might be corrupted."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2259
    :cond_1
    aput-wide v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_1
    const-wide v8, 0x20300000011L

    .line 2241
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    .line 2243
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v10, v6

    if-ne v3, v10, :cond_2

    .line 2244
    const-string v6, "Attempted to read more per source last success times than expected; data might be corrupted."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2248
    :cond_2
    aput-wide v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    const-wide v6, 0x10b00000010L

    .line 2235
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2237
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2238
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_3
    const-wide v6, 0x10b0000000fL

    .line 2229
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2231
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2232
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_4
    const-wide v6, 0x10b0000000eL

    .line 2223
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2225
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2226
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :pswitch_5
    const-wide v6, 0x1030000000dL

    .line 2219
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    goto/16 :goto_1

    :pswitch_6
    const-wide v6, 0x20b0000000cL

    .line 2211
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2212
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->parseLastEventInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2214
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    :cond_3
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_7
    const-wide v6, 0x2030000000bL

    .line 2208
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    .line 2207
    invoke-virtual {v2, v6, v7}, Landroid/content/SyncStatusInfo;->addPeriodicSyncTime(J)V

    goto/16 :goto_1

    :pswitch_8
    const-wide v6, 0x1080000000aL

    .line 2204
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    iput-boolean v6, v2, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_1

    :pswitch_9
    const-wide v6, 0x10800000009L

    .line 2201
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    iput-boolean v6, v2, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_1

    :pswitch_a
    const-wide v6, 0x10300000008L

    .line 2197
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    goto/16 :goto_1

    :pswitch_b
    const-wide v6, 0x10900000007L

    .line 2193
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_c
    const-wide v6, 0x10500000006L

    .line 2189
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    iput v6, v2, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    goto/16 :goto_1

    :pswitch_d
    const-wide v6, 0x10300000005L

    .line 2185
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    goto/16 :goto_1

    :pswitch_e
    const-wide v6, 0x10500000004L

    .line 2181
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    iput v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    goto/16 :goto_1

    :pswitch_f
    const-wide v6, 0x10300000003L

    .line 2177
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    goto/16 :goto_1

    .line 2171
    :pswitch_10
    const-string v6, "Failed to read the authority id via fast-path; some data might not have been read."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    new-instance v6, Landroid/content/SyncStatusInfo;

    .line 2174
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-direct {v6, v7, v2}, Landroid/content/SyncStatusInfo;-><init>(ILandroid/content/SyncStatusInfo;)V

    move-object v2, v6

    goto/16 :goto_1

    .line 2263
    :cond_4
    invoke-virtual {v2, v4}, Landroid/content/SyncStatusInfo;->populateLastEventsInformation(Ljava/util/ArrayList;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .locals 2

    .line 2289
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-wide v0, 0x1050000000aL

    .line 2325
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_0

    :pswitch_2
    const-wide v0, 0x10500000009L

    .line 2321
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    goto :goto_0

    :pswitch_3
    const-wide v0, 0x10500000008L

    .line 2317
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    goto :goto_0

    :pswitch_4
    const-wide v0, 0x10500000007L

    .line 2313
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    goto :goto_0

    :pswitch_5
    const-wide v0, 0x10500000006L

    .line 2309
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    goto :goto_0

    :pswitch_6
    const-wide v0, 0x10500000005L

    .line 2305
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    goto :goto_0

    :pswitch_7
    const-wide v0, 0x10500000004L

    .line 2302
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    goto :goto_0

    :pswitch_8
    const-wide v0, 0x10500000003L

    .line 2298
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    goto :goto_0

    :pswitch_9
    const-wide v0, 0x10500000002L

    .line 2295
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    goto :goto_0

    :pswitch_a
    const-wide v0, 0x10300000001L

    .line 2291
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    iput-wide v0, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    goto :goto_0

    :pswitch_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .locals 4

    .line 1201
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1202
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1207
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1208
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    .line 1208
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 4

    .line 1620
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1621
    :try_start_0
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1622
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 2

    .line 1631
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-eqz p1, :cond_1

    .line 1633
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz p1, :cond_1

    .line 1635
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz p2, :cond_0

    .line 1636
    iget-object p3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1638
    :cond_0
    iget-object p2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_1

    .line 1640
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_1
    return-void
.end method

.method public removeStaleAccounts([Landroid/accounts/Account;I)V
    .locals 8

    .line 1111
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1112
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    const-string v1, "SyncManager"

    const-string v3, "Updating for new accounts..."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 1115
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1116
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1117
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1119
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v6, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v6, p2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1122
    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 1123
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1125
    :cond_3
    const-string v5, "SyncManager"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1126
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_4
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1129
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 1131
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1136
    :cond_6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_d

    :cond_7
    if-lez p1, :cond_c

    add-int/lit8 p1, p1, -0x1

    .line 1140
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 1141
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1142
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v3, :cond_8

    .line 1143
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v3, v2}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1145
    :cond_8
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1146
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :cond_9
    :goto_3
    if-lez v2, :cond_a

    add-int/lit8 v2, v2, -0x1

    .line 1149
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v3, p2, :cond_9

    .line 1150
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 1153
    :cond_a
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_b
    :goto_4
    if-lez v2, :cond_7

    add-int/lit8 v2, v2, -0x1

    .line 1156
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v3, p2, :cond_b

    .line 1157
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 1161
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1165
    :cond_d
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 636
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reportActiveChange(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 1

    const/4 v0, 0x4

    .line 1217
    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 3

    .line 663
    iget-object v0, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 669
    :goto_1
    iget p2, p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    return-void
.end method

.method public reportChange(ILjava/lang/String;I)V
    .locals 7

    .line 674
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 678
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 679
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v5

    .line 680
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 681
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    if-eq p3, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 685
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p2, v5, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    .line 690
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 694
    :cond_4
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 695
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    const-string p0, "SyncManager"

    const/4 p2, 0x2

    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 698
    const-string p0, "SyncManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "reportChange "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    .line 702
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :catch_0
    :goto_1
    if-lez p0, :cond_6

    add-int/lit8 p0, p0, -0x1

    .line 706
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ISyncStatusObserver;

    invoke-interface {p2, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    return-void

    .line 695
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V
    .locals 2

    .line 2457
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz p0, :cond_0

    move-object v0, p1

    .line 2459
    new-instance p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p1, v0, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move p2, p3

    move-object p3, p5

    move p4, p6

    move p5, p7

    move p6, p8

    invoke-interface/range {p0 .. p6}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    return-void

    :cond_0
    move-object v0, p1

    move-object p3, p5

    .line 2463
    invoke-static {v0, p4, p3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V
    .locals 2

    .line 2437
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz p0, :cond_0

    .line 2439
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    return-void

    .line 2442
    :cond_0
    new-instance p0, Landroid/content/SyncRequest$Builder;

    invoke-direct {p0}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 2444
    invoke-virtual {p0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object p0

    .line 2445
    invoke-virtual {p0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object p0

    .line 2446
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2447
    invoke-virtual {p0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    return-void
.end method

.method public resetTodayStats(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 2671
    const-string v0, "SyncManager"

    const-string v1, "Force resetting today stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2674
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2676
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2677
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2679
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2680
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .locals 10

    .line 891
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> nextSyncTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nextDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 897
    :try_start_0
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v0, 0x1

    if-eqz v3, :cond_3

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 907
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 908
    iget-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_2

    iget-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v3, v3, p4

    if-nez v3, :cond_2

    const/4 p2, 0x0

    move-object v2, p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 912
    :cond_2
    iput-wide p2, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 913
    iput-wide p4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-object v2, p0

    move p2, v0

    goto :goto_1

    .line 900
    :cond_3
    :goto_0
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v2, p0

    move-wide v6, p2

    move-wide v8, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result p2

    .line 917
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    .line 919
    invoke-virtual {v2, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    :cond_4
    return-void

    .line 917
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .locals 5

    .line 935
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-eqz p1, :cond_1

    .line 936
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v2, :cond_1

    goto :goto_0

    .line 940
    :cond_1
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz p3, :cond_3

    .line 941
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 942
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 945
    :cond_3
    iget-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v3, v3, p4

    if-nez v3, :cond_4

    iget-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v3, v3, p6

    if-eqz v3, :cond_2

    .line 947
    :cond_4
    iput-wide p4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 948
    iput-wide p6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public setClockValid()V
    .locals 1

    .line 2659
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2660
    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 2661
    const-string p0, "SyncManager"

    const-string v0, "Clock is valid now."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 5

    .line 997
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDelayUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> delayUntil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1002
    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1003
    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_1

    .line 1004
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1006
    :cond_1
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 1007
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    invoke-virtual {p0, v2, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    .line 1007
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    .locals 1

    .line 807
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p4, p5, p6}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V

    return-void
.end method

.method public setJobAttributionFixed(Z)V
    .locals 2

    .line 863
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 866
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    .line 869
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 p1, 0x1

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setJobNamespaceMigrated(Z)V
    .locals 2

    .line 849
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 852
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    .line 855
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 p1, 0x1

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setMasterSyncAutomatically(ZIIII)V
    .locals 11

    .line 1035
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string v3, "Set master enabled="

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, " user="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, " cuid="

    .line 1036
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, " cpid="

    .line 1037
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    .line 1035
    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1038
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1039
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 1040
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1041
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1043
    :cond_0
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1045
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1047
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v3, -0x7

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    :cond_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1051
    invoke-virtual {p0, v1, v3, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    .line 1053
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    return-void

    .line 1045
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_0

    .line 593
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    :cond_0
    return-void
.end method

.method public setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_0

    .line 587
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    :cond_0
    return-void
.end method

.method public setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .locals 0

    .line 598
    sget-object p0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez p0, :cond_0

    .line 599
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    :cond_0
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v8, p3

    move/from16 v1, p4

    .line 738
    const-string v3, "SyncManager"

    const/4 v15, 0x2

    invoke-static {v3, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSyncAutomatically:  provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    move-object v4, v3

    const-string v3, "Set sync auto account="

    move-object v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    const-string v5, " user="

    move-object v7, v6

    .line 743
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v9, v7

    const-string v7, " authority="

    move-object v10, v9

    const-string v9, " value="

    move-object v11, v10

    .line 745
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    move-object v12, v11

    const-string v11, " cuid="

    move-object v13, v12

    .line 746
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v14, v13

    const-string v13, " cpid="

    move-object/from16 v16, v14

    .line 747
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, v16

    filled-new-array/range {v3 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    .line 742
    invoke-virtual {v15, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 750
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 751
    :try_start_0
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v5, p1

    invoke-direct {v4, v5, v8, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7, v6}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    .line 755
    iget-boolean v4, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v4, v1, :cond_2

    .line 756
    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncAutomatically: already set to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", doing nothing"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 759
    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 764
    iget v4, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 765
    iput v7, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 767
    :cond_3
    iput-boolean v1, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 768
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 769
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 772
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v3, -0x6

    move-object/from16 v1, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v4, v8

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    :cond_4
    const/4 v1, 0x1

    .line 776
    iget-object v2, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 777
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    return-void

    .line 769
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V
    .locals 10

    .line 820
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string v1, "Set syncable "

    invoke-virtual {p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " value="

    .line 821
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " cuid="

    .line 822
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, " cpid="

    .line 823
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 820
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 824
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 825
    :try_start_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    if-ge p2, v2, :cond_0

    move p2, v2

    .line 829
    :cond_0
    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    const-string v0, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIsSyncable: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 832
    :cond_1
    :goto_0
    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, p2, :cond_3

    .line 833
    const-string p0, "SyncManager"

    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 834
    const-string p0, "SyncManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setIsSyncable: already set to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", doing nothing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_2
    monitor-exit v1

    return-void

    .line 838
    :cond_3
    iput p2, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 839
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 840
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 842
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    const/4 v5, -0x5

    move-object v3, p0

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V

    goto :goto_1

    :cond_4
    move-object v3, p0

    .line 845
    :goto_1
    invoke-virtual {v3, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    .line 840
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .locals 0

    .line 1664
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return p0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJLjava/lang/String;I)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 1259
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1260
    :try_start_0
    const-string v7, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1261
    const-string v7, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopSyncEvent: historyId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 1264
    :cond_0
    :goto_0
    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_1
    if-lez v7, :cond_2

    add-int/lit8 v7, v7, -0x1

    .line 1267
    iget-object v10, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1268
    iget v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v11, v11

    cmp-long v11, v11, v1

    if-nez v11, :cond_1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_3

    .line 1275
    const-string v0, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopSyncEvent: no history for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    monitor-exit v6

    return-void

    .line 1279
    :cond_3
    iput-wide v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    const/4 v1, 0x1

    .line 1280
    iput v1, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1281
    iput-object v5, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-wide/from16 v11, p6

    .line 1282
    iput-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v11, p8

    .line 1283
    iput-wide v11, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1285
    iget v2, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 1287
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v7

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1289
    iget-object v7, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1290
    iget-object v12, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v13, v12, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/2addr v13, v1

    iput v13, v12, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1291
    iget-wide v13, v7, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v13, v3

    iput-wide v13, v7, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1292
    iget-wide v13, v12, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v13, v3

    iput-wide v13, v12, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1293
    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    if-eqz v13, :cond_9

    if-eq v13, v1, :cond_8

    if-eq v13, v8, :cond_7

    const/4 v14, 0x3

    if-eq v13, v14, :cond_6

    const/4 v14, 0x4

    if-eq v13, v14, :cond_5

    const/4 v14, 0x5

    if-eq v13, v14, :cond_4

    goto :goto_2

    .line 1315
    :cond_4
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1316
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_2

    .line 1311
    :cond_5
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1312
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    goto :goto_2

    .line 1303
    :cond_6
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1304
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    goto :goto_2

    .line 1299
    :cond_7
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1300
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    goto :goto_2

    .line 1295
    :cond_8
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1296
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    goto :goto_2

    .line 1307
    :cond_9
    iget v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v13, v1

    iput v13, v7, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1308
    iget v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v7, v1

    iput v7, v12, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1321
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v7

    .line 1322
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v13, v12, v11

    if-nez v13, :cond_a

    .line 1323
    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v7}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v13, v12, v11

    goto :goto_3

    .line 1324
    :cond_a
    iget v13, v13, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v7, v13, :cond_b

    .line 1325
    array-length v13, v12

    sub-int/2addr v13, v1

    invoke-static {v12, v11, v12, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1326
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v7}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v13, v12, v11

    move v7, v1

    goto :goto_4

    :cond_b
    :goto_3
    move v7, v11

    .line 1330
    :goto_4
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v12, v12, v11

    .line 1332
    iget-wide v13, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long/2addr v13, v3

    .line 1334
    const-string/jumbo v15, "success"

    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-wide/16 v16, 0x0

    if-eqz v15, :cond_e

    .line 1336
    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_c

    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_d

    :cond_c
    move v11, v1

    .line 1339
    :cond_d
    iget v8, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v2, v8, v13, v14}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1340
    iget v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v8, v1

    iput v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1341
    iget-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v3

    iput-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_5

    .line 1342
    :cond_e
    const-string v8, "canceled"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1343
    iget-wide v8, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v8, v8, v16

    if-nez v8, :cond_f

    move v11, v1

    .line 1346
    :cond_f
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1347
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1349
    iget v8, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v2, v8, v13, v14, v5}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1351
    iget v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v8, v1

    iput v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1352
    iget-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v3

    iput-wide v8, v12, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_5

    .line 1355
    :cond_10
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1356
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/2addr v9, v1

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    move v11, v1

    .line 1359
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1360
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Source="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v12, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v5, v5, v12

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Elapsed="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-static {v8, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 1363
    const-string v3, " Reason="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eqz v3, :cond_13

    .line 1366
    const-string v3, " Exemption="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eq v3, v1, :cond_12

    const/4 v15, 0x2

    if-eq v3, v15, :cond_11

    .line 1375
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1372
    :cond_11
    const-string/jumbo v3, "top"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1369
    :cond_12
    const-string v3, "fg"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    :cond_13
    :goto_6
    const-string v3, " Extras="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    iget-object v3, v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    invoke-static {v3, v8}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1382
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    if-eqz v11, :cond_14

    .line 1385
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    goto :goto_7

    .line 1386
    :cond_14
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1387
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v3, 0x927c0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_15
    :goto_7
    if-eqz v7, :cond_16

    .line 1391
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    goto :goto_8

    .line 1392
    :cond_16
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v15, 0x2

    invoke-virtual {v1, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1393
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v1, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1b7740

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1396
    :cond_17
    :goto_8
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x8

    move-object/from16 v2, p10

    move/from16 v3, p11

    .line 1398
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(ILjava/lang/String;I)V

    return-void

    .line 1396
    :goto_9
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final upgradeStatisticsIfNeededLocked()V
    .locals 3

    .line 2509
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v2, "stats.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2510
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2511
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatsParcelLocked(Ljava/io/File;)V

    .line 2512
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 2516
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2517
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public final upgradeStatusIfNeededLocked()V
    .locals 3

    .line 2096
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v2, "status.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2098
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusParcelLocked(Ljava/io/File;)V

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2103
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public final writeAccountInfoLocked()V
    .locals 13

    .line 2010
    const-string/jumbo v0, "listenForTickles"

    const-string v1, "accounts"

    const-string v2, "authority"

    const/4 v3, 0x2

    const-string v4, "SyncManagerFile"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing new "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .line 2016
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2017
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 2018
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2019
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2021
    invoke-interface {v5, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2022
    const-string/jumbo v6, "version"

    const/4 v7, 0x3

    invoke-interface {v5, v3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2023
    const-string/jumbo v6, "nextAuthorityId"

    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-interface {v5, v3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2024
    const-string/jumbo v6, "offsetInSeconds"

    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-interface {v5, v3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    move v8, v7

    .line 2028
    :goto_0
    const-string v9, "enabled"

    const-string/jumbo v10, "user"

    if-ge v8, v6, :cond_1

    .line 2029
    :try_start_2
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 2030
    iget-object v12, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 2031
    invoke-interface {v5, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2032
    invoke-interface {v5, v3, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2033
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v5, v3, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2034
    invoke-interface {v5, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    .line 2037
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    if-ge v7, v0, :cond_2

    .line 2039
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2040
    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2041
    invoke-interface {v5, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2042
    const-string v11, "id"

    iget v12, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-interface {v5, v3, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2043
    iget v11, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-interface {v5, v3, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2044
    iget-boolean v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-interface {v5, v3, v9, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2045
    const-string v11, "account"

    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v3, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2046
    const-string/jumbo v11, "type"

    iget-object v12, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v5, v3, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2047
    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v5, v3, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2048
    const-string/jumbo v8, "syncable"

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-interface {v5, v3, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2049
    invoke-interface {v5, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2051
    :cond_2
    invoke-interface {v5, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2052
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 2053
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_1
    move-exception v0

    .line 2055
    :goto_2
    const-string v1, "SyncManager"

    const-string v2, "Error writing accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_3

    .line 2057
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_3
    return-void
.end method

.method public writeAllState()V
    .locals 1

    .line 1656
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1658
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1659
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1660
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeDayStatsLocked(Ljava/io/OutputStream;)V
    .locals 9

    .line 2631
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2632
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length p1, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2634
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v3, 0x20b00000001L

    .line 2638
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    .line 2640
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    .line 2641
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000003L

    .line 2642
    iget-wide v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000004L

    .line 2643
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000005L

    .line 2644
    iget-wide v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2645
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2647
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeStatisticsLocked()V
    .locals 5

    .line 2607
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "SyncManager"

    if-eqz v0, :cond_0

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing new "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2617
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2618
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->writeDayStatsLocked(Ljava/io/OutputStream;)V

    .line 2619
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2625
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2622
    :goto_0
    :try_start_2
    const-string v3, "Unable to write day stats to proto."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2625
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2626
    throw v0
.end method

.method public final writeStatusInfoLocked(Ljava/io/OutputStream;)V
    .locals 14

    .line 2362
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2363
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_4

    .line 2365
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    const-wide v4, 0x20b00000001L

    .line 2366
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2368
    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    const-wide v7, 0x10500000002L

    invoke-virtual {v0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000003L

    .line 2369
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000004L

    .line 2370
    iget v8, v3, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000005L

    .line 2371
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000006L

    .line 2372
    iget v8, v3, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10900000007L

    .line 2373
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10300000008L

    .line 2374
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10800000009L

    .line 2375
    iget-boolean v8, v3, Landroid/content/SyncStatusInfo;->pending:Z

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x1080000000aL

    .line 2376
    iget-boolean v8, v3, Landroid/content/SyncStatusInfo;->initialize:Z

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2377
    invoke-virtual {v3}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTimesSize()I

    move-result v6

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    const-wide v8, 0x2030000000bL

    .line 2380
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v10

    .line 2379
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2382
    :cond_0
    invoke-virtual {v3}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_1

    const-wide v8, 0x20b0000000cL

    .line 2384
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10300000001L

    .line 2386
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v12

    .line 2385
    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10900000002L

    .line 2387
    invoke-virtual {v3, v7}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2388
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const-wide v6, 0x1030000000dL

    .line 2390
    iget-wide v8, v3, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10b0000000eL

    .line 2392
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2393
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2394
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10b0000000fL

    .line 2395
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2396
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2397
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10b00000010L

    .line 2398
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2400
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2401
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2403
    iget-object v6, v3, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v6, v6

    move v7, v1

    :goto_3
    if-ge v7, v6, :cond_2

    .line 2405
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v8, v8, v7

    const-wide v10, 0x20300000011L

    invoke-virtual {v0, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2408
    :cond_2
    iget-object v6, v3, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v6, v6

    move v7, v1

    :goto_4
    if-ge v7, v6, :cond_3

    .line 2410
    iget-object v8, v3, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v8, v8, v7

    const-wide v10, 0x20300000012L

    invoke-virtual {v0, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2413
    :cond_3
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const-wide v1, 0x10800000002L

    .line 2416
    iget-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    invoke-virtual {v0, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000003L

    .line 2417
    iget-boolean p0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2419
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeStatusLocked()V
    .locals 5

    const/4 v0, 0x2

    .line 2339
    const-string v1, "SyncManagerFile"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2350
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->writeStatusInfoLocked(Ljava/io/OutputStream;)V

    .line 2351
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2357
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2354
    :goto_0
    :try_start_2
    const-string v2, "SyncManager"

    const-string v3, "Unable to write sync status to proto."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2357
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2358
    throw v0
.end method

.method public final writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .locals 4

    .line 2423
    iget-wide v0, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000002L

    .line 2424
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    .line 2425
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000004L

    .line 2426
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    .line 2427
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    .line 2428
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000007L

    .line 2429
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000008L

    .line 2430
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000009L

    .line 2431
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000aL

    .line 2432
    iget p0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method
