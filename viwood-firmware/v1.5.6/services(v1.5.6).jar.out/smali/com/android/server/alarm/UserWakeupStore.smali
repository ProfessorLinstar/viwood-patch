.class public Lcom/android/server/alarm/UserWakeupStore;
.super Ljava/lang/Object;
.source "UserWakeupStore.java"


# static fields
.field static final BUFFER_TIME_MS:J

.field static final INITIAL_USER_START_SCHEDULING_DELAY_MS:J

.field static final ROOT_DIR_NAME:Ljava/lang/String; = "alarms"

.field static final USERS_FILE_NAME:Ljava/lang/String; = "usersWithAlarmClocks.xml"

.field static final USER_START_TIME_DEVIATION_LIMIT_MS:J

.field public static final USER_WAKEUP_DIR:Ljava/io/File;

.field public static final USER_WAKEUP_TAG:Ljava/lang/String; = "UserWakeupStore"

.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mUserStarts:Landroid/util/SparseLongArray;

.field public final mUserWakeupLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$RRPL7G24EIHFeMe-T-tGIgJID68(Landroid/util/Pair;)J
    .locals 2

    .line 267
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$RtPOqbDBIOvatsb3ac7h25ScrKA(Lcom/android/server/alarm/UserWakeupStore;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->lambda$updateUserListFile$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$pWSHEtk9BW_hVoHWFYf0q0jjP9E(Lcom/android/server/alarm/UserWakeupStore;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->readUserIdList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/alarm/UserWakeupStore;->BUFFER_TIME_MS:J

    const-wide/16 v1, 0x5

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/alarm/UserWakeupStore;->USER_START_TIME_DEVIATION_LIMIT_MS:J

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/alarm/UserWakeupStore;->INITIAL_USER_START_SCHEDULING_DELAY_MS:J

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "alarms"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_DIR:Ljava/io/File;

    .line 105
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/server/alarm/UserWakeupStore;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    return-void
.end method

.method public static getUserWakeupOffset()J
    .locals 5

    .line 235
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->sRandom:Ljava/util/Random;

    sget-wide v1, Lcom/android/server/alarm/UserWakeupStore;->USER_START_TIME_DEVIATION_LIMIT_MS:J

    const-wide/16 v3, 0x2

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Random;->nextLong(J)J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3
.end method


# virtual methods
.method public addUserWakeup(IJ)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    sget-wide v2, Lcom/android/server/alarm/UserWakeupStore;->BUFFER_TIME_MS:J

    sub-long/2addr p2, v2

    invoke-static {}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupOffset()J

    move-result-wide v2

    add-long/2addr p2, v2

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->updateUserListFile()V

    return-void

    :catchall_0
    move-exception p0

    .line 123
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final deleteWakeupFromUserStarts(I)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->removeAt(I)V

    const/4 p0, 0x1

    .line 213
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 215
    monitor-exit v0

    return p0

    .line 216
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 344
    const-string v1, "User wakeup store file path: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupFile()Landroid/util/AtomicFile;

    move-result-object v1

    if-nez v1, :cond_0

    .line 347
    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 349
    :cond_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 351
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " user wakeups scheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 352
    :goto_1
    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 353
    const-string v2, "UserId: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 355
    const-string v2, ", userStartTime: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 357
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 360
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNextWakeupTime()J
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v4, v1

    .line 225
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 226
    iget-object v6, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_0

    cmp-long v6, v4, v1

    if-nez v6, :cond_1

    .line 227
    :cond_0
    iget-object v4, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 230
    :cond_2
    monitor-exit v0

    return-wide v4

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserIdsToWakeup(J)[I
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 145
    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 146
    iget-object v5, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-gtz v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 147
    iget-object v6, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v6

    aput v6, v1, v4

    move v4, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 151
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserWakeupFile()Landroid/util/AtomicFile;
    .locals 3

    .line 333
    sget-object p0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_DIR:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mkdir() user list file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 337
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "usersWithAlarmClocks.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getWakeupTimeForUser(I)J
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    const-wide/16 v1, -0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 112
    new-instance v1, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/UserWakeupStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$updateUserListFile$0()V
    .locals 3

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->writeUserIdList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 171
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->updateUserListFile()V

    :cond_0
    return-void
.end method

.method public onUserStarting(I)V
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->updateUserListFile()V

    :cond_0
    return-void
.end method

.method public final readUserIdList()V
    .locals 17

    move-object/from16 v0, p0

    .line 283
    invoke-virtual {v0}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupFile()Landroid/util/AtomicFile;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 286
    :cond_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User wakeup file not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_1
    iget-object v2, v0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 292
    :try_start_0
    iget-object v3, v0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->clear()V

    .line 293
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 294
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :try_start_2
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 297
    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    if-eq v4, v6, :cond_3

    .line 302
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read user list. No start tag found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    .line 307
    :cond_3
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "users"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 308
    const-string/jumbo v1, "version"

    const/4 v7, -0x1

    invoke-interface {v3, v4, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 312
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 314
    sget-wide v9, Lcom/android/server/alarm/UserWakeupStore;->BUFFER_TIME_MS:J

    add-long/2addr v7, v9

    invoke-static {}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupOffset()J

    move-result-wide v9

    add-long/2addr v7, v9

    const-wide/16 v9, 0x0

    .line 315
    :cond_5
    :goto_1
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_6

    if-ne v1, v6, :cond_5

    .line 317
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "user"

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 318
    const-string/jumbo v1, "user_id"

    invoke-interface {v3, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 319
    iget-object v11, v0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    :try_start_3
    iget-object v12, v0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    const-wide/16 v13, 0x1

    add-long/2addr v13, v9

    sget-wide v15, Lcom/android/server/alarm/UserWakeupStore;->INITIAL_USER_START_SCHEDULING_DELAY_MS:J

    mul-long/2addr v9, v15

    add-long/2addr v9, v7

    invoke-virtual {v12, v1, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 322
    monitor-exit v11

    move-wide v9, v13

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    if-eqz v2, :cond_8

    .line 326
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :goto_3
    if-eqz v2, :cond_7

    .line 294
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    .line 327
    sget-object v1, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    const-string v2, "Error reading user wakeup data"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_5
    return-void

    :catchall_3
    move-exception v0

    .line 293
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public removeUserWakeup(I)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->updateUserListFile()V

    :cond_0
    return-void
.end method

.method public final updateUserListFile()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/UserWakeupStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final writeUserIdList()V
    .locals 12

    .line 251
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupFile()Landroid/util/AtomicFile;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 255
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :try_start_1
    new-instance v2, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 257
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 258
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 259
    const-string/jumbo v3, "users"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    const-string/jumbo v3, "version"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/jobs/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v5, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    move v7, v6

    .line 263
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 264
    new-instance v8, Landroid/util/Pair;

    iget-object v9, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 266
    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :try_start_3
    new-instance p0, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ge v6, p0, :cond_2

    .line 269
    const-string/jumbo p0, "user"

    invoke-interface {v2, v4, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    const-string/jumbo p0, "user_id"

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, p0, v5}, Lcom/android/internal/util/jobs/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 271
    const-string/jumbo p0, "user"

    invoke-interface {v2, v4, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 273
    :cond_2
    const-string/jumbo p0, "users"

    invoke-interface {v2, v4, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 275
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 276
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    .line 266
    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    if-eqz v1, :cond_3

    .line 255
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 277
    :goto_5
    sget-object v1, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    const-string v2, "Error writing user wakeup data"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    :cond_4
    :goto_6
    return-void
.end method
