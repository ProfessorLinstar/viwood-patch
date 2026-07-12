.class public Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
.super Ljava/lang/Object;
.source "KeyValueBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;
.implements Ljava/lang/Runnable;


# static fields
.field public static final NEW_STATE_FILE_SUFFIX:Ljava/lang/String; = ".new"

.field static final NO_DATA_END_SENTINEL:Ljava/lang/String; = "@end@"

.field public static final STAGING_FILE_SUFFIX:Ljava/lang/String; = ".data"

.field public static final THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mAgent:Landroid/app/IBackupAgent;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mBackupData:Landroid/os/ParcelFileDescriptor;

.field public mBackupDataFile:Ljava/io/File;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBlankStateFile:Ljava/io/File;

.field public final mCancelAcknowledged:Landroid/os/ConditionVariable;

.field public volatile mCancelled:Z

.field public final mCurrentOpToken:I

.field public mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public final mDataDirectory:Ljava/io/File;

.field public mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field public mHasDataToBackup:Z

.field public final mJournal:Lcom/android/server/backup/DataChangedJournal;

.field public mNewState:Landroid/os/ParcelFileDescriptor;

.field public mNewStateFile:Ljava/io/File;

.field public mNonIncremental:Z

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mOriginalQueue:Ljava/util/List;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public volatile mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

.field public final mPendingFullBackups:Ljava/util/List;

.field public final mQueue:Ljava/util/List;

.field public final mQueueLock:Ljava/lang/Object;

.field public final mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

.field public mSavedState:Landroid/os/ParcelFileDescriptor;

.field public mSavedStateFile:Ljava/io/File;

.field public final mStateDirectory:Ljava/io/File;

.field public final mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mUserId:I

.field public final mUserInitiated:Z


# direct methods
.method public static synthetic $r8$lambda$HlOnrtndPiz-6Ppg2cGxgaeHfJ0(Landroid/app/IBackupAgent;JJLandroid/app/backup/IBackupCallback;)V
    .locals 0

    .line 1151
    invoke-interface/range {p0 .. p5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oFR3nE7py0s4M-mHvfz7rZmKkGI(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->lambda$extractAgentData$0(Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/UserBackupManagerService;",
            "Lcom/android/server/backup/OperationStorage;",
            "Lcom/android/server/backup/transport/TransportConnection;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/android/server/backup/utils/BackupEligibilityRules;",
            ")V"
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 299
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 321
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 322
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 323
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 324
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 325
    iput-object p5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    .line 327
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 328
    iput-object p6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 329
    iput-object p7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 330
    iput-object p8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 331
    iput-object p9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 332
    iput-boolean p10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 333
    iput-boolean p11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 336
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p2

    .line 335
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 338
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object p3

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 339
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    .line 340
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p3

    iput p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 341
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    .line 342
    new-instance p3, Ljava/io/File;

    const-string p4, "blank_state"

    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 343
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 344
    iput-object p12, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method

.method public static start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    .locals 2

    move-object v0, p7

    .line 227
    new-instance p7, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    new-instance v1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {v1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    invoke-direct {p7, p0, p6, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 230
    new-instance p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    invoke-direct/range {p0 .. p12}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 244
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "key-value-backup-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 246
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onNewThread(Ljava/lang/String;)V

    return-object p0
.end method

.method private unregisterTask()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    invoke-interface {v0, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method


# virtual methods
.method public final SHA1Checksum([B)Ljava/lang/String;
    .locals 3

    .line 1001
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1002
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1009
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 1010
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 1004
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onDigestError(Ljava/security/NoSuchAlgorithmException;)V

    .line 1005
    const-string p0, "00"

    return-object p0
.end method

.method public final agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v1, "KVBT.agentDoQuotaExceeded()"

    .line 1148
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 1149
    invoke-virtual {v0, p2, v1}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 1150
    new-instance v2, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;-><init>(Landroid/app/IBackupAgent;JJ)V

    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1152
    invoke-virtual {p1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide p1

    const-string p3, "doQuotaExceeded()"

    .line 1150
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1155
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDoQuotaExceededError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 0

    .line 991
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 993
    :catch_0
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onFailAgentError(Ljava/lang/String;)V

    return-void
.end method

.method public final applyStateTransaction(I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1323
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1324
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 1327
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1318
    :cond_1
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    if-eqz p0, :cond_2

    .line 1319
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    .line 1315
    :cond_3
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public final backupPackage(Ljava/lang/String;)V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 701
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;)V

    .line 702
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 703
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    .line 704
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 705
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result p1

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 709
    throw p1
.end method

.method public final backupPm()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartPackageBackup(Ljava/lang/String;)V

    .line 664
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 665
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 672
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 684
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForTransportStatus(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 674
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_1 .. :try_end_1} :catch_0

    .line 686
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractPmAgentDataError(Ljava/lang/Exception;)V

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V

    .line 688
    instance-of p0, v0, Lcom/android/server/backup/keyvalue/TaskException;

    if-eqz p0, :cond_0

    .line 689
    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    throw v0

    .line 691
    :cond_0
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;
    .locals 4

    .line 740
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 744
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 746
    invoke-virtual {v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result v2

    const/4 v3, 0x0

    .line 744
    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/backup/BackupAgentConnectionManager;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 748
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentError(Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 752
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBindAgentError(Ljava/lang/String;Ljava/lang/SecurityException;)V

    .line 753
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0
.end method

.method public final checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V
    .locals 6

    .line 966
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    .line 972
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_3

    .line 976
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    if-eq p2, v0, :cond_2

    .line 980
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->isPresent()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 981
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteResult;->get()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_1

    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 986
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void

    .line 983
    :cond_1
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentResultError(Landroid/content/pm/PackageInfo;)V

    .line 984
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 977
    :cond_2
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentTimedOut(Landroid/content/pm/PackageInfo;)V

    .line 978
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->transitory()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 973
    :cond_3
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 974
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0

    .line 968
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 969
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 970
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 1166
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    goto :goto_4

    :cond_0
    const/high16 p1, 0x10000000

    .line 1171
    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 1172
    :try_start_0
    new-instance p2, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1173
    :goto_0
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1174
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1175
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xff00

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 1176
    :cond_1
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p2, v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentIllegalKey(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 1178
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal backup key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentFail(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 1179
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1181
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1183
    :cond_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void

    :goto_2
    if-eqz p1, :cond_4

    .line 1170
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0

    :cond_5
    :goto_4
    return-void
.end method

.method public final cleanUpAgent(I)V
    .locals 3

    .line 1289
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->applyStateTransaction(I)V

    .line 1290
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 1291
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1293
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x0

    .line 1294
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 1295
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 1296
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 1297
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v1, "old state"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const-string v1, "backup data"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v1, "new state"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1300
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 1301
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1302
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 1305
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 1309
    :cond_1
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    return-void
.end method

.method public final cleanUpAgentForError(Lcom/android/server/backup/keyvalue/BackupException;)V
    .locals 0

    const/4 p1, 0x1

    .line 1267
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    return-void
.end method

.method public final cleanUpAgentForTransportStatus(I)V
    .locals 1

    const/16 v0, -0x3ee

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1277
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    return-void

    .line 1284
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x2

    .line 1280
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    return-void
.end method

.method public final clearStatus(Ljava/lang/String;)V
    .locals 1

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public final clearStatus(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 551
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 552
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    .line 553
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to remove status file for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KVBT"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 14

    .line 646
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 651
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {v8, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 655
    invoke-virtual {p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getObserver()Landroid/app/backup/IBackupObserver;

    move-result-object v9

    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 656
    invoke-virtual {p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-boolean v12, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    iget-object v13, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v0
.end method

.method public final deletePmStateFile()V
    .locals 2

    .line 859
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v1, "@pm@"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public execute()V
    .locals 0

    .line 0
    return-void
.end method

.method public final extractAgentData(Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupWakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    const/4 v0, 0x0

    .line 884
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 885
    invoke-virtual {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupWakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupWakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 888
    throw p1
.end method

.method public final extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .locals 9

    .line 905
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 906
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onExtractAgentData(Ljava/lang/String;)V

    .line 908
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 909
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 910
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 911
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentFilesReady(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 916
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto :goto_2

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    :goto_0
    const/high16 v3, 0x18000000

    .line 919
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 920
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    .line 921
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 923
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 924
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 929
    iget v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_1

    .line 930
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRestoreconFailed(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 935
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v3, "KVBT.extractAgentData()"

    invoke-virtual {v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 937
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v6

    .line 938
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v8

    const/4 v2, 0x1

    .line 941
    new-instance v3, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, p0

    move-object v5, p2

    :try_start_5
    invoke-direct/range {v3 .. v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V

    iget-object p0, v4, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 951
    invoke-virtual {p0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v5

    const-string p0, "doBackup()"

    .line 942
    invoke-virtual {v4, v3, v5, v6, p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 961
    invoke-virtual {v4, p1, p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkAgentResult(Landroid/content/pm/PackageInfo;Lcom/android/server/backup/remote/RemoteResult;)V

    return-void

    :catch_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, p0

    goto :goto_1

    .line 954
    :goto_2
    iget-object p0, v4, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCallAgentDoBackupError(Ljava/lang/String;ZLjava/lang/Exception;)V

    if-eqz v2, :cond_2

    .line 956
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/AgentException;->transitory(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 958
    :cond_2
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    .locals 2

    .line 864
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "@pm@"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 865
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgentWithEligibilityRules(Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/BackupAgent;

    move-result-object v0

    .line 866
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 867
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    return-void
.end method

.method public final finishTask(I)V
    .locals 7

    .line 760
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 761
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onJournalDeleteFailed(Lcom/android/server/backup/DataChangedJournal;)V

    .line 770
    :cond_1
    const-string v0, "KVBT.finishTask()"

    .line 775
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentToken()J

    move-result-wide v1

    .line 776
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 780
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v4

    .line 781
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->getCurrentRestoreSet()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->setCurrentToken(J)V

    .line 782
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 785
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSetCurrentTokenError(Ljava/lang/Exception;)V

    .line 789
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    const/16 v2, -0x3e9

    if-ne p1, v2, :cond_3

    .line 792
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->triggerTransportInitializationLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 796
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPendingInitializeTransportError(Ljava/lang/Exception;)V

    const/16 p1, -0x3e8

    .line 800
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 802
    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->unregisterTask()V

    .line 803
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTaskFinished()V

    .line 805
    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-eqz v1, :cond_4

    .line 808
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 811
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v1, :cond_5

    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 814
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 815
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onStartFullBackup(Ljava/util/List;)V

    .line 820
    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v0, "full-transport-requested"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 824
    :cond_5
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_6

    .line 825
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 827
    :cond_6
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getBackupFinishedStatus(ZI)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onBackupFinished(I)V

    .line 829
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    return-void

    .line 800
    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final getBackupFinishedStatus(ZI)I
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/16 p0, -0x7d3

    return p0

    :cond_0
    const/16 p0, -0x3ed

    if-eq p2, p0, :cond_1

    const/16 p0, -0x3ea

    if-eq p2, p0, :cond_1

    if-eqz p2, :cond_1

    const/16 p0, -0x3e8

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getPackageForBackup(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    const/high16 v2, 0x8000000

    .line 717
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 724
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 732
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 733
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageStopped(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 729
    :cond_1
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageEligibleForFullBackup(Ljava/lang/String;)V

    .line 730
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 725
    :cond_2
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageNotEligibleForBackup(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception v0

    .line 720
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentUnknown(Ljava/lang/String;)V

    .line 721
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/AgentException;->permanent(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0
.end method

.method public final getPerformBackupFlags(ZZ)I
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method public final getSucceedingPackages()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 509
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    .line 560
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 561
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTopLevelSuccessStateDirectory(Z)Ljava/io/File;
    .locals 2

    .line 566
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v1, "backing-up"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    .line 568
    const-string p0, "KVBT"

    const-string p1, "Unable to create backing-up state directory"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public handleCancel(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1215
    :goto_0
    const-string v0, "Key-value backup task cannot time out"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1218
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->markCancel()V

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->waitCancel()V

    return-void
.end method

.method public final handleTransportStatus(ILjava/lang/String;J)V
    .locals 1

    if-nez p1, :cond_0

    .line 1121
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupComplete(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/16 v0, -0x3ee

    if-ne p1, v0, :cond_1

    .line 1125
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalRequired(Landroid/content/pm/PackageInfo;)V

    .line 1127
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    const/16 v0, -0x3ea

    if-eq p1, v0, :cond_3

    const/16 v0, -0x3ed

    if-ne p1, v0, :cond_2

    .line 1135
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupQuotaExceeded(Ljava/lang/String;)V

    .line 1136
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->agentDoQuotaExceeded(Landroid/app/IBackupAgent;Ljava/lang/String;J)V

    .line 1137
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0

    .line 1140
    :cond_2
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportFailure(Ljava/lang/String;)V

    .line 1141
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->forStatus(I)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0

    .line 1131
    :cond_3
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupRejected(Ljava/lang/String;)V

    .line 1132
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object p0

    throw p0
.end method

.method public final informTransportOfUnchangedApps(Ljava/util/Set;)V
    .locals 11

    .line 413
    const-string v0, "KVBT"

    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSucceedingPackages()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 420
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 426
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v4, "KVBT.informTransportOfEmptyBackups()"

    .line 427
    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    .line 429
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v8, v1, v6

    .line 430
    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 431
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping package which was backed up this time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    .line 438
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 439
    invoke-virtual {p0, v9}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 442
    invoke-virtual {p0, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 451
    :cond_3
    :try_start_2
    invoke-virtual {p0, v3, v9, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V

    const/4 v7, 0x1

    goto :goto_2

    .line 447
    :catch_1
    invoke-virtual {p0, v8}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    .line 459
    new-instance p1, Landroid/content/pm/PackageInfo;

    invoke-direct {p1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 460
    const-string v1, "@end@"

    iput-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 461
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 464
    :goto_3
    const-string p1, "Could not inform transport of all unchanged apps"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-void
.end method

.method public final isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 471
    invoke-virtual {v0, p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$extractAgentData$0(Landroid/app/IBackupAgent;JILandroid/app/backup/IBackupCallback;)V
    .locals 8

    .line 944
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object v0, p1

    move-wide v4, p2

    move v7, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    return-void
.end method

.method public markCancel()V
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCancel()V

    const/4 v0, 0x1

    .line 1226
    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 1227
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    if-eqz p0, :cond_0

    .line 1229
    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteCall;->cancel()V

    :cond_0
    return-void
.end method

.method public operationComplete(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public final registerTask()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/android/server/backup/OperationStorage;->registerOperation(IILcom/android/server/backup/BackupRestoreTask;I)V

    return-void
.end method

.method public final remoteCall(Lcom/android/server/backup/remote/RemoteCallable;JLjava/lang/String;)Lcom/android/server/backup/remote/RemoteResult;
    .locals 2

    .line 1344
    new-instance v0, Lcom/android/server/backup/remote/RemoteCall;

    iget-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 1345
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    invoke-virtual {p1}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object p1

    .line 1346
    iget-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRemoteCallReturned(Lcom/android/server/backup/remote/RemoteResult;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1347
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    return-object p1
.end method

.method public final revertTask()V
    .locals 5

    .line 1240
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onRevertTask()V

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v1, "KVBT.revertTask()"

    .line 1244
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->requestBackupTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1247
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportRequestBackupTimeError(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    .line 1251
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1252
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1251
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    .line 1254
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1255
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    const/16 v0, 0xa

    .line 357
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 361
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->startTask()V

    .line 365
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    if-nez v2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :try_start_1
    const-string v3, "@pm@"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPm()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    .line 371
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPackage(Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x1

    .line 373
    invoke-virtual {p0, v2, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 374
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 376
    :goto_2
    :try_start_2
    invoke-virtual {p0, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 377
    invoke-virtual {v3}, Lcom/android/server/backup/keyvalue/AgentException;->isTransitory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->informTransportOfUnchangedApps(Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 386
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->isStateCompromised()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 389
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->revertTask()V

    .line 390
    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->getStatus()I

    move-result v0

    .line 392
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->finishTask(I)V

    return-void
.end method

.method public final sendDataToTransport()I
    .locals 7

    .line 1067
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1068
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->checkBackupData(Landroid/content/pm/ApplicationInfo;Ljava/io/File;)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1071
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1073
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v1, v2

    .line 1074
    :cond_1
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I

    move-result v1

    .line 1075
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->handleTransportStatus(ILjava/lang/String;J)V

    return v1
.end method

.method public final sendDataToTransport(Landroid/content/pm/PackageInfo;)I
    .locals 1

    .line 578
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 580
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentDataError(Ljava/lang/String;Ljava/io/IOException;)V

    .line 581
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V
    .locals 2

    .line 480
    const-string v0, "KVBT"

    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    const/high16 v1, 0x18000000

    invoke-static {p0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :try_start_1
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/backup/transport/BackupTransportClient;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result p2

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_1

    const/16 p3, -0x3e9

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 489
    :cond_1
    :goto_0
    :try_start_2
    const-string p1, "Aborting informing transport of unchanged apps, transport errored"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_1
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 498
    throw p1

    .line 482
    :catch_0
    const-string p0, "Unable to find blank state file, aborting unchanged apps signal."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setSuccessState(Ljava/lang/String;Z)V
    .locals 4

    .line 514
    const-string v0, "Unable to permanently record success for "

    const-string v1, "KVBT"

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getSuccessStateFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v3, p2, :cond_2

    if-nez p2, :cond_1

    .line 524
    invoke-virtual {p0, p1, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/lang/String;Ljava/io/File;)V

    return-void

    .line 530
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_2

    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final startTask()V
    .locals 7

    .line 592
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-nez v0, :cond_6

    .line 599
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->createFullBackupTask(Ljava/util/List;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 600
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->registerTask()V

    .line 602
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyQueueAtStart()V

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const-string v1, "@pm@"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipPm()V

    goto :goto_1

    .line 609
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 614
    :goto_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onQueueReady(Ljava/util/List;)V

    .line 615
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "KVBT.startTask()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 619
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v2

    .line 620
    const-string v3, "EncryptedLocalTransport"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 622
    iput-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    .line 625
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportReady(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    .line 629
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransport(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 631
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->initializeDevice()I

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportInitialized(I)V

    if-nez v0, :cond_4

    goto :goto_3

    .line 634
    :cond_4
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    return-void

    .line 640
    :goto_4
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onInitializeTransportError(Ljava/lang/Exception;)V

    .line 641
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 638
    throw p0

    .line 593
    :cond_6
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onSkipBackup()V

    .line 594
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final transportPerformBackup(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)I
    .locals 5

    .line 1082
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1083
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 1085
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onEmptyData(Landroid/content/pm/PackageInfo;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 1089
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    const/high16 v1, 0x10000000

    .line 1093
    :try_start_0
    invoke-static {p2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "KVBT.transportPerformBackup()"

    .line 1095
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 1096
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportPerformBackup(Ljava/lang/String;)V

    .line 1097
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    invoke-virtual {p0, v2, p3}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getPerformBackupFlags(ZZ)I

    move-result v2

    .line 1099
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 1101
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/16 v2, -0x3e9

    if-ne p1, v2, :cond_2

    .line 1103
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onTransportNotInitialized(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 1105
    :try_start_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    const/16 p2, -0x3ee

    if-eq p1, p2, :cond_4

    goto :goto_2

    .line 1111
    :cond_4
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupNonIncrementalAndNonIncrementalRequired(Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/android/server/backup/keyvalue/TaskException;->create()Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p1

    :goto_3
    if-eqz p2, :cond_6

    .line 1092
    :try_start_3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1106
    :goto_5
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onPackageBackupTransportError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1107
    invoke-static {p1}, Lcom/android/server/backup/keyvalue/TaskException;->causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    move-result-object p0

    throw p0
.end method

.method public final triggerTransportInitializationLocked()V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v1, "KVBT.triggerTransportInitializationLocked"

    .line 851
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->deletePmStateFile()V

    .line 854
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    return-void
.end method

.method public final tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1334
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1336
    :catch_0
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {p0, p2}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onCloseFileDescriptorError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public waitCancel()V
    .locals 0

    .line 1236
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public final writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 4

    .line 1017
    iget v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1018
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_widget"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onWriteWidgetData(Z[B)V

    if-eqz v0, :cond_1

    .line 1031
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 1035
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1036
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1039
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 1040
    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 1034
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 1047
    :cond_2
    new-instance p2, Landroid/app/backup/BackupDataOutput;

    invoke-direct {p2, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1048
    const-string/jumbo p1, "\uffed\uffedwidget"

    if-eqz v0, :cond_3

    .line 1050
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1051
    :try_start_6
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1053
    :try_start_7
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1054
    :try_start_8
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1056
    array-length p0, v0

    invoke-virtual {p2, p1, p0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1057
    array-length p0, v0

    invoke-virtual {p2, v0, p0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    return-void

    :catchall_4
    move-exception p0

    goto :goto_5

    :catchall_5
    move-exception p0

    .line 1049
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_5
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_3
    const/4 p0, -0x1

    .line 1060
    invoke-virtual {p2, p1, p0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1061
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void
.end method
