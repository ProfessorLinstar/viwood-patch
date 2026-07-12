.class public Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;
.super Ljava/lang/Object;
.source "PackageConfigPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

.field public final synthetic this$0:Lcom/android/server/wm/PackageConfigPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->this$0:Lcom/android/server/wm/PackageConfigPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    return-void
.end method


# virtual methods
.method public process()V
    .locals 6

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->this$0:Lcom/android/server/wm/PackageConfigPersister;

    invoke-static {v0}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$fgetmLock(Lcom/android/server/wm/PackageConfigPersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->saveToXml()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-object v2, v1

    .line 450
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->this$0:Lcom/android/server/wm/PackageConfigPersister;

    invoke-static {v3}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$fgetmPendingWrite(Lcom/android/server/wm/PackageConfigPersister;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    invoke-static {v3, v4, v5}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$mremoveRecord(Lcom/android/server/wm/PackageConfigPersister;Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 451
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 457
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-static {v0}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$smgetUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 459
    invoke-static {}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure creating tasks directory for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v3, v1

    goto :goto_1

    .line 463
    :cond_0
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_config.xml"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 465
    :try_start_3
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 466
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 467
    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_1
    if-eqz v1, :cond_1

    .line 470
    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 472
    :cond_1
    invoke-static {}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for persisting. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    .line 451
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final saveToXml()[B
    .locals 6

    .line 478
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 479
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 481
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 485
    const-string v2, "config"

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v4, v4, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    const-string v5, "package_name"

    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v4, v4, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 488
    const-string v5, "night_mode"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz p0, :cond_1

    .line 491
    const-string v4, "locale_list"

    .line 492
    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-interface {v1, v3, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    :cond_1
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 496
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 498
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
