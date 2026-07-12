.class public Lcom/android/server/locksettings/LockSettingsStorage;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# static fields
.field public static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field public static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field public static final DEFAULT:Ljava/lang/Object;

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;


# instance fields
.field public final mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

.field public final mContext:Landroid/content/Context;

.field public final mFileWriteLock:Ljava/lang/Object;

.field public final mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

.field public mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 80
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 83
    const-string/jumbo v1, "name"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 99
    const-string v0, "lock_pattern_visible_pattern"

    const-string v1, "lockscreen.power_button_instantly_locks"

    const-string v2, "lock_screen_owner_info_enabled"

    const-string v3, "lock_screen_owner_info"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>(Lcom/android/server/locksettings/LockSettingsStorage-IA;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->clear()V

    return-void
.end method

.method public closeDatabase()V
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public deactivateFactoryResetProtectionWithoutSecret()V
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 621
    invoke-interface {p0}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->deactivateFactoryResetProtectionWithoutSecret()Z

    return-void

    .line 623
    :cond_0
    const-string p0, "LockSettingsStorage"

    const-string v0, "Failed to get PersistentDataBlockManagerInternal"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final deleteFile(Ljava/io/File;)V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 358
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 360
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 358
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 362
    :goto_1
    :try_start_6
    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to zeroize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :cond_0
    :goto_2
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 367
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/io/File;[B)V

    .line 368
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public deleteRepairModePersistentData()V
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public deleteSyntheticPasswordState(IJLjava/lang/String;)V
    .locals 0

    .line 441
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordStateFileForUser(IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9

    .line 738
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "%6d %s %s"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 740
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v4

    .line 741
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "User %d [%s]:"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 743
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 745
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 746
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 747
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 748
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v7

    .line 749
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v6, v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 747
    invoke-static {v2, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 752
    :cond_0
    const-string v1, "[Not found]"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 754
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    .line 757
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 759
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Repair Mode [%s]:"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 761
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 762
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 761
    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->readRepairModePersistentData()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    .line 765
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 766
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    if-eqz p0, :cond_3

    array-length v3, p0

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 765
    const-string/jumbo v0, "type: %d, user id: %d, payload size: %d"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4
    return-void
.end method

.method public final ensureSyntheticPasswordDirectoryForUser(I)V
    .locals 0

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    .line 488
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 489
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method public final fsyncDirectory(Ljava/io/File;)V
    .locals 4

    .line 312
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 312
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 317
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error syncing directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockSettingsStorage"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 1

    const/4 v0, 0x0

    .line 550
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 551
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 552
    :cond_0
    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getChildProfileLockFile(I)Ljava/io/File;
    .locals 1

    .line 373
    const-string v0, "gatekeeper.profile.key"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getInt(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 562
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;
    .locals 0

    if-nez p1, :cond_0

    .line 391
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    .line 393
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 1

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 557
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-wide p2

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_0

    .line 585
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 586
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 588
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method public getRebootEscrowFile(I)Ljava/io/File;
    .locals 1

    .line 378
    const-string/jumbo v0, "reboot.escrow.key"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getRebootEscrowServerBlobFile()Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 384
    const-string/jumbo v1, "reboot.escrow.server.blob.key"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getRepairModePersistentDataFile()Ljava/io/File;
    .locals 2

    .line 399
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "repair-mode/"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pst"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 566
    invoke-static {p3}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 569
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;
    .locals 1

    .line 482
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "spblob/"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSyntheticPasswordStateFileForUser(IJLjava/lang/String;)Ljava/io/File;
    .locals 0

    .line 494
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%016x.%s"

    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 495
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3
.end method

.method public hasChildProfileLock(I)Z
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final hasFile(Ljava/io/File;)Z
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 283
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasRebootEscrow(I)Z
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public isAutoPinConfirmSettingEnabled(I)Z
    .locals 2

    .line 129
    const-string v0, "lockscreen.auto_pin_confirm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public isFactoryResetProtectionActive()Z
    .locals 1

    .line 628
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 629
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz p0, :cond_0

    .line 631
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    move-result p0

    return p0

    .line 633
    :cond_0
    const-string p0, "LockSettingsStorage"

    const-string v0, "Failed to get PersistentDataBlockManager"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyValueCached(Ljava/lang/String;I)Z
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isUserPrefetched(I)Z
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->isFetched(I)Z

    move-result p0

    return p0
.end method

.method public listSyntheticPasswordProtectorsForAllUsers(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 452
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 453
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 455
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public listSyntheticPasswordProtectorsForUser(Ljava/lang/String;I)Ljava/util/List;
    .locals 6

    .line 461
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    .line 462
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 467
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 468
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 469
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    :try_start_0
    aget-object v4, v3, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 473
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse protector ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LockSettingsStorage"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object p2
.end method

.method public prefetchUser(I)V
    .locals 10

    .line 210
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->isFetched(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->setFetched(I)V

    .line 215
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->-$$Nest$mgetVersion(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v0

    .line 216
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 220
    const-string v3, "locksettings"

    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    const-string/jumbo v5, "user=?"

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 220
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 224
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 225
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 226
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v4, v2, v3, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 216
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public readChildProfileLock(I)[B
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public final readFile(Ljava/io/File;)[B
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekFile(Ljava/io/File;)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->-$$Nest$mgetVersion(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v1

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 296
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [B

    const/4 v4, 0x0

    .line 298
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 299
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 300
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 296
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 304
    :goto_1
    const-string v3, "LockSettingsStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :catch_1
    :goto_2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/io/File;[BI)V

    return-object v0

    .line 293
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .line 154
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->-$$Nest$mgetVersion(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I

    move-result v0

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 164
    const-string v4, "locksettings"

    sget-object v5, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v6, "user=? AND name=?"

    .line 166
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 164
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 168
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 169
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 171
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 173
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1, v3, p3, v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    if-ne v3, v1, :cond_3

    return-object p2

    .line 174
    :cond_3
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 159
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 2

    .line 606
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    .line 608
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0

    .line 611
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 613
    const-string v0, "LockSettingsStorage"

    const-string v1, "Error reading persistent data block"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0
.end method

.method public readRebootEscrow(I)[B
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public readRebootEscrowServerBlob()[B
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public readRepairModePersistentData()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 1

    .line 404
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    if-nez p0, :cond_0

    .line 406
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object p0

    .line 408
    :cond_0
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    return-object p0
.end method

.method public readSyntheticPasswordState(IJLjava/lang/String;)[B
    .locals 0

    .line 437
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordStateFileForUser(IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public removeChildProfileLock(I)V
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public final removeKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 3

    .line 193
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 194
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 199
    :try_start_0
    const-string v0, "locksettings"

    const-string/jumbo v1, "name=? AND user=?"

    .line 200
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 202
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->removeKey(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 205
    throw p0
.end method

.method public removeKey(Ljava/lang/String;I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    return-void
.end method

.method public removeRebootEscrow(I)V
    .locals 0

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public removeRebootEscrowServerBlob()V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public removeUser(I)V
    .locals 5

    .line 499
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 502
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 512
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v1

    .line 514
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 515
    const-string v2, "locksettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 516
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 517
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->removeUser(I)V

    .line 521
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->purgePath(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 524
    throw p0
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    .line 528
    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;II)V
    .locals 0

    .line 536
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 0

    .line 532
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 540
    invoke-static {p3}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 541
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 540
    const-string v2, "cannot store lock settings for special user: %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 543
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 544
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 545
    const-string p0, "com.android.providers.settings"

    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public syncSyntheticPasswordState(I)V
    .locals 0

    .line 448
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->fsyncDirectory(Ljava/io/File;)V

    return-void
.end method

.method public writeChildProfileLock(I[B)V
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[B)V

    return-void
.end method

.method public final writeFile(Ljava/io/File;[B)V
    .locals 1

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void
.end method

.method public final writeFile(Ljava/io/File;[BZ)V
    .locals 8

    .line 326
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 333
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 334
    :try_start_2
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 335
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 340
    :try_start_3
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 338
    :goto_0
    :try_start_4
    const-string v4, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 340
    :try_start_5
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_1
    if-eqz p3, :cond_0

    .line 346
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->fsyncDirectory(Ljava/io/File;)V

    .line 348
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putFile(Ljava/io/File;[B)V

    .line 349
    monitor-exit v0

    return-void

    .line 340
    :goto_2
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 341
    throw p0

    .line 349
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 134
    const-string v0, "locksettings"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 135
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 141
    :try_start_0
    const-string/jumbo v2, "name=? AND user=?"

    .line 142
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 144
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 145
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    throw p0
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public writePersistentDataBlock(III[B)V
    .locals 0

    .line 597
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 601
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->setFrpCredentialHandle([B)V

    return-void
.end method

.method public writeRebootEscrow(I[B)V
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[B)V

    return-void
.end method

.method public writeRebootEscrowServerBlob([B)V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[B)V

    return-void
.end method

.method public writeRepairModePersistentData(II[B)V
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    invoke-static {p1, p2, v1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    move-result-object p1

    .line 412
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[B)V

    return-void
.end method

.method public writeSyntheticPasswordState(IJLjava/lang/String;[B)V
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->ensureSyntheticPasswordDirectoryForUser(I)V

    .line 432
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordStateFileForUser(IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p5, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    return-void
.end method
