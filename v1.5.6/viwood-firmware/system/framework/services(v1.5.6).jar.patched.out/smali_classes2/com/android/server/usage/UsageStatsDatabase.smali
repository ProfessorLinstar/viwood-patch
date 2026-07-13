.class public Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# static fields
.field public static final BACKUP_VERSION:I = 0x4

.field static final MAX_FILES_PER_INTERVAL_TYPE:[I

.field public static final SELECTION_LOG_RETENTION_LEN:I


# instance fields
.field public final mBackupsDir:Ljava/io/File;

.field public final mCal:Lcom/android/server/usage/UnixCalendar;

.field public mCurrentVersion:I

.field public mFirstUpdate:Z

.field public final mIntervalDirs:[Ljava/io/File;

.field public final mLock:Ljava/lang/Object;

.field public mNewUpdate:Z

.field public final mPackageMappingsFile:Ljava/io/File;

.field public final mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

.field final mSortedStatFiles:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mUpdateBreadcrumb:Ljava/io/File;

.field public mUpgradePerformed:Z

.field public final mVersionFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    const/16 v1, 0xa

    const/16 v2, 0x64

    const/16 v3, 0x32

    .line 102
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    .line 117
    const-string/jumbo v0, "ro.usagestats.chooser.retention"

    const/16 v1, 0xe

    .line 118
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x5

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/android/server/usage/PackagesTokenData;

    invoke-direct {v0}, Lcom/android/server/usage/PackagesTokenData;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v0, 0x4

    .line 151
    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "daily"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "weekly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "monthly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "yearly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 157
    iput p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 158
    new-instance p2, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 159
    new-instance p2, Ljava/io/File;

    const-string v1, "backups"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 160
    new-instance p2, Ljava/io/File;

    const-string v1, "breadcrumb"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 161
    array-length p2, v0

    new-array p2, p2, [Landroid/util/LongSparseArray;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 162
    new-instance p2, Ljava/io/File;

    const-string/jumbo v0, "mappings"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    .line 163
    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 5

    .line 1510
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1512
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1513
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1514
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1516
    :cond_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1520
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static deleteDirectoryContents(Ljava/io/File;)V
    .locals 3

    .line 1503
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 1504
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1505
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getIntervalStatsBytes(Ljava/io/DataInputStream;)[B
    .locals 3

    .line 1462
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1463
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1464
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    return-object v1
.end method

.method public static parseBeginTime(Landroid/util/AtomicFile;)J
    .locals 2

    .line 1018
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseBeginTime(Ljava/io/File;)J
    .locals 4

    .line 1022
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 1025
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1026
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1035
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 1037
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static pruneFilesOlderThan(Ljava/io/File;J)V
    .locals 5

    .line 968
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 970
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 973
    :try_start_0
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 979
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    .locals 3

    .line 1123
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1125
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1126
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    move-result p2

    .line 1127
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1130
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p2

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1134
    :catch_1
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 1136
    const-string p1, "UsageStatsDatabase"

    invoke-static {p1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    throw p0
.end method

.method public static readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    .locals 3

    const/4 v0, 0x1

    .line 1152
    const-string v1, "UsageStatsDatabase"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const-string v2, "Unable to read interval stats from proto."

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1172
    :try_start_0
    invoke-static {p0, p1, p4}, Lcom/android/server/usage/UsageStatsProtoV2;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1174
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1176
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->deobfuscateData(Lcom/android/server/usage/PackagesTokenData;)Z

    move-result p0

    goto :goto_2

    .line 1179
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on read."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1165
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1167
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1156
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Reading UsageStats as XML; database version: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :try_start_2
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1160
    const-string p1, "Unable to read interval stats from XML"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1470
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1471
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1472
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->clear()V

    return-void
.end method

.method public static writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .locals 1

    .line 1052
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1054
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    .line 1055
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1061
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1062
    throw p1

    .line 1061
    :catch_0
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .locals 3

    const/4 v0, 0x1

    .line 1067
    const-string v1, "UsageStatsDatabase"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const-string v2, "Unable to write interval stats to proto."

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1082
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 1084
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1086
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    throw p0

    .line 1091
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on write."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1075
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 1077
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    throw p0

    .line 1071
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Attempting to write UsageStats as XML with version "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1353
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1354
    :try_start_0
    const-string/jumbo v0, "usage_stats"

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1357
    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    const/4 v4, 0x1

    .line 1359
    invoke-virtual {v1, v4}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    const/4 v6, 0x2

    .line 1361
    invoke-virtual {v1, v6}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    const/4 v8, 0x3

    .line 1363
    invoke-virtual {v1, v8}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 1365
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1367
    :try_start_1
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v13, p2

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1368
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    if-lt v12, v4, :cond_6

    const/4 v13, 0x4

    if-le v12, v13, :cond_0

    goto/16 :goto_6

    :cond_0
    move v13, v0

    .line 1377
    :goto_0
    iget-object v14, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v15, v14

    if-ge v13, v15, :cond_1

    .line 1378
    aget-object v14, v14, v13

    invoke-static {v14}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 1382
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-object v15, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v16, v9

    const-wide/16 v8, 0x5a

    invoke-virtual {v15, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long/2addr v13, v8

    .line 1383
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_2

    .line 1385
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v15

    invoke-virtual {v1, v15, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v15

    .line 1387
    invoke-virtual {v1, v15, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    .line 1388
    iget-object v6, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1389
    invoke-virtual {v1, v15, v3}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    .line 1390
    invoke-virtual {v1, v0, v6}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x2

    goto :goto_1

    .line 1393
    :cond_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v6, v0

    :goto_2
    if-ge v6, v3, :cond_3

    .line 1395
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v8

    invoke-virtual {v1, v8, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    .line 1397
    invoke-virtual {v1, v8, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    .line 1398
    invoke-virtual {v1, v8, v5}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    .line 1399
    invoke-virtual {v1, v4, v8}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1402
    :cond_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_4

    .line 1404
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v5

    invoke-virtual {v1, v5, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    .line 1406
    invoke-virtual {v1, v5, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    .line 1407
    invoke-virtual {v1, v5, v7}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    const/4 v6, 0x2

    .line 1408
    invoke-virtual {v1, v6, v5}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1411
    :cond_4
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    :goto_4
    if-ge v0, v3, :cond_5

    .line 1413
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v4

    invoke-virtual {v1, v4, v12}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    .line 1415
    invoke-virtual {v1, v4, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    move-object/from16 v5, v16

    .line 1416
    invoke-virtual {v1, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    const/4 v6, 0x3

    .line 1417
    invoke-virtual {v1, v6, v4}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v16, v5

    goto :goto_4

    .line 1423
    :cond_5
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_6
    :goto_6
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v10

    .line 1421
    :goto_7
    :try_start_3
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Failed to read data from input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 1425
    :goto_8
    :try_start_4
    monitor-exit v2

    return-object v10

    .line 1423
    :goto_9
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1424
    throw v0

    .line 1427
    :cond_7
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    monitor-exit v2

    return-object v0

    .line 1428
    :goto_a
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V
    .locals 2

    .line 1341
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStats;

    .line 1342
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimePackageUsed()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-lez v0, :cond_0

    .line 1343
    iget-object p1, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final checkVersionAndBuildLocked()V
    .locals 10

    .line 355
    const-string v0, "\n"

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 356
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 357
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    const/4 v3, 0x0

    .line 358
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 360
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 362
    iput-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    .line 364
    :cond_0
    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 365
    iput-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v5

    goto :goto_3

    .line 358
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 371
    :catch_0
    :goto_3
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const-string v5, "UsageStatsDatabase"

    if-eq v3, v4, :cond_3

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading from version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 375
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    iput v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    return-void

    .line 385
    :cond_2
    const-string v4, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_3
    :goto_4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 392
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 394
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 395
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 396
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 400
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v9, 0x4

    if-lt v4, v9, :cond_4

    .line 401
    invoke-virtual {p0, v8, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->continueUpgradeLocked(IJ)V

    goto :goto_7

    .line 403
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to upgrade to an unsupported version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_2
    move-exception p0

    goto :goto_6

    :catchall_2
    move-exception p0

    .line 392
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 397
    :goto_6
    const-string v0, "Failed read version upgrade breadcrumb"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 408
    :cond_5
    :goto_7
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-ne v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v3, :cond_7

    .line 409
    :cond_6
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 410
    :try_start_c
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 415
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 423
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 425
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 428
    :cond_8
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 429
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 430
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    :cond_9
    return-void

    :catch_3
    move-exception p0

    goto :goto_9

    :catchall_4
    move-exception p0

    .line 409
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    :try_start_f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 416
    :goto_9
    const-string v0, "Failed to write new version"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 229
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v4, -0x1

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    add-int/lit8 v7, v3, -0x1

    if-ge v5, v7, :cond_1

    .line 235
    invoke-virtual {v1, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    add-int/2addr v4, v6

    if-ne v4, v7, :cond_2

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :cond_2
    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_4

    .line 247
    :try_start_1
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 248
    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {p0, v8, v5, v2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 249
    invoke-interface {p1, v5}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_3

    .line 250
    :try_start_2
    monitor-exit v0

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 254
    const-string p1, "UsageStatsDatabase"

    const-string v1, "Failed to check-in"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    monitor-exit v0

    return v2

    :cond_4
    :goto_2
    if-ge v4, v7, :cond_6

    .line 261
    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    .line 262
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 267
    const-string p1, "UsageStatsDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mark file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as checked-in"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    monitor-exit v0

    return v6

    .line 274
    :cond_5
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v4, p0}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 276
    :cond_6
    monitor-exit v0

    return v6

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final continueUpgradeLocked(IJ)V
    .locals 11

    const/4 v0, 0x3

    .line 522
    const-string v1, "UsageStatsDatabase"

    if-gt p1, v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading UsageStats as XML; current database version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x5

    if-lt p1, p2, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    :cond_1
    const/4 p3, 0x0

    move v2, p3

    .line 534
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 535
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    move v4, p3

    .line 538
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 546
    :try_start_0
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 547
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, p1, v7, p3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    .line 551
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt v6, p2, :cond_2

    .line 553
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v5, v6}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 555
    :cond_2
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v8, v8, v2

    iget-wide v9, v5, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 556
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 555
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 560
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to upgrade backup file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    :cond_4
    iget p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt p1, p2, :cond_5

    .line 569
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 571
    :catch_1
    const-string p0, "Failed to write the tokens mappings file."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public deleteDataFor(Ljava/lang/String;)V
    .locals 3

    .line 1584
    new-instance v0, Ljava/util/HashMap;

    .line 1585
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1584
    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsDatabase;->prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V

    return-void
.end method

.method public final deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;
    .locals 3

    .line 1489
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1490
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1491
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1493
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1494
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, p0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1496
    const-string p1, "UsageStatsDatabase"

    const-string p2, "DeSerializing IntervalStats Failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final doUpgradeLocked(I)V
    .locals 17

    move-object/from16 v1, p0

    .line 441
    const-string v0, "\n"

    const/4 v2, 0x2

    const-string v3, "UsageStatsDatabase"

    const/4 v4, 0x0

    move/from16 v5, p1

    if-ge v5, v2, :cond_2

    .line 444
    const-string v0, "Deleting all usage stats files"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 445
    :goto_0
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 446
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 448
    array-length v3, v2

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 449
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 455
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 456
    new-instance v2, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 458
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 463
    :try_start_0
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 464
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/nio/file/CopyOption;

    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v12, v11, v4

    .line 463
    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move v8, v4

    .line 471
    :goto_2
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 472
    new-instance v9, Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 475
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 480
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_3

    move v12, v4

    .line 482
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_3

    .line 483
    new-instance v13, Ljava/io/File;

    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 493
    :try_start_1
    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    new-array v15, v10, [Ljava/nio/file/CopyOption;

    sget-object v16, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v16, v15, v4

    invoke-static {v14, v13, v15}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to back up file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v11, v12

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 476
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create interval backup directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v2, 0x0

    .line 506
    :try_start_2
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 507
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 509
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 516
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 513
    :goto_4
    :try_start_4
    const-string v1, "Failed to write new version upgrade breadcrumb"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 516
    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 517
    throw v0

    :catch_3
    move-exception v0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to back up version file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 459
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create backup directory "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 10

    .line 1528
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1529
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1530
    const-string v1, "UsageStatsDatabase:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1532
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1533
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1534
    const-string v1, "Database Summary:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 1536
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1537
    aget-object v3, v3, v2

    .line 1538
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1539
    invoke-static {v2}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1540
    const-string v5, " stats files: "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1542
    const-string v5, ", sorted list of files:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    .line 1545
    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    if-eqz p2, :cond_0

    .line 1547
    invoke-static {v6, v7, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1549
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 1550
    invoke-static {v6, v7, v9}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v6

    .line 1549
    invoke-virtual {p1, v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1552
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1554
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1556
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1557
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    .line 1561
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1562
    :try_start_0
    const-string v1, "Obfuscated Packages Mappings:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget v2, v2, Lcom/android/server/usage/PackagesTokenData;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tokens Map Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed Package Tokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    .line 1568
    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1567
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1570
    :goto_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1571
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1572
    const-string v3, ", "

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 1573
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1572
    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1576
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1577
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1578
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public filterStats(Lcom/android/server/usage/IntervalStats;)V
    .locals 8

    .line 776
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 780
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object p0, p0, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    .line 783
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 785
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 786
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    if-eqz v4, :cond_1

    .line 787
    iget-wide v4, v4, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 788
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 789
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :cond_2
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 795
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 796
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 797
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_3

    .line 798
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 801
    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public findBestFitBucket(JJ)I
    .locals 6

    .line 906
    iget-object p3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 909
    :try_start_0
    iget-object p4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    const/4 v0, -0x1

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    if-ltz p4, :cond_1

    .line 910
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v3, v3, p4

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result v3

    .line 911
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v4, v4, p4

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ltz v3, :cond_0

    if-ge v3, v4, :cond_0

    .line 914
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v4, v4, p4

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    move v0, p4

    move-wide v1, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 921
    :cond_1
    monitor-exit p3

    return v0

    .line 922
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceIndexFiles()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 285
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x4

    .line 1269
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 1278
    const-string p0, "UsageStatsDatabase"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to backup UsageStats as XML with version "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-lt p2, v2, :cond_6

    const/4 v3, 0x4

    if-le p2, v3, :cond_1

    goto/16 :goto_6

    .line 1285
    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1286
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1287
    const-string/jumbo v4, "usage_stats"

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 1289
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1293
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v4, v5

    .line 1295
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1297
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v5

    .line 1298
    invoke-virtual {v6, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1297
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 1302
    :cond_2
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v4, v5

    .line 1303
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 1305
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v2

    .line 1306
    invoke-virtual {v6, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1305
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1310
    :cond_3
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v2, v5

    .line 1311
    :goto_2
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 1313
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v4

    .line 1314
    invoke-virtual {v6, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1313
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1318
    :cond_4
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1319
    :goto_3
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v5, v2, :cond_5

    .line 1321
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v2, v2, v1

    .line 1322
    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    .line 1321
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1327
    :goto_4
    :try_start_2
    const-string p1, "UsageStatsDatabase"

    const-string p2, "Failed to write data to output stream"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1331
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    monitor-exit v3

    return-object p0

    .line 1332
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1282
    :cond_6
    :goto_6
    const-string p0, "UsageStatsDatabase"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to backup UsageStats with an unknown version: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getBuildFingerprint()Ljava/lang/String;
    .locals 2

    .line 435
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .locals 4

    .line 749
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_1

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 756
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 760
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object p1, v3, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    .line 761
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V

    const/4 v3, 0x0

    .line 762
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p0

    .line 765
    const-string p1, "UsageStatsDatabase"

    const-string v1, "Failed to read usage stats file"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    monitor-exit v0

    return-object v2

    .line 751
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad interval type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 767
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final indexFilesLocked()V
    .locals 12

    .line 289
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    const/4 v1, 0x0

    move v2, v1

    .line 296
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 297
    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 298
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v4, v3, v2

    goto :goto_1

    .line 300
    :cond_0
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 302
    :goto_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 307
    array-length v4, v3

    move v5, v1

    .line 308
    :goto_2
    const-string v6, "UsageStatsDatabase"

    if-ge v5, v4, :cond_1

    .line 309
    aget-object v7, v3, v5

    .line 310
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 312
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v9, v9, v2

    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    .line 314
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to index file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    sget-object v4, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    if-lez v3, :cond_3

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_2

    .line 322
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    .line 323
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 325
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stat files for interval "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public init(J)V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 176
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 177
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create directory "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_6

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 185
    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 192
    :goto_1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v1, p0

    :goto_2
    if-ge v3, v1, :cond_6

    aget-object v2, p0, v3

    .line 193
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    move-result v4

    if-gez v4, :cond_3

    goto :goto_5

    .line 198
    :cond_3
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_4

    .line 200
    invoke-virtual {v2, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->delete()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v4, v5, :cond_5

    .line 206
    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 209
    :cond_6
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isNewUpdate()Z
    .locals 0

    .line 342
    iget-boolean p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return p0
.end method

.method public final mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1438
    :cond_1
    iget-object p0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1439
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1440
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->clear()V

    .line 1441
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-object p2, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0, p2}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    return-object p1
.end method

.method public obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V
    .locals 4

    .line 1234
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1235
    :try_start_0
    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1236
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1238
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1239
    aget-object v2, p1, v1

    .line 1240
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v2, v3}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1242
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;J)I
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 586
    :catch_0
    :try_start_2
    const-string p0, "UsageStatsDatabase"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to update package mappings on disk after removing token "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    monitor-exit v0

    return p1

    .line 590
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onTimeChanged(J)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 699
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 700
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    const-string v5, "Time changed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-static {v1, v2, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 703
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v6, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v6, :cond_3

    aget-object v11, v5, v8

    .line 709
    invoke-virtual {v11}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    .line 711
    invoke-virtual {v11, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/AtomicFile;

    .line 712
    invoke-virtual {v11, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v15

    add-long/2addr v15, v1

    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-gez v17, :cond_0

    add-int/lit8 v9, v9, 0x1

    .line 715
    invoke-virtual {v14}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 718
    :cond_0
    :try_start_1
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    :catch_0
    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 724
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v0, "-c"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-c"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 728
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    .line 730
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 733
    :cond_2
    invoke-virtual {v11}, Landroid/util/LongSparseArray;->clear()V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 736
    :cond_3
    const-string v0, " files deleted: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    const-string v0, " files moved: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    const-string v0, "UsageStatsDatabase"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 742
    monitor-exit v3

    return-void

    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public prune(J)V
    .locals 5

    .line 929
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 932
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 933
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 934
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 933
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 937
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 938
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 939
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 940
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 939
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 943
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 944
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 945
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 946
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 945
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 949
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 950
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 951
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 952
    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 951
    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 955
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 956
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    sget p2, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 957
    :goto_0
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length p2, p1

    if-ge v2, p2, :cond_0

    .line 958
    aget-object p1, p1, v2

    iget-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {p2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 963
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 964
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .locals 8

    .line 986
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 988
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 991
    :try_start_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v4, 0x0

    :goto_1
    cmp-long v4, v4, p2

    if-gez v4, :cond_2

    .line 998
    :try_start_1
    new-instance v4, Landroid/util/AtomicFile;

    invoke-direct {v4, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 999
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1000
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 1001
    iget-object v5, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_1

    .line 1003
    iget-object v7, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    .line 1004
    iget-object v7, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v7, :cond_0

    .line 1005
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_4

    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1008
    :cond_1
    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1010
    :goto_4
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to delete chooser counts from usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V
    .locals 9

    .line 642
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 646
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 647
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    move v4, v1

    .line 651
    :goto_1
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v4, v5, :cond_3

    .line 653
    :try_start_1
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 654
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 655
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    .line 656
    invoke-virtual {p0, p1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 659
    :cond_2
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 661
    :catch_0
    :try_start_2
    const-string v5, "UsageStatsDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to prune data from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    :cond_4
    monitor-exit v0

    :goto_4
    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z
    .locals 7

    .line 672
    iget-object p0, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ltz p0, :cond_2

    .line 673
    iget-object v2, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 674
    iget-object v3, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 675
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    .line 676
    :cond_0
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move v1, v0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 682
    iget-object p0, p2, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 686
    :cond_3
    iget-object p0, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_1
    if-ltz p0, :cond_6

    .line 687
    iget-object v2, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 688
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 689
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_5

    .line 690
    :cond_4
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p0}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    move v1, v0

    :cond_5
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public pruneUninstalledPackagesData()Z
    .locals 9

    .line 598
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 599
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 600
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    move v4, v1

    .line 604
    :goto_1
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v4, v5, :cond_2

    .line 606
    :try_start_1
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 607
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 608
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 616
    :cond_1
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 618
    :catch_0
    :try_start_2
    const-string p0, "UsageStatsDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prune data from: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x1

    .line 630
    :try_start_4
    monitor-exit v0

    return p0

    .line 627
    :catch_1
    const-string p0, "UsageStatsDatabase"

    const-string v2, "Failed to write package mappings after pruning data."

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit v0

    return v1

    .line 631
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_2

    .line 1251
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 1255
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v1, v1, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    if-nez v1, :cond_1

    .line 1257
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1258
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1259
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object p1, v2, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1262
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 1263
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 1264
    monitor-exit v0

    return-void

    .line 1252
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad interval type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1264
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;
    .locals 7

    if-ltz p1, :cond_6

    .line 833
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge p1, v0, :cond_6

    cmp-long v0, p4, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object p1, v2, p1

    .line 847
    invoke-virtual {p1, p4, p5}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result v2

    if-gez v2, :cond_1

    .line 853
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 856
    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    cmp-long p4, v3, p4

    if-nez p4, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    .line 864
    monitor-exit v0

    return-object v1

    .line 868
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p4

    const/4 p5, 0x0

    if-gez p4, :cond_3

    move p4, p5

    .line 875
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p4, v2, :cond_5

    .line 877
    invoke-virtual {p1, p4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 878
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    :try_start_1
    invoke-virtual {p0, v3, v4, p7}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 886
    iget-wide v5, v4, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v3, p2, v5

    if-gez v3, :cond_4

    .line 887
    invoke-interface {p6, v4, p5, v1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    goto :goto_1

    :catch_0
    move-exception v3

    .line 891
    :try_start_2
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to read usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 896
    :cond_5
    :goto_1
    monitor-exit v0

    return-object v1

    .line 897
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 834
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad interval type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;
    .locals 4

    .line 1589
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1590
    :try_start_0
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 1592
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object p1, v3, p1

    invoke-virtual {p1, p2, p3, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1593
    :try_start_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1595
    :catch_0
    monitor-exit v0

    return-object v2

    .line 1597
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    .locals 2

    .line 1104
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading UsageStats as XML; current database version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, p0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    return-void
.end method

.method public readMappingsLocked()V
    .locals 10

    .line 1191
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1195
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v0, v1}, Lcom/android/server/usage/UsageStatsProtoV2;->readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1197
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 1204
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1206
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1207
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1208
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 1209
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1211
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v7, :cond_2

    .line 1213
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1215
    :cond_2
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    .line 1195
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1198
    const-string v0, "UsageStatsDatabase"

    const-string v1, "Failed to read the obfuscated packages mapping file."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B
    .locals 4

    .line 1476
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1477
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1479
    :try_start_0
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1480
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, p1, p2, p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1482
    const-string p1, "UsageStatsDatabase"

    const-string p2, "Serializing IntervalStats Failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1483
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1485
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public wasUpgradePerformed()Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    return p0
.end method

.method public final writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    .locals 2

    .line 1447
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    const/4 v1, 0x0

    .line 1449
    :try_start_0
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    .line 1456
    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B

    move-result-object p0

    .line 1457
    array-length p2, p0

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1458
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->write([B)V

    return-void

    :catch_0
    move-exception p0

    .line 1451
    const-string p2, "UsageStatsDatabase"

    const-string p3, "Failed to read usage stats file"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1452
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 2

    .line 1043
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1044
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to write UsageStats as XML with version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsDatabase"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1047
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    return-void
.end method

.method public writeMappingsLocked()V
    .locals 4

    .line 1220
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1221
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1223
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V

    .line 1224
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 1229
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1227
    :try_start_1
    const-string v2, "UsageStatsDatabase"

    const-string v3, "Unable to write obfuscated data to proto."

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1230
    throw p0
.end method
