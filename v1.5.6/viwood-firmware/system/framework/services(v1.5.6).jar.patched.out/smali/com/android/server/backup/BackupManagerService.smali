.class public Lcom/android/server/backup/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/app/backup/BackupManagerInternal;


# static fields
.field static final DUMP_RUNNING_USERS_MESSAGE:Ljava/lang/String; = "Backup Manager is running for users:"

.field public static sInstance:Lcom/android/server/backup/BackupManagerService;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultBackupUserId:I

.field public final mGlobalDisable:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasFirstUserUnlockedSinceBoot:Z

.field public final mStateLock:Ljava/lang/Object;

.field public final mTransportWhitelist:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserServices:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$V80FPZ5wqif8yKHR2AZ4_2Tr31I(Lcom/android/server/backup/BackupManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->lambda$onStopUser$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/backup/BackupManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHasFirstUserUnlockedSinceBoot(Lcom/android/server/backup/BackupManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monRemovedNonSystemUser(Lcom/android/server/backup/BackupManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onRemovedNonSystemUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDefaultBackupUserIdIfNeeded(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->updateDefaultBackupUserIdIfNeeded()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 172
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 170
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    .line 173
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupDisabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 175
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "backup"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 177
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 179
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    .line 180
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 182
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v2

    if-nez v2, :cond_0

    .line 183
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_0
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 184
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Default backup user id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/android/server/backup/BackupManagerService;
    .locals 1

    .line 128
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static showDumpUsage(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1547
    const-string v0, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    const-string v0, "  --help    : this help text"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    const-string v0, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    const-string v0, "  transportclients : dump information about transport clients"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    const-string v0, "  transportstats : dump transport stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    const-string v0, "  users    : dump the list of users for which backup service is running"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    const-string v0, "  --user <userId> : dump information for user userId"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 1

    .line 925
    const-string v0, "acknowledgeAdbBackupOrRestore()"

    .line 926
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    move p1, p2

    move p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    .line 929
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_0
    return-void
.end method

.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7

    .line 939
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 938
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    return-void
.end method

.method public acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 1

    .line 908
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_0
    return-void
.end method

.method public final activateBackupForUserLocked(I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 296
    iget v0, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    return-void

    .line 297
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 1

    .line 840
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    const-string v0, "adbBackup()"

    .line 844
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, p7

    move p7, p8

    move p8, p9

    move p9, p10

    move-object p10, p11

    .line 847
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 888
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    const-string v0, "adbRestore()"

    .line 892
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 895
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public agentConnectedForUser(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 1

    .line 637
    invoke-virtual {p0, p2}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    const-string v0, "agentConnected()"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/BackupAgentConnectionManager;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public agentDisconnectedForUser(Ljava/lang/String;I)V
    .locals 1

    .line 652
    invoke-virtual {p0, p2}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    const-string v0, "agentDisconnected()"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupAgentConnectionManager;->agentDisconnected(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public backupNow()V
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->backupNowForUser(I)V

    return-void
.end method

.method public backupNow(I)V
    .locals 1

    .line 813
    const-string v0, "backupNow()"

    .line 814
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    :cond_0
    return-void
.end method

.method public backupNowForUser(I)V
    .locals 1

    .line 798
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupNow(I)V

    :cond_0
    return-void
.end method

.method public beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z
    .locals 2

    .line 1565
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1568
    :cond_0
    const-string v0, "beginFullBackup()"

    .line 1569
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1572
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 1

    .line 1286
    const-string v0, "beginRestoreSession()"

    .line 1287
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1291
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object p0

    return-object p0
.end method

.method public beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 1

    .line 1275
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public binderGetCallingUid()I
    .locals 0

    .line 208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUserId()I
    .locals 0

    .line 203
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public cancelBackups()V
    .locals 1

    .line 1414
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->cancelBackupsForUser(I)V

    return-void
.end method

.method public cancelBackups(I)V
    .locals 1

    .line 1419
    const-string v0, "cancelBackups()"

    .line 1420
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->cancelBackups()V

    :cond_0
    return-void
.end method

.method public cancelBackupsForUser(I)V
    .locals 1

    .line 1407
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->cancelBackups(I)V

    :cond_0
    return-void
.end method

.method public clearBackupData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 621
    const-string v0, "clearBackupData()"

    .line 622
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 625
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final createFile(Ljava/io/File;)V
    .locals 1

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 249
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_1

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public dataChanged(ILjava/lang/String;)V
    .locals 1

    .line 577
    const-string v0, "dataChanged()"

    .line 578
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 581
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 1

    .line 568
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedForUser(ILjava/lang/String;)V

    return-void
.end method

.method public dataChangedForUser(ILjava/lang/String;)V
    .locals 1

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final deactivateBackupForUserLocked(I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 279
    iget v0, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    return-void

    .line 280
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    return-void
.end method

.method public final deleteFile(Ljava/io/File;)V
    .locals 1

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to delete file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1485
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 1491
    invoke-virtual {p0, p3, v0}, Lcom/android/server/backup/BackupManagerService;->nextArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1494
    const-string v2, "--help"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 1498
    :cond_1
    const-string/jumbo v2, "users"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "dump()"

    if-eqz v2, :cond_4

    .line 1499
    const-string p1, "Backup Manager is running for users:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1500
    :goto_0
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 1501
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 1502
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1505
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1508
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    .line 1511
    :cond_4
    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 1512
    invoke-virtual {p0, p3, v0}, Lcom/android/server/backup/BackupManagerService;->nextArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1515
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->showDumpUsage(Ljava/io/PrintWriter;)V

    return-void

    .line 1518
    :cond_5
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1520
    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 1522
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 1530
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1531
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 1532
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1534
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void

    .line 1495
    :cond_9
    :goto_3
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->showDumpUsage(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public endFullBackup(I)V
    .locals 1

    .line 1580
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1583
    :cond_0
    const-string v0, "endFullBackup()"

    .line 1584
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1587
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceCallingPermissionOnUserId(ILjava/lang/String;)V
    .locals 1

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1666
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final enforcePermissionsOnUser(I)V
    .locals 2

    .line 454
    const-string v0, "No permission to configure backup activity"

    if-eqz p1, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 459
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUid()I

    move-result p0

    const/16 p1, 0x3e8

    if-eq p0, p1, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    .line 461
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1597
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1598
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Returning from excludeKeysFromRestore as backup for user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not initialized yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1603
    :cond_0
    const-string v1, "excludeKeysFromRestore()"

    .line 1604
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1607
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1362
    const-string v0, "filterAppsEligibleForBackup()"

    .line 1363
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1367
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1354
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public fullTransportBackup(I[Ljava/lang/String;)V
    .locals 1

    .line 873
    const-string v0, "fullTransportBackup()"

    .line 874
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 877
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fullTransportBackupForUser(I[Ljava/lang/String;)V
    .locals 1

    .line 864
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActivatedFileForUser(I)Ljava/io/File;
    .locals 0

    .line 225
    const-string p0, "backup-activated"

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableRestoreToken(ILjava/lang/String;)J
    .locals 1

    .line 1329
    const-string v0, "getAvailableRestoreToken()"

    .line 1330
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1334
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAvailableRestoreTokenForUser(ILjava/lang/String;)J
    .locals 1

    .line 1321
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1189
    const-string v0, "getConfigurationIntent()"

    .line 1190
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1194
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1172
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 1

    .line 950
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTransport(I)Ljava/lang/String;
    .locals 1

    .line 956
    const-string v0, "getCurrentTransport()"

    .line 957
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 961
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTransportComponent(I)Landroid/content/ComponentName;
    .locals 1

    .line 980
    const-string v0, "getCurrentTransportComponent()"

    .line 981
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;
    .locals 1

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportComponent(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentTransportForUser(I)Ljava/lang/String;
    .locals 1

    .line 945
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1243
    const-string v0, "getDataManagementIntent()"

    .line 1244
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1248
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1230
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 1264
    const-string v0, "getDataManagementLabel()"

    .line 1265
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1269
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDestinationString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1219
    const-string v0, "getDestinationString()"

    .line 1220
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1224
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1199
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;
    .locals 0

    .line 219
    const-string p0, "backup-remember-activated"

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 2

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 1650
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/UserBackupManagerService;

    if-nez p0, :cond_0

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for unknown user: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public getSuppressFileForUser(I)Ljava/io/File;
    .locals 1

    .line 213
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "backup-suppress"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 3

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 1029
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1035
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1036
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .locals 8

    .line 1438
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1441
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1445
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1450
    array-length v2, v0

    :goto_0
    if-ge v5, v2, :cond_2

    aget v3, v0, v5

    .line 1451
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/UserBackupManagerService;

    if-eqz v4, :cond_1

    .line 1453
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumber()J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_1

    .line 1454
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    .line 1447
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    throw p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserServices()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation

    .line 425
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    return-object p0
.end method

.method public hasBackupPassword()Z
    .locals 2

    .line 785
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 786
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 789
    :cond_0
    const-string v0, "hasBackupPassword()"

    .line 790
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->hasBackupPassword()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 1

    .line 600
    const-string v0, "initializeTransports()"

    .line 601
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 604
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    :cond_0
    return-void
.end method

.method public initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 1

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    :cond_0
    return-void
.end method

.method public isAppEligibleForBackup(ILjava/lang/String;)Z
    .locals 1

    .line 1345
    const-string v0, "isAppEligibleForBackup()"

    .line 1346
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1349
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAppEligibleForBackupForUser(ILjava/lang/String;)Z
    .locals 1

    .line 1339
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->isAppEligibleForBackup(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isBackupActivatedForUser(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 332
    :cond_0
    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    return v0

    :cond_2
    if-eqz v1, :cond_3

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    if-nez v1, :cond_5

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public isBackupDisabled()Z
    .locals 1

    .line 198
    const-string/jumbo p0, "ro.backup.disable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBackupEnabled()Z
    .locals 1

    .line 754
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabledForUser(I)Z

    move-result p0

    return p0
.end method

.method public isBackupEnabled(I)Z
    .locals 1

    .line 761
    const-string v0, "isBackupEnabled()"

    .line 762
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBackupEnabledForUser(I)Z
    .locals 1

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBackupServiceActive(I)Z
    .locals 3

    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-wide/32 v1, 0x9723ef2

    .line 549
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupServiceActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 556
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUserReadyForBackup(I)Z
    .locals 1

    .line 311
    const-string/jumbo v0, "isUserReadyForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 312
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onStopUser$0(I)V
    .locals 2

    .line 435
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping service for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    :cond_0
    return-void
.end method

.method public listAllTransportComponents(I)[Landroid/content/ComponentName;
    .locals 1

    .line 1018
    const-string/jumbo v0, "listAllTransportComponents()"

    .line 1019
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 1

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransportComponents(I)[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 1

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public listAllTransports(I)[Ljava/lang/String;
    .locals 1

    .line 996
    const-string/jumbo v0, "listAllTransports()"

    .line 997
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public listAllTransportsForUser(I)[Ljava/lang/String;
    .locals 1

    .line 990
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransports(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final nextArg([Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1540
    array-length p0, p1

    if-lt p2, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1543
    :cond_0
    aget-object p0, p1, p2

    return-object p0
.end method

.method public final onRemovedNonSystemUser(I)V
    .locals 2

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing state for non system user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateDirInSystemDir(I)Ljava/io/File;

    move-result-object p0

    .line 237
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete state dir for removed user: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    .line 433
    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public opComplete(IIJ)V
    .locals 1

    .line 1311
    const-string/jumbo v0, "opComplete()"

    .line 1312
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1315
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/backup/UserBackupManagerService;->opComplete(IJ)V

    :cond_0
    return-void
.end method

.method public opComplete(IJ)V
    .locals 1

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opCompleteForUser(IIJ)V

    return-void
.end method

.method public opCompleteForUser(IIJ)V
    .locals 1

    .line 1296
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->opComplete(IIJ)V

    :cond_0
    return-void
.end method

.method public postToHandler(Ljava/lang/Runnable;)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1612
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1613
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1614
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Returning from reportDelayedRestoreResult as backup for user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not initialized yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1618
    :cond_0
    const-string/jumbo v1, "reportDelayedRestoreResult()"

    .line 1619
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1627
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1630
    throw p0

    :cond_1
    return-void
.end method

.method public requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 1

    .line 1397
    const-string/jumbo v0, "requestBackup()"

    .line 1398
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, -0x7d1

    return p0

    .line 1402
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 6

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 6

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0x7d1

    return p0

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1376
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public restoreAtInstall(ILjava/lang/String;I)V
    .locals 1

    .line 683
    const-string/jumbo v0, "restoreAtInstall()"

    .line 684
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 687
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstallForUser(ILjava/lang/String;I)V

    return-void
.end method

.method public restoreAtInstallForUser(ILjava/lang/String;I)V
    .locals 1

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1129
    const-string/jumbo v0, "selectBackupTransport()"

    .line 1130
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1134
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 1

    .line 1161
    const-string/jumbo v0, "selectBackupTransportAsync()"

    .line 1162
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1165
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    :cond_0
    return-void
.end method

.method public selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 1

    .line 1140
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/16 p0, -0x7d1

    .line 1145
    :try_start_0
    invoke-interface {p3, p0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAncestralSerialNumber(J)V
    .locals 2

    .line 1470
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1475
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string/jumbo v1, "setAncestralSerialNumber()"

    .line 1474
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1479
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralSerialNumber(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoRestore(IZ)V
    .locals 1

    .line 739
    const-string/jumbo v0, "setAutoRestore()"

    .line 740
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 743
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAutoRestore(Z)V

    :cond_0
    return-void
.end method

.method public setAutoRestore(Z)V
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestoreForUser(IZ)V

    return-void
.end method

.method public setAutoRestoreForUser(IZ)V
    .locals 1

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(IZ)V

    :cond_0
    return-void
.end method

.method public setBackupEnabled(IZ)V
    .locals 1

    .line 717
    const-string/jumbo v0, "setBackupEnabled()"

    .line 718
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 721
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 1

    .line 712
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabledForUser(IZ)V

    return-void
.end method

.method public setBackupEnabledForUser(IZ)V
    .locals 1

    .line 705
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(IZ)V

    :cond_0
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 770
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 771
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 774
    :cond_0
    const-string/jumbo v0, "setBackupPassword()"

    .line 775
    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 779
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public setBackupServiceActive(IZ)V
    .locals 4

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->enforcePermissionsOnUser(I)V

    if-eqz p1, :cond_0

    .line 490
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 492
    invoke-static {v0, p2}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->writeBoolean(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 494
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to persist backup service activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_1

    .line 499
    const-string p0, "BackupManagerService"

    const-string p1, "Backup service not supported"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_1
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v3, ""

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    const-string v3, "in"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 507
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->activateBackupForUserLocked(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 509
    :catch_1
    :try_start_3
    const-string p2, "BackupManagerService"

    const-string v1, "Unable to persist backup service activity"

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 521
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 527
    :cond_3
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deactivateBackupForUserLocked(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 529
    :catch_2
    :try_start_7
    const-string p2, "BackupManagerService"

    const-string v1, "Unable to persist backup service inactivity"

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    .line 535
    :cond_4
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public setFrameworkSchedulingEnabledForUser(IZ)V
    .locals 1

    .line 693
    const-string/jumbo v0, "setFrameworkSchedulingEnabledForUser()"

    .line 694
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 698
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setFrameworkSchedulingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public startServiceForUser(I)V
    .locals 3

    .line 370
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_0

    .line 371
    const-string p0, "Backup service not supported"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Backup not activated for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "userId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already started, so not starting again"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 382
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service for user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 384
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V

    return-void
.end method

.method public startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V
    .locals 2

    .line 395
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    const-string p0, "backup enable"

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->initializeBackupEnableState()V

    .line 399
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public stopServiceForUser(I)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownService()V

    .line 410
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 411
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/server/backup/FullBackupJob;->cancel(ILandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final updateDefaultBackupUserIdIfNeeded()V
    .locals 3

    .line 1728
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1732
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1737
    :cond_1
    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1738
    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 1739
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    .line 1742
    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1743
    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    .line 1745
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default backup user changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1094
    const-string/jumbo v0, "updateTransportAttributes()"

    .line 1095
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    .line 1098
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/backup/BackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
