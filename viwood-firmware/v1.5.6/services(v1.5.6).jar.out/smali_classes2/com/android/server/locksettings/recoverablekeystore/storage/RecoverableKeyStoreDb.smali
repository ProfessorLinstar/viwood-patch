.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreDb.java"


# instance fields
.field public final mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

.field public final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method public static synthetic $r8$lambda$Zxt3v_KZ6WLOaobIXxBu-lEyoOU(Ljava/util/StringJoiner;I)V
    .locals 0

    .line 672
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 83
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    return-void
.end method

.method public static decodeCertPath([B)Ljava/security/cert/CertPath;
    .locals 2

    .line 1410
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "PkiPath"

    invoke-virtual {v0, v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1413
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static decodeX509Key([B)Ljava/security/PublicKey;
    .locals 1

    .line 1397
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1399
    :try_start_0
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1402
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .locals 3

    .line 75
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 76
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const-wide/16 v1, 0x1e

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    .line 78
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V

    return-object p0
.end method


# virtual methods
.method public final ensureRecoveryServiceMetadataEntryExists(II)V
    .locals 2

    .line 1354
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1355
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1357
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    const/4 p2, 0x4

    .line 1358
    const-string/jumbo v1, "recovery_service_metadata"

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method public final ensureRootOfTrustEntryExists(IILjava/lang/String;)V
    .locals 2

    .line 1367
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1368
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1370
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    const-string/jumbo p1, "root_alias"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x4

    .line 1372
    const-string/jumbo p3, "root_of_trust"

    invoke-virtual {p0, p3, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method public final ensureUserMetadataEntryExists(I)V
    .locals 3

    .line 1381
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1382
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    const/4 v1, 0x4

    .line 1384
    const-string/jumbo v2, "user_metadata"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method public getActiveRootOfTrust(II)Ljava/lang/String;
    .locals 9

    .line 781
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 783
    const-string p0, "_id"

    const-string/jumbo v1, "user_id"

    const-string/jumbo v2, "uid"

    const-string v8, "active_root_of_trust"

    filled-new-array {p0, v1, v2, v8}, [Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 794
    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ? AND uid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 803
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 825
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 808
    :try_start_1
    const-string v2, "RecoverableKeyStoreDb"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    .line 811
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 809
    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 808
    invoke-static {v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 814
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 815
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 817
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 825
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 820
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_3

    .line 825
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_0
    if-eqz p0, :cond_4

    .line 793
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
.end method

.method public getAllKeys(III)Ljava/util/Map;
    .locals 8

    .line 267
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 268
    const-string/jumbo v5, "recovery_status"

    const-string v6, "key_metadata"

    const-string v1, "_id"

    const-string/jumbo v2, "nonce"

    const-string/jumbo v3, "wrapped_key"

    const-string v4, "alias"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 286
    const-string v1, "keys"

    const-string/jumbo v3, "user_id = ? AND uid = ? AND platform_key_generation_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 295
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 296
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 297
    const-string/jumbo p2, "nonce"

    .line 298
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 297
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 299
    const-string/jumbo p2, "wrapped_key"

    .line 300
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 299
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 301
    const-string p2, "alias"

    .line 302
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 301
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 303
    const-string/jumbo v0, "recovery_status"

    .line 304
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 303
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 308
    const-string v0, "key_metadata"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 309
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    move-object v3, v0

    goto :goto_2

    .line 312
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_1

    .line 315
    :goto_2
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p3, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 319
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_3
    if-eqz p0, :cond_2

    .line 285
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
.end method

.method public getBadRemoteGuessCounter(I)I
    .locals 8

    .line 415
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 416
    const-string p0, "bad_remote_guess_counter"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 424
    const-string/jumbo v1, "user_metadata"

    const-string/jumbo v3, "user_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 433
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 440
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    return p0

    .line 436
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 438
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 437
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz p1, :cond_1

    .line 423
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public final getBytes(IILjava/lang/String;)[B
    .locals 8

    .line 1050
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1052
    const-string/jumbo p0, "user_id"

    const-string/jumbo v1, "uid"

    const-string v2, "_id"

    filled-new-array {v2, p0, v1, p3}, [Ljava/lang/String;

    move-result-object v2

    .line 1060
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1063
    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ? AND uid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1072
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1090
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1077
    :try_start_1
    const-string p3, "RecoverableKeyStoreDb"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    .line 1080
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1078
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1077
    invoke-static {p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 1083
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1084
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1085
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 1090
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 1088
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1090
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_0
    if-eqz p0, :cond_3

    .line 1062
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method public final getBytes(IILjava/lang/String;Ljava/lang/String;)[B
    .locals 8

    .line 1130
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1131
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1133
    const-string/jumbo p0, "uid"

    const-string/jumbo v1, "root_alias"

    const-string v2, "_id"

    const-string/jumbo v3, "user_id"

    filled-new-array {v2, v3, p0, v1, p4}, [Ljava/lang/String;

    move-result-object v2

    .line 1143
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1, p3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1146
    const-string/jumbo v1, "root_of_trust"

    const-string/jumbo v3, "user_id = ? AND uid = ? AND root_alias = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1155
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1173
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-le p3, v1, :cond_1

    .line 1160
    :try_start_1
    const-string p4, "RecoverableKeyStoreDb"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    .line 1163
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1161
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1160
    invoke-static {p4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1173
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 1166
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1167
    invoke-interface {p0, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1168
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 1173
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 1171
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1173
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_0
    if-eqz p0, :cond_3

    .line 1145
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method public getCounterId(II)Ljava/lang/Long;
    .locals 1

    .line 854
    const-string v0, "counter_id"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final getLong(IILjava/lang/String;)Ljava/lang/Long;
    .locals 8

    .line 970
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 972
    const-string/jumbo p0, "user_id"

    const-string/jumbo v1, "uid"

    const-string v2, "_id"

    filled-new-array {v2, p0, v1, p3}, [Ljava/lang/String;

    move-result-object v2

    .line 980
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 983
    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ? AND uid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 992
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1010
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 997
    :try_start_1
    const-string p3, "RecoverableKeyStoreDb"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    .line 1000
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 998
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 997
    invoke-static {p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 1003
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1004
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1005
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 1010
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 1008
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1010
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_0
    if-eqz p0, :cond_3

    .line 982
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method public final getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8

    .line 1216
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1217
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1219
    const-string/jumbo p0, "uid"

    const-string/jumbo v1, "root_alias"

    const-string v2, "_id"

    const-string/jumbo v3, "user_id"

    filled-new-array {v2, v3, p0, v1, p4}, [Ljava/lang/String;

    move-result-object v2

    .line 1229
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1, p3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1232
    const-string/jumbo v1, "root_of_trust"

    const-string/jumbo v3, "user_id = ? AND uid = ? AND root_alias = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1241
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1259
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-le p3, v1, :cond_1

    .line 1246
    :try_start_1
    const-string p4, "RecoverableKeyStoreDb"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    .line 1249
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1247
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1246
    invoke-static {p4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 1252
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1253
    invoke-interface {p0, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1254
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 1259
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 1257
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1259
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_0
    if-eqz p0, :cond_3

    .line 1231
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method public getPlatformKeyGenerationId(I)I
    .locals 8

    .line 473
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 474
    const-string/jumbo p0, "platform_key_generation_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 482
    const-string/jumbo v1, "user_metadata"

    const-string/jumbo v3, "user_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 491
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 498
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p0, -0x1

    return p0

    .line 494
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 496
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 495
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz p1, :cond_1

    .line 481
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public getRecoveryAgents(I)Ljava/util/List;
    .locals 8

    .line 602
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 604
    const-string/jumbo p0, "uid"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 609
    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 618
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 620
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 621
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 623
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 626
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :goto_1
    if-eqz p1, :cond_1

    .line 608
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
.end method

.method public getRecoverySecretTypes(II)[I
    .locals 9

    .line 693
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 695
    const-string p0, "_id"

    const-string/jumbo v1, "user_id"

    const-string/jumbo v2, "uid"

    const-string/jumbo v8, "secret_types"

    filled-new-array {p0, v1, v2, v8}, [Ljava/lang/String;

    move-result-object v2

    .line 703
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 706
    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ? AND uid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 715
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 717
    new-array p1, v1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    .line 719
    :cond_0
    const-string v2, "RecoverableKeyStoreDb"

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 720
    :try_start_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    .line 723
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 721
    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-static {v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-array p1, v1, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 726
    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 727
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 729
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 730
    new-array p1, v1, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 732
    :cond_2
    :try_start_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 733
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 734
    new-array p1, v1, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 746
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 736
    :cond_3
    :try_start_4
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 737
    array-length p2, p1

    new-array p2, p2, [I

    .line 738
    :goto_0
    array-length v0, p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v1, v0, :cond_4

    .line 740
    :try_start_5
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 742
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String format error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 746
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p2

    :goto_2
    if-eqz p0, :cond_5

    .line 705
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
.end method

.method public getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1

    .line 560
    const-string v0, "cert_path"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_0

    return-object p3

    .line 565
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeCertPath([B)Ljava/security/cert/CertPath;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 567
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 571
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 568
    const-string p2, "Recovery service CertPath entry cannot be decoded for userId=%d uid=%d."

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 567
    const-string p2, "RecoverableKeyStoreDb"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p3
.end method

.method public getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 528
    const-string v0, "cert_serial"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getRecoveryServicePublicKey(II)Ljava/security/PublicKey;
    .locals 1

    .line 639
    const-string/jumbo v0, "public_key"

    .line 640
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 645
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeX509Key([B)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 647
    :catch_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 648
    const-string p2, "Recovery service public key entry cannot be decoded for userId=%d uid=%d."

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 647
    const-string p1, "RecoverableKeyStoreDb"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getServerParams(II)[B
    .locals 1

    .line 885
    const-string/jumbo v0, "server_params"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getShouldCreateSnapshot(II)Z
    .locals 2

    .line 953
    const-string/jumbo v0, "should_create_snapshot"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 955
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSnapshotVersion(II)Ljava/lang/Long;
    .locals 1

    .line 914
    const-string/jumbo v0, "snapshot_version"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getStatusForAllKeys(I)Ljava/util/Map;
    .locals 10

    .line 203
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    const-string p0, "_id"

    const-string v8, "alias"

    const-string/jumbo v9, "recovery_status"

    filled-new-array {p0, v8, v9}, [Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 213
    const-string v1, "keys"

    const-string/jumbo v3, "uid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 222
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 223
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 224
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 226
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 231
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_1
    if-eqz p0, :cond_1

    .line 212
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
.end method

.method public getUserSerialNumbers()Ljava/util/Map;
    .locals 9

    .line 348
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    const-string/jumbo p0, "user_id"

    const-string/jumbo v8, "user_serial_number"

    filled-new-array {p0, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 353
    new-array v4, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 356
    const-string/jumbo v1, "user_metadata"

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 365
    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 366
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 367
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 369
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 374
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    if-eqz v1, :cond_1

    .line 355
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
.end method

.method public insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J
    .locals 2

    .line 98
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string p1, "alias"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object p1

    const-string/jumbo p2, "nonce"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    const-string/jumbo p1, "wrapped_key"

    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p1, -0x1

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "last_synced_at"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "platform_key_generation_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getRecoveryStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "recovery_status"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMetadata()[B

    move-result-object p1

    .line 109
    const-string p2, "key_metadata"

    if-nez p1, :cond_0

    .line 110
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 114
    :goto_0
    const-string p1, "keys"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public invalidateKeysForUser(I)V
    .locals 3

    .line 447
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 448
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 449
    const-string/jumbo v2, "recovery_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "keys"

    const-string/jumbo v2, "user_id = ?"

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public invalidateKeysForUserIdOnCustomScreenLock(I)V
    .locals 3

    .line 459
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 460
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 462
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 461
    const-string/jumbo v2, "recovery_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 465
    const-string v1, "keys"

    const-string/jumbo v2, "user_id = ?"

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeKey(ILjava/lang/String;)Z
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 190
    const-string p2, "keys"

    const-string/jumbo v0, "uid = ? AND alias = ?"

    invoke-virtual {p0, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeUserFromAllTables(I)V
    .locals 0

    .line 1295
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromKeysTable(I)Z

    .line 1296
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromUserMetadataTable(I)Z

    .line 1297
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromRecoveryServiceMetadataTable(I)Z

    .line 1298
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromRootOfTrustTable(I)Z

    return-void
.end method

.method public final removeUserFromKeysTable(I)Z
    .locals 2

    .line 1307
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1309
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1310
    const-string v0, "keys"

    const-string/jumbo v1, "user_id = ?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeUserFromRecoveryServiceMetadataTable(I)Z
    .locals 2

    .line 1331
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1333
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1334
    const-string/jumbo v0, "recovery_service_metadata"

    const-string/jumbo v1, "user_id = ?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeUserFromRootOfTrustTable(I)Z
    .locals 2

    .line 1343
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1345
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1346
    const-string/jumbo v0, "root_of_trust"

    const-string/jumbo v1, "user_id = ?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeUserFromUserMetadataTable(I)Z
    .locals 2

    .line 1319
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1321
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1322
    const-string/jumbo v0, "user_metadata"

    const-string/jumbo v1, "user_id = ?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setActiveRootOfTrust(IILjava/lang/String;)J
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 761
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 762
    const-string v2, "active_root_of_trust"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 768
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    .line 767
    const-string/jumbo p1, "recovery_service_metadata"

    const-string/jumbo p2, "user_id = ? AND uid = ?"

    invoke-virtual {v0, p1, v1, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setBadRemoteGuessCounter(II)J
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 401
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "bad_remote_guess_counter"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 408
    const-string/jumbo p0, "user_metadata"

    const-string/jumbo p1, "user_id = ?"

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final setBytes(IILjava/lang/String;Ljava/lang/String;[B)J
    .locals 2

    .line 1189
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1190
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1191
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1197
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    filled-new-array {p4, p5, p3}, [Ljava/lang/String;

    move-result-object p4

    .line 1199
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 1200
    const-string/jumbo p0, "root_of_trust"

    const-string/jumbo p1, "user_id = ? AND uid = ? AND root_alias = ?"

    invoke-virtual {v0, p0, v1, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final setBytes(IILjava/lang/String;[B)J
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1106
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1107
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1111
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    .line 1113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 1114
    const-string/jumbo p0, "recovery_service_metadata"

    const-string/jumbo p1, "user_id = ? AND uid = ?"

    invoke-virtual {v0, p0, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setCounterId(IIJ)J
    .locals 6

    .line 839
    const-string v3, "counter_id"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final setLong(IILjava/lang/String;J)J
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1027
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1028
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1032
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    .line 1034
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 1035
    const-string/jumbo p0, "recovery_service_metadata"

    const-string/jumbo p1, "user_id = ? AND uid = ?"

    invoke-virtual {v0, p0, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final setLong(IILjava/lang/String;Ljava/lang/String;J)J
    .locals 2

    .line 1276
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1277
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1278
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1279
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1284
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    filled-new-array {p4, p5, p3}, [Ljava/lang/String;

    move-result-object p4

    .line 1286
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 1287
    const-string/jumbo p0, "root_of_trust"

    const-string/jumbo p1, "user_id = ? AND uid = ? AND root_alias = ?"

    invoke-virtual {v0, p0, v1, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setPlatformKeyGenerationId(II)J
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v2, "platform_key_generation_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->invalidateKeysForUser(I)V

    .line 337
    const-string/jumbo p0, "user_metadata"

    const-string/jumbo p1, "user_id = ?"

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setRecoverySecretTypes(II[I)J
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 670
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 671
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 672
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p3

    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {p3, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 673
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 674
    const-string/jumbo v2, "secret_types"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 680
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    .line 679
    const-string/jumbo p1, "recovery_service_metadata"

    const-string/jumbo p2, "user_id = ? AND uid = ?"

    invoke-virtual {v0, p1, v1, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J
    .locals 7

    .line 588
    invoke-virtual {p4}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "PkiPath"

    .line 592
    invoke-virtual {p4, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 591
    const-string v5, "cert_path"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;Ljava/lang/String;[B)J

    move-result-wide p0

    return-wide p0

    .line 589
    :cond_0
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    const-string p1, "No certificate contained in the cert path."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecoveryServiceCertSerial(IILjava/lang/String;J)J
    .locals 7

    .line 544
    const-string v4, "cert_serial"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setRecoveryStatus(ILjava/lang/String;I)I
    .locals 2

    .line 243
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 244
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 245
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v1, "recovery_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 249
    const-string p2, "keys"

    const-string/jumbo p3, "uid = ? AND alias = ?"

    invoke-virtual {p0, p2, v0, p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setServerParams(II[B)J
    .locals 1

    .line 869
    const-string/jumbo v0, "server_params"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public setShouldCreateSnapshot(IIZ)J
    .locals 8

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 938
    :goto_1
    const-string/jumbo v5, "should_create_snapshot"

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setSnapshotVersion(IIJ)J
    .locals 6

    .line 899
    const-string/jumbo v3, "snapshot_version"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setUserSerialNumber(IJ)J
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 384
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "user_serial_number"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 391
    const-string/jumbo p0, "user_metadata"

    const-string/jumbo p1, "user_id = ?"

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
