.class public Lcom/android/server/wm/PackageConfigPersister;
.super Ljava/lang/Object;
.source "PackageConfigPersister.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageConfigPersister"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mModified:Landroid/util/SparseArray;

.field public final mPendingWrite:Landroid/util/SparseArray;

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public static synthetic $r8$lambda$iSRBi5n3VpljuRAISUCymNqheUQ(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;)Z
    .locals 2

    .line 299
    iget-object p1, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    iget p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$kBFoPe6pCdq8Zbpn9XNnCpYp-os(Lcom/android/server/wm/PackageConfigPersister;Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->lambda$removeUser$0(Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/PackageConfigPersister;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingWrite(Lcom/android/server/wm/PackageConfigPersister;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveRecord(Lcom/android/server/wm/PackageConfigPersister;Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetUserConfigsDir(I)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 80
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 81
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static getUserConfigsDir(I)Ljava/io/File;
    .locals 2

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "package_configs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;I)V
    .locals 3

    .line 337
    const-string v0, "INSTALLED PACKAGES HAVING APP-SPECIFIC CONFIGURATIONS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current user ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 344
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    PackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        NightMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        Locales : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 350
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public findPackageConfiguration(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p0

    if-nez p0, :cond_0

    .line 321
    sget-object p0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App-specific configuration not found for packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and userId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 323
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 325
    :cond_0
    new-instance p1, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    iget-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    invoke-direct {p1, p2, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;-><init>(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)V

    monitor-exit v0

    return-object p1

    .line 329
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 0

    .line 396
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 400
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    return-object p0
.end method

.method public final findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 0

    .line 380
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    .line 382
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 383
    invoke-virtual {p1, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    if-eqz p1, :cond_1

    return-object p1

    .line 389
    :cond_1
    new-instance p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    invoke-direct {p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;-><init>(Ljava/lang/String;I)V

    .line 390
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final synthetic lambda$removeUser$0(Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0

    .line 272
    iget-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    return-void
.end method

.method public loadUserPackages(I)V
    .locals 16

    move-object/from16 v1, p0

    .line 86
    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    .line 90
    sget-object v1, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPackages: empty list files from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_0
    const/4 v5, 0x0

    .line 94
    :goto_0
    array-length v0, v3

    if-ge v5, v0, :cond_c

    .line 95
    aget-object v0, v3, v5

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_config.xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    move/from16 v4, p1

    goto/16 :goto_d

    .line 104
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    .line 110
    :goto_1
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_a

    const/4 v12, 0x3

    if-eq v10, v12, :cond_a

    .line 112
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    if-ne v10, v13, :cond_9

    .line 117
    const-string v10, "config"

    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 118
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v10

    sub-int/2addr v10, v11

    :goto_2
    if-ltz v10, :cond_9

    .line 120
    invoke-interface {v0, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    .line 121
    invoke-interface {v0, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 122
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v15

    const v4, -0x6fe3451c

    if-eq v15, v4, :cond_4

    const v4, -0x23dea296

    if-eq v15, v4, :cond_3

    const v4, 0x72044363

    if-eq v15, v4, :cond_2

    goto :goto_4

    :cond_2
    const-string v4, "locale_list"

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v13

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v4, p1

    :goto_3
    move-object v7, v0

    goto :goto_8

    :cond_3
    const-string v4, "night_mode"

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v11

    goto :goto_5

    :cond_4
    const-string v4, "package_name"

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, -0x1

    :goto_5
    if-eqz v4, :cond_8

    if-eq v4, v11, :cond_7

    if-eq v4, v13, :cond_6

    goto :goto_6

    .line 130
    :cond_6
    invoke-static {v14}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    move-object v9, v4

    goto :goto_6

    .line 127
    :cond_7
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v8, v4

    goto :goto_6

    :cond_8
    move-object v7, v14

    :goto_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 136
    :cond_9
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_a
    if-eqz v7, :cond_b

    .line 139
    iget-object v0, v1, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v4, p1

    .line 140
    :try_start_3
    invoke-virtual {v1, v0, v7, v4}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    .line 141
    iput-object v8, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 142
    iput-object v9, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_b
    move/from16 v4, p1

    .line 147
    :goto_7
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_c

    .line 104
    :goto_8
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v7
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    move-exception v0

    move/from16 v4, p1

    goto :goto_a

    :catch_4
    move-exception v0

    move/from16 v4, p1

    goto :goto_b

    :catch_5
    move-exception v0

    move/from16 v4, p1

    goto :goto_c

    .line 152
    :goto_a
    :try_start_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_d

    .line 150
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 148
    :goto_c
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 155
    :cond_c
    monitor-exit v2

    return-void

    :goto_e
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageUninstall(Ljava/lang/String;I)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 281
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removePackage(Ljava/lang/String;I)V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    const-class v0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 307
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_1
    return-void
.end method

.method public final removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0

    .line 405
    iget p0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 407
    iget-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeUser(I)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 265
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 267
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 270
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 271
    new-instance v1, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackageConfigPersister;)V

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 274
    monitor-exit v0

    return-void

    .line 268
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 274
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p3, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 168
    iget-object p3, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 169
    invoke-static {v1, p0}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object p0

    iget-object p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 168
    invoke-virtual {p1, p3, p0, p2}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 173
    invoke-virtual {p1, p0, p0, p0}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    .line 175
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z
    .locals 8

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    move v4, v3

    .line 194
    :goto_0
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getNightMode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/android/server/wm/PackageConfigPersister;->updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v5

    .line 195
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/PackageConfigPersister;->updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v6

    .line 196
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getGrammaticalGender()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3, v1}, Lcom/android/server/wm/PackageConfigPersister;->updateGender(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result p3

    .line 198
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->isResetNightMode()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz v7, :cond_2

    .line 199
    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    if-eqz v7, :cond_7

    .line 201
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-nez p3, :cond_4

    .line 209
    monitor-exit v0

    return v3

    .line 211
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 212
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p1

    if-nez p1, :cond_5

    .line 215
    iget-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p1

    .line 221
    :cond_5
    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 222
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    .line 223
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->updateGender(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 224
    monitor-exit v0

    return v3

    .line 230
    :cond_6
    iget-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance p3, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;-><init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    invoke-virtual {p2, p3, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 231
    monitor-exit v0

    return v2

    .line 203
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 207
    monitor-exit v0

    return v4

    .line 233
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateGender(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 254
    iget-object p0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iput-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 245
    iget-object p0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, p0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    iput-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 237
    iget-object p0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iput-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
