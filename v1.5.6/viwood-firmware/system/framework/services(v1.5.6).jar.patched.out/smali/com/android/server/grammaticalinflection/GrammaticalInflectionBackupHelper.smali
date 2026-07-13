.class public Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;
.super Ljava/lang/Object;
.source "GrammaticalInflectionBackupHelper.java"


# static fields
.field public static final STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

.field public static final TAG:Ljava/lang/String; = "GrammaticalInflectionBackupHelper"


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mCache:Landroid/util/SparseArray;

.field public final mCacheLock:Ljava/lang/Object;

.field public final mClock:Ljava/time/Clock;

.field public final mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    .line 45
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/AttributionSource;Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCacheLock:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mAttributionSource:Landroid/content/AttributionSource;

    .line 67
    iput-object p2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 68
    iput-object p3, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mClock:Ljava/time/Clock;

    return-void
.end method

.method public static convertByteArrayToInt([B)I
    .locals 0

    .line 187
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static convertToByteArray(Ljava/util/HashMap;)[B
    .locals 2

    .line 170
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 170
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 175
    sget-object v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->TAG:Ljava/lang/String;

    const-string v1, "cannot convert payload to byte array."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static intToByteArray(I)[B
    .locals 1

    const/4 v0, 0x4

    .line 181
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static notifyBackupManager()V
    .locals 1

    .line 166
    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static readFromByteArray([B)Ljava/util/HashMap;
    .locals 3

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 196
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 194
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception p0

    .line 198
    :goto_3
    sget-object v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->TAG:Ljava/lang/String;

    const-string v2, "cannot convert payload to HashMap."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public applyRestoredSystemPayload([BI)V
    .locals 0

    .line 134
    invoke-static {p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->convertByteArrayToInt([B)I

    move-result p1

    .line 135
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setSystemWideGrammaticalGender(II)V

    return-void
.end method

.method public final cleanStagedDataForOldEntries()V
    .locals 7

    const/4 v0, 0x0

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 207
    iget-object v2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;

    .line 208
    iget-wide v1, v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;->mCreationTimeMillis:J

    iget-object v3, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mClock:Ljava/time/Clock;

    .line 209
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sget-object v5, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    invoke-virtual {v5}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    move v0, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBackupPayload(I)[B
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->cleanStagedDataForOldEntries()V

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x0

    .line 79
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 78
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 80
    iget-object v3, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getApplicationGrammaticalGender(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 88
    invoke-static {v0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->convertToByteArray(Ljava/util/HashMap;)[B

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getSystemBackupPayload(I)[B
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getSystemGrammaticalGender(I)I

    move-result p0

    .line 127
    invoke-static {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->intToByteArray(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final hasSetBeforeRestoring(Ljava/lang/String;I)Z
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getApplicationGrammaticalGender(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageInstalledForUser(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 218
    :try_start_0
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public stageAndApplyRestoredPayload([BI)V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->cleanStagedDataForOldEntries()V

    .line 98
    invoke-static {p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->readFromByteArray([B)Ljava/util/HashMap;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 103
    :cond_0
    new-instance v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;

    iget-object v2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;-><init>(J)V

    .line 104
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->isPackageInstalledForUser(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->hasSetBeforeRestoring(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 108
    invoke-virtual {v3, v4, p2, v2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_3
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 119
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
