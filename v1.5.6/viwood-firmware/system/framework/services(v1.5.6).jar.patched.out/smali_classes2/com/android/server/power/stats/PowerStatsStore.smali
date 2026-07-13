.class public Lcom/android/server/power/stats/PowerStatsStore;
.super Ljava/lang/Object;
.source "PowerStatsStore.java"


# instance fields
.field public final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mHandler:Landroid/os/Handler;

.field public mJvmLock:Ljava/nio/channels/FileLock;

.field public final mLockFile:Ljava/io/File;

.field public final mMaxStorageBytes:J

.field public final mSectionReaders:Ljava/util/Map;

.field public final mStoreDir:Ljava/io/File;

.field public final mSystemDir:Ljava/io/File;

.field public volatile mTableOfContents:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$55fOWVXVllJ2LR3V-23W75q3gH0(Lcom/android/server/power/stats/PowerStatsStore;JLandroid/os/BatteryUsageStats;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsStore;->lambda$storeBatteryUsageStatsAsync$2(JLandroid/os/BatteryUsageStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B2PF4qXDAYWwxqhYeVyGoe0li4E(Lcom/android/server/power/stats/PowerStatsStore;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->maybeClearLegacyStore()V

    return-void
.end method

.method public static synthetic $r8$lambda$dH-UczunvrzRifb4k-bj8u6NTCU(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/io/FileOutputStream;)V
    .locals 1

    .line 165
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/PowerStatsSpan;->writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 168
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$lZFwWJVHGsl5p44v-hX6-z05sXQ(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsStore;->lambda$storePowerStatsSpanAsync$0(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLandroid/os/Handler;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSystemDir:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "power-stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    .line 82
    new-instance p1, Ljava/io/File;

    const-string v1, ".lock"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    .line 83
    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    .line 84
    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mMaxStorageBytes:J

    .line 85
    new-instance p1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsStore;)V

    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 2

    const-wide/32 v0, 0x19000

    .line 75
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/power/stats/PowerStatsStore;-><init>(Ljava/io/File;JLandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 345
    const-string v0, "Power stats store"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 347
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 349
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 351
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 349
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    :goto_2
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpTableOfContents(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 332
    const-string v0, "Power stats store TOC"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object p0

    .line 335
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 336
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getTableOfContents()Ljava/util/List;
    .locals 11

    .line 100
    const-string v0, "PowerStatsStore"

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    if-eqz v1, :cond_0

    return-object v1

    .line 105
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 108
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 110
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 111
    const-string v8, ".pss"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_1

    goto :goto_4

    .line 114
    :cond_1
    :try_start_1
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :try_start_2
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 116
    invoke-static {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 118
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_2

    .line 120
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing incompatible PowerStatsSpan file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 114
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    :catch_0
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read PowerStatsSpan file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    :cond_3
    sget-object v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 128
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 130
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-object v2

    :goto_5
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 131
    throw v0
.end method

.method public final synthetic lambda$storeBatteryUsageStatsAsync$2(JLandroid/os/BatteryUsageStats;)V
    .locals 0

    .line 212
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsStore;->storeBatteryUsageStats(JLandroid/os/BatteryUsageStats;)V

    return-void
.end method

.method public final synthetic lambda$storePowerStatsSpanAsync$0(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V
    .locals 0

    .line 142
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 145
    throw p0
.end method

.method public varargs loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 3

    .line 184
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 187
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsStore;->makePowerStatsSpanFilename(J)Ljava/io/File;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-object v1

    .line 191
    :cond_0
    :try_start_1
    new-instance p2, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    invoke-static {p2, v0, v2, p3}, Lcom/android/server/power/stats/PowerStatsSpan;->read(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p3

    .line 191
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    :goto_1
    :try_start_6
    const-string p3, "PowerStatsStore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read PowerStatsSpan file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 197
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 198
    throw p1
.end method

.method public final lockStoreDirectory()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 257
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 261
    const-string v0, "PowerStatsStore"

    const-string v1, "Cannot lock snapshot directory"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final makePowerStatsSpanFilename(J)Ljava/io/File;
    .locals 3

    .line 239
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%019d"

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pss"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final maybeClearLegacyStore()V
    .locals 2

    .line 244
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSystemDir:Ljava/io/File;

    const-string v1, "battery-usage-stats"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 246
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public final removeOldSpansLocked()V
    .locals 11

    .line 283
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    .line 285
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 287
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".pss"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 288
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 292
    :cond_1
    :goto_1
    iget-wide v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mMaxStorageBytes:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    .line 293
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 298
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete power stats span "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PowerStatsStore"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 303
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 304
    iput-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 7

    .line 312
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 315
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    const-string v4, "PowerStatsStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete power stats span "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 324
    throw v0
.end method

.method public final storeBatteryUsageStats(JLandroid/os/BatteryUsageStats;)V
    .locals 10

    .line 220
    const-string v1, "Cannot close BatteryUsageStats"

    const-string v2, "PowerStatsStore"

    :try_start_0
    new-instance v3, Lcom/android/server/power/stats/PowerStatsSpan;

    invoke-direct {v3, p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    .line 221
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v6

    .line 222
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v8

    move-wide v4, p1

    .line 221
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/stats/PowerStatsSpan;->addTimeFrame(JJJ)V

    .line 223
    new-instance p1, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats;)V

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    .line 224
    invoke-virtual {p0, v3}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 229
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 227
    :try_start_2
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 229
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :goto_0
    throw p0
.end method

.method public storeBatteryUsageStatsAsync(JLandroid/os/BatteryUsageStats;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsStore;->storeBatteryUsageStats(JLandroid/os/BatteryUsageStats;)V

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/PowerStatsStore;JLandroid/os/BatteryUsageStats;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string p1, "PowerStatsStore"

    const-string v0, "Could not create a directory for power stats store"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 162
    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual {p1}, Lcom/android/server/power/stats/PowerStatsSpan;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/PowerStatsStore;->makePowerStatsSpanFilename(J)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 163
    new-instance v1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsSpan;)V

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    .line 172
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->removeOldSpansLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    .line 175
    throw p1
.end method

.method public storePowerStatsSpanAsync(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unlockStoreDirectory()V
    .locals 4

    const/4 v0, 0x0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 269
    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    .line 274
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 271
    :try_start_1
    const-string v2, "PowerStatsStore"

    const-string v3, "Cannot unlock snapshot directory"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    .line 274
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 273
    :goto_0
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    .line 274
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 275
    throw v1
.end method
