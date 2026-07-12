.class public Lcom/android/server/notification/NotificationHistoryManager;
.super Ljava/lang/Object;
.source "NotificationHistoryManager.java"


# static fields
.field public static final DEBUG:Z

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "notification_history"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHistoryEnabled:Landroid/util/SparseBooleanArray;

.field public final mLock:Ljava/lang/Object;

.field final mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

.field public final mUserPendingPackageRemovals:Landroid/util/SparseArray;

.field public final mUserState:Landroid/util/SparseArray;

.field public final mUserUnlockedStates:Landroid/util/SparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$h_Z1DxUiaHb-t4mnDIKe8ap8bgM(Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->lambda$addNotification$0(Landroid/app/NotificationHistory$HistoricalNotification;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationHistoryManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    .line 77
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    .line 78
    new-instance p1, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    return-void
.end method


# virtual methods
.method public addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 1

    .line 246
    new-instance v0, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/NotificationHistory$HistoricalNotification;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public cleanupHistoryFiles()V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 169
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 171
    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez v3, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->prune()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteConversations(Ljava/lang/String;ILjava/util/Set;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 201
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    .line 205
    const-string p0, "NotificationHistory"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to remove conversation for locked/gone/disabled user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteConversations(Ljava/lang/String;Ljava/util/Set;)V

    .line 210
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    .line 221
    const-string p0, "NotificationHistory"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to remove channel for locked/gone/disabled user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 185
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    .line 189
    const-string p0, "NotificationHistory"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempted to remove notif for locked/gone/disabled user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteNotificationHistoryItem(Ljava/lang/String;J)V

    .line 194
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V
    .locals 1

    .line 317
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->disableHistory()V

    .line 319
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 320
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 321
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public doesHistoryExistForUser(I)Z
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPendingPackageRemovalsForUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;
    .locals 5

    .line 327
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const-string v1, "NotificationHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 328
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "History disabled for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez v0, :cond_4

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "notification_history"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/server/notification/NotificationHistoryDatabaseFactory;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v0

    .line 340
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    const-string v4, "Attempted to initialize service for stopped or removed user "

    if-eqz v3, :cond_3

    .line 342
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 344
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 345
    :cond_2
    throw v0

    .line 354
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    return-object v0
.end method

.method public isUserUnlocked(I)Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$addNotification$0(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    .line 251
    const-string p0, "NotificationHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add notif for locked/gone/disabled user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 256
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryJobService;->scheduleJob(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 90
    const-string v1, "NotificationHistory"

    const-string v2, "Failed to schedule cleanup job"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->observe()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->stopObserving()V

    return-void
.end method

.method public onHistoryEnabledChanged(IZ)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 305
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_2

    .line 308
    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V

    goto :goto_1

    .line 311
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 313
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(ILjava/lang/String;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 149
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 152
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez p0, :cond_2

    .line 156
    monitor-exit v0

    return-void

    .line 159
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->onPackageRemoved(Ljava/lang/String;)V

    .line 160
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserAdded(I)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(Landroid/net/Uri;I)V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 137
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 138
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserStopped(I)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 128
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserUnlocked(I)V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    const-string p0, "NotificationHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to unlock gone/disabled user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 108
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 109
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->onPackageRemoved(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V

    .line 118
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readNotificationHistory([I)Landroid/app/NotificationHistory;
    .locals 8

    .line 261
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    if-nez p1, :cond_0

    .line 264
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 266
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    .line 268
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v5

    if-nez v5, :cond_1

    .line 270
    const-string v5, "NotificationHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to read history for locked/gone/disabled user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationHistoryDatabase;->readNotificationHistory()Landroid/app/NotificationHistory;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_2
    monitor-exit v0

    return-object v1

    .line 276
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public replaceNotificationHistoryDatabase(ILcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 382
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 384
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public triggerWriteToDisk()V
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 233
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 234
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->forceWriteToDisk()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
