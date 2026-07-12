.class public Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public mAcceptSet:Ljava/util/List;

.field public mAgent:Landroid/app/IBackupAgent;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mAreVToUListsSet:Ljava/lang/Boolean;

.field public mBackupData:Landroid/os/ParcelFileDescriptor;

.field public mBackupDataName:Ljava/io/File;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public mDidLaunch:Z

.field public final mEphemeralOpToken:I

.field public mFinished:Z

.field public mIsSystemRestore:Z

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mNewState:Landroid/os/ParcelFileDescriptor;

.field public mNewStateName:Ljava/io/File;

.field public mObserver:Landroid/app/backup/IRestoreObserver;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field public mPmToken:I

.field public mRestoreAttemptedAppsCount:I

.field public mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field public mStageName:Ljava/io/File;

.field public mStartRealtime:J

.field public mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public mStateDir:Ljava/io/File;

.field public mStatus:I

.field public mTargetPackage:Landroid/content/pm/PackageInfo;

.field public mToken:J

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;

.field public final mUserId:I

.field public mVToUAllowlist:Ljava/util/List;

.field public mVToUDenylist:Ljava/util/List;

.field public mWidgetData:[B


# direct methods
.method public static bridge synthetic -$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackupManagerMonitorEventSender(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOperationStorage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/OperationStorage;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddRestoreOperationTypeToEvent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    .line 217
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 218
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 219
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 220
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 221
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 222
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 225
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 226
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 227
    new-instance p3, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p3, p5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 228
    iput-wide p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 229
    iput p9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    .line 230
    iput-object p8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 231
    iput-boolean p10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    const/4 p3, 0x0

    .line 232
    iput-boolean p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 233
    iput-boolean p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 234
    iput-object p12, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 237
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p4

    .line 236
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 239
    iput-object p13, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    if-eqz p8, :cond_0

    .line 243
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 244
    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p11, :cond_1

    .line 251
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 250
    invoke-static {p4, p2, p13}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object p2

    .line 254
    invoke-virtual {p0, p2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p11

    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Full restore; asking about "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p11

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " apps"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "BackupManagerService"

    invoke-static {p4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    array-length p4, p11

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move p2, p3

    move p4, p2

    move p5, p4

    .line 265
    :goto_0
    array-length p6, p11

    const-string p7, "com.android.providers.settings"

    const-string p8, "android"

    if-ge p2, p6, :cond_5

    .line 267
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p6

    .line 268
    aget-object p9, p11, p2

    iget p10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {p6, p9, p3, p10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p6

    .line 269
    iget-object p9, p6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p8, p9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p8

    const/4 p9, 0x1

    if-eqz p8, :cond_2

    move p4, p9

    goto :goto_1

    .line 273
    :cond_2
    iget-object p8, p6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_3

    move p5, p9

    goto :goto_1

    .line 278
    :cond_3
    iget-object p7, p6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 279
    invoke-virtual {p13, p7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result p7

    if-eqz p7, :cond_4

    .line 286
    iget-object p7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {p7, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    .line 294
    :try_start_1
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 297
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iget p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 298
    invoke-virtual {p4, p8, p3, p6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p4

    .line 294
    invoke-interface {p2, p3, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    if-eqz p5, :cond_7

    .line 305
    :try_start_2
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 307
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 308
    invoke-virtual {p1, p7, p3, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 305
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 189
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 190
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 191
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 192
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const/4 p2, 0x0

    .line 193
    iput p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 194
    iput p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 195
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 196
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 197
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 198
    invoke-virtual {p0, p3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 199
    invoke-virtual {p0, p4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1643
    const-string p0, "android.app.backup.extra.OPERATION_TYPE"

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final createPackageInfoForBMMLogging(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 1761
    new-instance p0, Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1762
    iput-object p1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public createVToUList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1662
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1664
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final dispatchNextRestore()V
    .locals 15

    .line 575
    const-string v0, "BackupManagerService"

    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    const/16 v2, -0x3e8

    const/16 v3, 0xb0f

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 577
    :try_start_0
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v8, "PerformUnifiedRestoreTask.dispatchNextRestore()"

    .line 578
    invoke-virtual {v7, v8}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v7

    .line 580
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    if-eqz v7, :cond_0

    .line 582
    invoke-virtual {v7}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v7

    goto/16 :goto_3

    :cond_0
    move-object v7, v6

    :goto_0
    const/4 v8, 0x1

    if-nez v7, :cond_1

    .line 584
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 585
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v10, 0x38

    invoke-virtual {v9, v10, v6, v8, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 590
    const-string v7, "Failure getting next package name"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 592
    iput v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 595
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    sget-object v10, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    if-ne v9, v10, :cond_2

    .line 597
    const-string v7, "No more packages; finishing restore"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    sub-long/2addr v7, v9

    long-to-int v7, v7

    .line 599
    iget v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I

    .line 600
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0xb12

    .line 599
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 605
    :cond_2
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Next restore package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I

    .line 607
    invoke-virtual {p0, v9, v7}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendOnRestorePackage(ILjava/lang/String;)V

    .line 609
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v9, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v9

    const/16 v10, 0xb10

    if-nez v9, :cond_3

    .line 611
    new-instance v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v8}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 612
    iput-object v7, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 613
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 614
    iget-object v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v12, 0x18

    invoke-virtual {v11, v12, v8, v5, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 619
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No metadata for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v8, "Package metadata missing"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 622
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 627
    :cond_3
    :try_start_3
    iget-object v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 629
    invoke-virtual {v11}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget v12, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    const/high16 v13, 0x8000000

    .line 630
    invoke-virtual {v11, v7, v13, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 632
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 633
    iget-object v12, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v13, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v14, 0x43

    invoke-virtual {v12, v14, v13, v5, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    :try_start_4
    iget-wide v11, v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    iget-object v13, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_8

    .line 659
    iget-boolean v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 660
    invoke-virtual {v11}, Lcom/android/server/backup/PackageManagerBackupAgent;->getSourceSdk()I

    move-result v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v11, v12}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->isVToUDowngrade(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 662
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_4

    .line 663
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 666
    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "v_to_u_restore_allowlist"

    iget v12, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 665
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 664
    invoke-virtual {p0, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 669
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 672
    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "v_to_u_restore_denylist"

    iget v12, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 671
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 670
    invoke-virtual {p0, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    .line 675
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logVToUListsToBMM()V

    .line 676
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    .line 678
    :cond_4
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->isPackageEligibleForVToURestore(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 679
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 683
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    const/16 v12, 0x46

    .line 679
    invoke-virtual {v9, v12, v10, v5, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 684
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is eligible for V to U downgrade scenario"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 687
    :cond_5
    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 691
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    const/16 v12, 0x47

    .line 687
    invoke-virtual {v8, v12, v9, v5, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 692
    const-string v8, "Package not eligible for V to U downgrade scenario"

    .line 693
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 695
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 699
    :cond_6
    :try_start_5
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x20000

    and-int/2addr v7, v10

    if-nez v7, :cond_7

    .line 703
    invoke-virtual {p0, v4, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V

    .line 704
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 707
    :cond_7
    :try_start_6
    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V

    .line 725
    :cond_8
    :goto_1
    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 726
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v7}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v7

    if-ne v7, v8, :cond_9

    .line 728
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_2

    :cond_9
    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 730
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_2

    .line 733
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized restore type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 735
    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v10, 0x39

    invoke-virtual {v8, v10, v9, v5, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 740
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 754
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 642
    :catch_1
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not present: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 644
    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 646
    invoke-virtual {p0, v7}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createPackageInfoForBMMLogging(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v11

    const/16 v12, 0x1a

    .line 644
    invoke-virtual {v9, v12, v11, v5, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 649
    const-string v8, "Package missing on device"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 651
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 743
    :goto_3
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t get next restore target from transport; halting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p0, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 745
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v8, 0x3c

    invoke-virtual {v7, v8, v6, v5, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 750
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 751
    iput v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 752
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 755
    throw v0
.end method

.method public execute()V
    .locals 2

    .line 338
    sget-object v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$1;->$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState:[I

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    .line 360
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->finalizeRestore()V

    goto :goto_0

    .line 363
    :cond_0
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    return-void

    .line 356
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreFinished()V

    return-void

    .line 352
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreFull()V

    return-void

    .line 348
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->restoreKeyValue()V

    return-void

    .line 344
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->dispatchNextRestore()V

    return-void

    .line 340
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->startRestore()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .locals 1

    .line 1580
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1581
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1583
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x14

    .line 1584
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1585
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 985
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 992
    new-array v1, v1, [B

    .line 993
    :goto_0
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 994
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 995
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 997
    const-string v4, "BackupManagerService"

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping blocked key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 1004
    :cond_0
    const-string/jumbo v5, "\uffed\uffedwidget"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring widget state for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 1007
    invoke-virtual {p2, v2, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    goto :goto_0

    .line 1009
    :cond_1
    array-length v4, v1

    if-le v3, v4, :cond_2

    .line 1010
    new-array v1, v3, [B

    .line 1012
    :cond_2
    invoke-virtual {p2, v1, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 1013
    invoke-virtual {p3, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1014
    invoke-virtual {p3, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final finalizeRestore()V
    .locals 6

    .line 1335
    const-string v0, "PerformUnifiedRestoreTask.finalizeRestore()"

    .line 1337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 1338
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->finishRestore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1340
    const-string v2, "BackupManagerService"

    const-string v3, "Error finishing restore"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1344
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendEndRestore()V

    .line 1347
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1350
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 1354
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    if-lez v1, :cond_0

    .line 1359
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1360
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManagerBinder()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    iget-boolean v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 1361
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1368
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1369
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v3

    .line 1370
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1371
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1372
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1376
    :catch_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v1, :cond_1

    .line 1378
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->systemRestoreFinished(I)V

    .line 1383
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-eqz v1, :cond_2

    .line 1384
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralPackages(Ljava/util/Set;)V

    .line 1385
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-wide v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralToken(J)V

    .line 1386
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 1387
    invoke-virtual {v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result v2

    .line 1386
    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralBackupDestination(I)V

    .line 1388
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1391
    :cond_2
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 1392
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1393
    const-string v2, "BackupManagerService"

    const-string v3, "Starting next pending restore."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 1395
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1396
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1399
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x14

    .line 1400
    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1397
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1403
    :cond_3
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 1408
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1410
    const-string v1, "BackupManagerService"

    const-string v2, "Restore complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1411
    invoke-virtual {p0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1412
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v4, 0x44

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1418
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {p0, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    return-void

    .line 1408
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getCurrentUnifiedRestoreStateForTesting()Lcom/android/server/backup/restore/UnifiedRestoreState;
    .locals 0

    .line 1590
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    return-object p0
.end method

.method public getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 979
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getExcludedRestoreKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public handleCancel(I)V
    .locals 4

    .line 1560
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    invoke-interface {p1, v0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 1561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timeout restoring application "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1562
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 1563
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x2

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1568
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "restore timeout"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0xb10

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 p1, 0x1

    .line 1571
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1572
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public final initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    .locals 20

    move-object/from16 v4, p0

    move-object/from16 v0, p1

    .line 847
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateOneRestore packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "BackupManagerService"

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v1, Ljava/io/File;

    iget-object v2, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".restore"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 853
    new-instance v1, Ljava/io/File;

    iget-object v2, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".stage"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 854
    new-instance v1, Ljava/io/File;

    iget-object v2, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".new"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 856
    invoke-virtual {v4, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->shouldStageBackupData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    iget-object v2, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v2, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 862
    :try_start_0
    iget-object v3, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v5, "PerformUnifiedRestoreTask.initiateOneRestore()"

    .line 863
    invoke-virtual {v3, v5}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    const/high16 v5, 0x3c000000    # 0.0078125f

    .line 868
    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 874
    invoke-virtual {v3, v10}, Lcom/android/server/backup/transport/BackupTransportClient;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    const/4 v11, 0x1

    if-eqz v3, :cond_2

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting restore data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {v4, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 879
    iget-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v3, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v5, 0x3f

    invoke-virtual {v1, v5, v3, v11, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 884
    new-array v0, v9, [Ljava/lang/Object;

    const/16 v1, 0xb0f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 885
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 886
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 889
    invoke-static {}, Lcom/android/server/backup/BackupAndRestoreFeatureFlags;->getUnifiedRestoreContinueAfterTransportFailureInKvRestore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 891
    :cond_1
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 892
    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    :cond_2
    const/high16 v3, 0x10000000

    if-eqz v1, :cond_3

    .line 900
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 902
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 905
    iget-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 906
    invoke-static {v1, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 912
    new-instance v1, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 913
    new-instance v2, Landroid/app/backup/BackupDataOutput;

    iget-object v12, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v2, v12}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 914
    invoke-virtual {v4, v6, v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V

    .line 916
    iget-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 920
    :cond_3
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 922
    iget-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 923
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 925
    iget-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 926
    invoke-static {v1, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 935
    iget-object v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 936
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v2

    .line 937
    iget-object v0, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :try_start_1
    iget-object v12, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v13, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v0, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v1, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    iget-object v2, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 945
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    .line 946
    invoke-virtual {v4, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-wide/from16 v14, p2

    move-object/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v19, v2

    .line 940
    invoke-interface/range {v12 .. v19}, Landroid/app/IBackupAgent;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move v9, v11

    .line 948
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to call app for restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    invoke-virtual {v4, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 950
    iget-object v2, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v3, v4, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x2

    const/16 v7, 0x3d

    invoke-virtual {v2, v7, v3, v5, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 955
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb10

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 957
    invoke-virtual {v4, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 962
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public initiateOneRestoreForTesting(Landroid/content/pm/PackageInfo;J)V
    .locals 0

    .line 1605
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    return-void
.end method

.method public isPackageEligibleForVToURestore(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 1675
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_0

    .line 1676
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : Package is in V to U denylist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1678
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Package has restoreAnyVersion=false and is in V to U allowlist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1687
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : Package has restoreAnyVersion=true and is not in V to U denylist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isVToUDowngrade(II)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public keyValueAgentCleanup()V
    .locals 3

    .line 1438
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1439
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1442
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 1448
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 1452
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 1467
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1470
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 1479
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public keyValueAgentErrorCleanup(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1430
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1433
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    return-void
.end method

.method public final logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V
    .locals 4

    .line 1694
    iget-wide v0, p2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    const/4 v2, 0x0

    .line 1695
    const-string v3, "android.app.backup.extra.LOG_RESTORE_VERSION"

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    .line 1700
    const-string v1, " > installed version "

    const-string v2, "Source version "

    const-string v3, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1702
    invoke-static {v0, v3, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1709
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " but restoreAnyVersion"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1713
    invoke-static {v0, v3, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1720
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1721
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb10

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1724
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BackupManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 1726
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x3

    const/16 v1, 0x1b

    invoke-virtual {p2, v1, p0, v0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final logVToUListsToBMM()V
    .locals 5

    .line 1735
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 1739
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1736
    const-string v2, "android.app.backup.extra.V_TO_U_ALLOWLIST"

    invoke-static {v1, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1740
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1741
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v3, 0x48

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1747
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    .line 1751
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1748
    const-string v2, "android.app.backup.extra.V_TO_U_DENYLIST"

    invoke-static {v1, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1752
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1753
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-virtual {p0, v3, v1, v4, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-void
.end method

.method public operationComplete(J)V
    .locals 4

    .line 1484
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    invoke-interface {p1, p2}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 1496
    sget-object p1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$1;->$SwitchMap$com$android$server$backup$restore$UnifiedRestoreState:[I

    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 1548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected restore callback into state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-virtual {p0, p2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1550
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_0

    .line 1515
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, 0x0

    .line 1516
    invoke-virtual {p0, p2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 1517
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v2, 0x3e

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1522
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0xb11

    .line 1522
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1528
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p1, p2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 1537
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    if-eqz p1, :cond_1

    .line 1538
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    .line 1542
    :cond_1
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_0

    .line 1509
    :cond_2
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_0

    .line 1501
    :cond_3
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1554
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public final packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 3

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 325
    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 327
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final restoreFinished()V
    .locals 8

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreFinished packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1066
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentFinishedTimeoutMillis()J

    move-result-wide v4

    .line 1067
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    move-object v6, p0

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 1072
    iget-object p0, v6, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget v0, v6, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    iget-object v2, v6, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1073
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 1072
    invoke-interface {p0, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, p0

    goto :goto_0

    .line 1078
    :goto_1
    iget-object v0, v6, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to finalize restore of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1080
    invoke-virtual {v6, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1081
    iget-object v2, v6, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v3, v6, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v4, 0x2

    const/16 v5, 0x45

    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1084
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0xb10

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 p0, 0x1

    .line 1085
    invoke-virtual {v6, p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 1086
    sget-object p0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v6, p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public final restoreFull()V
    .locals 6

    .line 1030
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x0

    .line 1034
    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const/16 v4, 0x3b

    const/4 v5, 0x3

    .line 1030
    invoke-virtual {v0, v4, v1, v5, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1036
    :try_start_0
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    invoke-direct {v0, p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V

    .line 1042
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v3, "unified-stream-feeder"

    invoke-direct {v1, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1050
    :catch_0
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to construct pipes for stream restore!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1052
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v2, 0x40

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v2, v3, v5, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1057
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public final restoreKeyValue()V
    .locals 10

    .line 763
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 766
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/4 v3, 0x0

    .line 770
    invoke-virtual {p0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const/16 v5, 0x3a

    const/4 v6, 0x3

    .line 766
    invoke-virtual {v2, v5, v0, v6, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 771
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v2, 0x2

    const/16 v4, 0xb10

    if-eqz v0, :cond_3

    const-string v5, ""

    .line 772
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v0

    .line 791
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 792
    iget-object v7, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v8, v5}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    const-string v7, "BackupManagerService"

    if-nez v5, :cond_1

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature mismatch restoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {p0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 795
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v3, 0x1d

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, v3, v5, v6, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 800
    const-string v0, "Signature mismatch"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 802
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 807
    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 808
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 811
    invoke-virtual {v9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result v9

    .line 808
    invoke-virtual {v5, v8, v2, v9}, Lcom/android/server/backup/BackupAgentConnectionManager;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_2

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find backup agent for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {p0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 815
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v3, 0x1e

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, v3, v5, v6, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 820
    const-string v0, "Restore agent missing"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 822
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 827
    iput-boolean v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-wide v4, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when attempting restore: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v3, 0x3d

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 840
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 841
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 780
    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 781
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0x1c

    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v5, v6, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 784
    const-string v0, "Package has no agent"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 786
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method

.method public sendEndRestore()V
    .locals 2

    .line 1632
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_0

    .line 1634
    :try_start_0
    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1636
    :catch_0
    const-string v0, "BackupManagerService"

    const-string v1, "Restore observer went away: endRestore"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1637
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    :cond_0
    return-void
.end method

.method public sendOnRestorePackage(ILjava/lang/String;)V
    .locals 1

    .line 1621
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_0

    .line 1623
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1625
    :catch_0
    const-string p1, "BackupManagerService"

    const-string p2, "Restore observer died in onUpdate"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1626
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    :cond_0
    return-void
.end method

.method public sendStartRestore(I)V
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_0

    .line 1612
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1614
    :catch_0
    const-string p1, "BackupManagerService"

    const-string v0, "Restore observer went away: startRestore"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1615
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    :cond_0
    return-void
.end method

.method public setCurrentUnifiedRestoreStateForTesting(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .locals 0

    .line 1595
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    return-void
.end method

.method public setNoRestrictedModePackages(Lcom/android/server/backup/transport/BackupTransportClient;[Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 1771
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    .line 1772
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1773
    aget-object v2, p2, v1

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 1775
    invoke-virtual {p1, v0, p2}, Lcom/android/server/backup/transport/BackupTransportClient;->getPackagesThatShouldNotUseRestrictedMode(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object p1

    .line 1777
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupAgentConnectionManager;->setNoRestrictedModePackages(Ljava/util/Set;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1780
    :catch_0
    const-string p0, "BackupManagerService"

    const-string p1, "Failed to retrieve restricted mode packages from transport"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStateDirForTesting(Ljava/io/File;)V
    .locals 0

    .line 1600
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    return-void
.end method

.method public shouldStageBackupData(Ljava/lang/String;)Z
    .locals 1

    .line 973
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 974
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final startRestore()V
    .locals 12

    .line 414
    const-string v0, "@pm@"

    const-string v1, "BackupManagerService"

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->sendStartRestore(I)V

    const/16 v2, 0x14

    const/4 v3, 0x1

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    .line 417
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 419
    invoke-virtual {v7}, Lcom/android/server/backup/transport/TransportConnection;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 418
    invoke-virtual {v6, v7}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    .line 420
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 423
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 424
    iput-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 425
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 427
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    new-array v7, v8, [Landroid/content/pm/PackageInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/PackageInfo;

    .line 429
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v8, "PerformUnifiedRestoreTask.startRestore()"

    .line 430
    invoke-virtual {v7, v8}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v7

    .line 434
    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-virtual {v8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v8

    if-nez v8, :cond_0

    .line 435
    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->setMonitor(Landroid/app/backup/IBackupManagerMonitor;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 448
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    const/4 v9, 0x3

    if-eqz v8, :cond_1

    .line 449
    iget v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-static {v8}, Lcom/android/server/AppWidgetBackupBridge;->systemRestoreStarting(I)V

    .line 450
    invoke-virtual {p0, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 451
    iget-object v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v11, 0x35

    invoke-virtual {v10, v11, v5, v9, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 458
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 459
    iget-object v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v11, 0x36

    invoke-virtual {v10, v11, v5, v9, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 466
    :goto_1
    iget-wide v10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    invoke-virtual {v7, v10, v11, v6}, Lcom/android/server/backup/transport/BackupTransportClient;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v8

    iput v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    if-eqz v8, :cond_2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport error "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; no restore possible"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 470
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v8, 0x37

    invoke-virtual {v6, v8, v7, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 475
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 476
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 482
    :cond_2
    invoke-virtual {p0, v7, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->setNoRestrictedModePackages(Lcom/android/server/backup/transport/BackupTransportClient;[Landroid/content/pm/PackageInfo;)V

    .line 484
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v6

    if-nez v6, :cond_3

    .line 486
    const-string v0, "No restore metadata available; halting"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 488
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v8, 0x16

    invoke-virtual {v6, v8, v7, v9, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 493
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 494
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 497
    :cond_3
    invoke-virtual {v6}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required package metadata but got "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 500
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v8, 0x17

    invoke-virtual {v6, v8, v7, v9, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 505
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 506
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void

    .line 511
    :cond_4
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 512
    iput-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 513
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 514
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v7, 0x3e8

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 515
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 516
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 520
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-wide/16 v7, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 528
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    iget-object v6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v6

    if-nez v6, :cond_5

    .line 534
    const-string v6, "PM agent has no metadata, so not restoring"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 536
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v10, 0x18

    invoke-virtual {v7, v10, v8, v9, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 541
    const-string v6, "Package manager restore metadata missing"

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0xb10

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 545
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 546
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 547
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    .line 548
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 549
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    .line 558
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to contact transport for restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v6, 0x19

    invoke-virtual {v1, v6, v5, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 565
    iput v4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 566
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 567
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    return-void
.end method
