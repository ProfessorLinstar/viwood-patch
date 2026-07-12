.class public final Lcom/android/server/companion/association/AssociationDiskStore;
.super Ljava/lang/Object;
.source "AssociationDiskStore.java"


# instance fields
.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static synthetic $r8$lambda$0QKtIp2TLTUbzaZrI1CW9x255a4(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 0

    .line 389
    const-string p1, "companion_device_manager.xml"

    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TnrFtwENJfNpOrWI1q61kXcsqzI(Lcom/android/server/companion/association/Associations;Ljava/io/FileOutputStream;)V
    .locals 4

    .line 367
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    .line 368
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 369
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 370
    const-string/jumbo v0, "state"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    const-string/jumbo v3, "persistence-version"

    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 373
    invoke-static {p1, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/association/Associations;)V

    .line 374
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static synthetic $r8$lambda$pfoZln9Xdz-m2W4C7yoN47XzFzE(Ljava/lang/String;Landroid/companion/AssociationInfo;Ljava/io/FileOutputStream;)V
    .locals 2

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v0, 0x20

    .line 316
    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 318
    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 319
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static byteArrayToIcon([B)Landroid/graphics/drawable/Icon;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 618
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 619
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseLegacyStorageFileForUser(I)Ljava/io/File;
    .locals 2

    .line 417
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "companion_device_manager_associations.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static iconToByteArray(Landroid/graphics/drawable/Icon;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 609
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->writeToStream(Ljava/io/OutputStream;)V

    .line 610
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readAssociationV0(Lcom/android/modules/utils/TypedXmlPullParser;II)Landroid/companion/AssociationInfo;
    .locals 21

    move-object/from16 v0, p0

    .line 451
    const-string v1, "association"

    invoke-static {v0, v1}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v1, "package"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 454
    const-string v1, "device"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    const-string/jumbo v2, "profile"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 456
    const-string/jumbo v2, "notify_device_nearby"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    .line 457
    const-string/jumbo v2, "time_approved"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 459
    new-instance v2, Landroid/companion/AssociationInfo;

    .line 460
    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v16, 0x7fffffffffffffffL

    const/16 v18, 0x0

    move/from16 v4, p1

    move/from16 v3, p2

    invoke-direct/range {v2 .. v20}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    return-object v2
.end method

.method public static readAssociationV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/companion/AssociationInfo;
    .locals 21

    move-object/from16 v0, p0

    .line 496
    const-string v1, "association"

    invoke-static {v0, v1}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 498
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 499
    const-string/jumbo v1, "profile"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 500
    const-string/jumbo v1, "package"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 501
    const-string/jumbo v1, "mac_address"

    .line 502
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-static {v1}, Lcom/android/server/companion/association/AssociationDiskStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    .line 503
    const-string v1, "display_name"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 504
    const-string/jumbo v1, "self_managed"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    .line 505
    const-string/jumbo v1, "notify_device_nearby"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    .line 506
    const-string/jumbo v1, "revoked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    .line 507
    const-string/jumbo v1, "pending"

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v13

    .line 508
    const-string/jumbo v1, "time_approved"

    const-wide/16 v14, 0x0

    invoke-static {v0, v1, v14, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 509
    const-string/jumbo v1, "last_time_connected"

    move v4, v3

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 511
    const-string/jumbo v1, "system_data_sync_flags"

    const/4 v9, 0x0

    invoke-static {v0, v1, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v18

    .line 513
    const-string v1, "device_icon"

    .line 514
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v1

    .line 513
    invoke-static {v1}, Lcom/android/server/companion/association/AssociationDiskStore;->byteArrayToIcon([B)Landroid/graphics/drawable/Icon;

    move-result-object v19

    .line 515
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 516
    invoke-static {v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readDeviceId(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/companion/DeviceId;

    move-result-object v20

    .line 518
    new-instance v2, Landroid/companion/AssociationInfo;

    const/4 v9, 0x0

    move v3, v4

    move/from16 v4, p1

    invoke-direct/range {v2 .. v20}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    return-object v2
.end method

.method public static readAssociationsFromFile(ILandroid/util/AtomicFile;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .locals 0

    .line 326
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 328
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 326
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 329
    const-string p1, "CDM_AssociationDiskStore"

    const-string p2, "Error while reading associations file"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    new-instance p0, Lcom/android/server/companion/association/Associations;

    invoke-direct {p0}, Lcom/android/server/companion/association/Associations;-><init>()V

    return-object p0
.end method

.method public static readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .locals 3

    .line 338
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    .line 339
    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v0, "persistence-version"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 342
    new-instance v1, Lcom/android/server/companion/association/Associations;

    invoke-direct {v1}, Lcom/android/server/companion/association/Associations;-><init>()V

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 350
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 351
    const-string v0, "associations"

    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-static {p1, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;

    move-result-object v1

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 346
    :cond_2
    invoke-static {p1, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsV0(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;

    move-result-object p0

    return-object p0
.end method

.method public static readAssociationsFromPayload([BI)Lcom/android/server/companion/association/Associations;
    .locals 1

    .line 408
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :try_start_1
    const-string/jumbo p0, "state"

    invoke-static {p1, v0, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 408
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 411
    const-string p1, "CDM_AssociationDiskStore"

    const-string v0, "Error while reading associations file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    new-instance p0, Lcom/android/server/companion/association/Associations;

    invoke-direct {p0}, Lcom/android/server/companion/association/Associations;-><init>()V

    return-object p0
.end method

.method public static readAssociationsV0(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;
    .locals 4

    .line 423
    const-string v0, "associations"

    invoke-static {p0, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 431
    invoke-static {p1}, Lcom/android/server/companion/utils/AssociationUtils;->getFirstAssociationIdForUser(I)I

    move-result v1

    .line 432
    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    const/4 v3, 0x0

    .line 433
    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->setVersion(I)V

    .line 436
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 437
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 443
    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/Associations;->setMaxId(I)V

    return-object v2

    .line 438
    :cond_0
    const-string v3, "association"

    invoke-static {p0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 440
    invoke-static {p0, p1, v1}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationV0(Lcom/android/modules/utils/TypedXmlPullParser;II)Landroid/companion/AssociationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/Associations;->addAssociation(Landroid/companion/AssociationInfo;)V

    move v1, v3

    goto :goto_0
.end method

.method public static readAssociationsV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;
    .locals 4

    .line 469
    const-string v0, "associations"

    invoke-static {p0, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 473
    const-string/jumbo v1, "max-id"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 474
    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    const/4 v3, 0x1

    .line 475
    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->setVersion(I)V

    .line 478
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 479
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/Associations;->setMaxId(I)V

    return-object v2

    .line 480
    :cond_0
    const-string v3, "association"

    invoke-static {p0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 482
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/companion/AssociationInfo;

    move-result-object v3

    .line 483
    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 485
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public static readDeviceId(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/companion/DeviceId;
    .locals 2

    .line 525
    const-string v0, "device_id"

    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "custom_device_id"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    const-string/jumbo v1, "mac_address_device_id"

    .line 529
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 528
    invoke-static {p0}, Lcom/android/server/companion/association/AssociationDiskStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    .line 531
    new-instance v1, Landroid/companion/DeviceId;

    invoke-direct {v1, v0, p0}, Landroid/companion/DeviceId;-><init>(Ljava/lang/String;Landroid/net/MacAddress;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 2

    .line 593
    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 594
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should be at the start of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" tag"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;
    .locals 0

    if-eqz p0, :cond_0

    .line 599
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .locals 5

    const/4 v0, 0x0

    .line 550
    const-string v1, "association"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 552
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    const-string v3, "id"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 553
    const-string/jumbo v2, "profile"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 554
    const-string/jumbo v2, "package"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 555
    const-string/jumbo v2, "mac_address"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 556
    const-string v2, "display_name"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 557
    const-string/jumbo v2, "self_managed"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 558
    const-string/jumbo v2, "notify_device_nearby"

    .line 559
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    .line 558
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 560
    const-string/jumbo v2, "revoked"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 561
    const-string/jumbo v2, "pending"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isPending()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 562
    const-string/jumbo v2, "time_approved"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v3

    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 563
    const-string/jumbo v2, "last_time_connected"

    .line 564
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    move-result-wide v3

    .line 563
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 565
    const-string/jumbo v2, "system_data_sync_flags"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 567
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/companion/association/AssociationDiskStore;->iconToByteArray(Landroid/graphics/drawable/Icon;)[B

    move-result-object v2

    .line 566
    const-string v3, "device_icon"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 569
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->writeDeviceId(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    .line 570
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/association/Associations;)V
    .locals 4

    const/4 v0, 0x0

    .line 540
    const-string v1, "associations"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 541
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getMaxId()I

    move-result v2

    const-string/jumbo v3, "max-id"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 542
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getAssociations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 543
    invoke-static {p0, v2}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    goto :goto_0

    .line 545
    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeDeviceId(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .locals 4

    .line 575
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 576
    const-string v1, "device_id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 580
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/companion/DeviceId;->getCustomId()Ljava/lang/String;

    move-result-object v2

    .line 577
    const-string v3, "custom_device_id"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/DeviceId;->getMacAddressAsString()Ljava/lang/String;

    move-result-object p1

    .line 582
    const-string/jumbo v2, "mac_address_device_id"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 587
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackupPayload(I)[B
    .locals 3

    .line 396
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching stored state data for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p0

    .line 399
    monitor-enter p0

    .line 400
    :try_start_0
    invoke-static {p0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 401
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 2

    .line 388
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public final readAssociationsByUser(I)Lcom/android/server/companion/association/Associations;
    .locals 4

    .line 219
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from disk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 225
    monitor-enter v0

    .line 229
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    invoke-static {p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getBaseLegacyStorageFileForUser(I)Ljava/io/File;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    new-instance p0, Lcom/android/server/companion/association/Associations;

    invoke-direct {p0}, Lcom/android/server/companion/association/Associations;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 235
    :cond_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 236
    const-string v3, "associations"

    goto :goto_0

    .line 239
    :cond_1
    const-string/jumbo v3, "state"

    const/4 v1, 0x0

    move-object v2, v0

    .line 242
    :goto_0
    invoke-static {p1, v2, v3}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromFile(ILandroid/util/AtomicFile;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object p1

    if-nez v1, :cond_2

    .line 244
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 247
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V

    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 254
    :cond_3
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;
    .locals 3

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 204
    invoke-virtual {p0, v2}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsByUser(I)Lcom/android/server/companion/association/Associations;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readLastRemovedAssociation(I)Ljava/lang/String;
    .locals 7

    .line 277
    const-string p0, " for user="

    const-string v0, "CDM_AssociationDiskStore"

    const-string/jumbo v1, "last_removed_association.txt"

    invoke-static {p1, v1}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 281
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    int-to-char v5, v5

    .line 283
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 285
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :goto_1
    if-eqz v4, :cond_1

    .line 281
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 291
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 288
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public writeAssociationsForUser(ILcom/android/server/companion/association/Associations;)V
    .locals 3

    .line 263
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p1

    .line 268
    monitor-enter p1

    .line 269
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V

    .line 270
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V
    .locals 0

    .line 366
    new-instance p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/Associations;)V

    invoke-static {p1, p0}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public writeLastRemovedAssociation(Landroid/companion/AssociationInfo;Ljava/lang/String;)V
    .locals 1

    .line 300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Writing last removed association="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to disk..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CDM_AssociationDiskStore"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance p0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, v0}, Landroid/companion/AssociationInfo$Builder;->setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p0

    .line 307
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 308
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/companion/AssociationInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    const-string/jumbo v0, "last_removed_association.txt"

    .line 312
    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p1

    .line 314
    new-instance v0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p0}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/companion/AssociationInfo;)V

    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method
