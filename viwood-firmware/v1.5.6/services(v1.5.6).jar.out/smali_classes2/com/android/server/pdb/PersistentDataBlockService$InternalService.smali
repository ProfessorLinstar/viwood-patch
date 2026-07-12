.class public Lcom/android/server/pdb/PersistentDataBlockService$InternalService;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/pdb/PersistentDataBlockManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public static bridge synthetic -$$Nest$mwriteDataBuffer(Lcom/android/server/pdb/PersistentDataBlockService$InternalService;JLjava/nio/ByteBuffer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 1289
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;Lcom/android/server/pdb/PersistentDataBlockService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    return-void
.end method


# virtual methods
.method public clearTestHarnessModeData()V
    .locals 3

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->getTestHarnessModeData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x270c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 1317
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    return-void
.end method

.method public deactivateFactoryResetProtectionWithoutSecret()Z
    .locals 3

    .line 1327
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fputmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;Z)V

    .line 1329
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$msetOldSettingForBackworkCompatibility(Lcom/android/server/pdb/PersistentDataBlockService;Z)V

    .line 1330
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceOemUnlockEnabled(Z)V
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1402
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/pdb/PersistentDataBlockService;Z)V

    .line 1403
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    .line 1404
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllowedUid()I
    .locals 0

    .line 1322
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmAllowedUid(Lcom/android/server/pdb/PersistentDataBlockService;)I

    move-result p0

    return p0
.end method

.method public getFrpCredentialHandle()[B
    .locals 3

    .line 1297
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(JI)[B

    move-result-object p0

    return-object p0
.end method

.method public getTestHarnessModeData()[B
    .locals 3

    .line 1307
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(JI)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1309
    new-array p0, p0, [B

    :cond_0
    return-object p0
.end method

.method public final readInternal(JI)[B
    .locals 4

    .line 1369
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceChecksumValidity(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1375
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1382
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1383
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 1384
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-lez p1, :cond_1

    if-le p1, p3, :cond_0

    goto :goto_0

    .line 1388
    :cond_0
    new-array p1, p1, [B

    .line 1389
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1390
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1395
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1386
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1395
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    return-object p0

    .line 1391
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1393
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "persistent partition not readable"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1395
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1396
    throw p0

    .line 1378
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "persistent partition not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1370
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid checksum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFrpCredentialHandle([B)V
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeInternal([BJI)V

    return-void
.end method

.method public setTestHarnessModeData([B)V
    .locals 3

    .line 1302
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeInternal([BJI)V

    return-void
.end method

.method public final writeDataBuffer(JLjava/nio/ByteBuffer;)Z
    .locals 3

    .line 1351
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1355
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mgetBlockOutputChannel(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1356
    :try_start_2
    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1357
    invoke-virtual {v1, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 1358
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1359
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1364
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_1

    .line 1355
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1360
    :goto_1
    :try_start_7
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "unable to access persistent partition"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    monitor-exit v0

    return v2

    .line 1365
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final writeInternal([BJI)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1335
    array-length v2, p1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const-string v3, "data must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 1336
    array-length v2, p1

    if-gt v2, p4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data must not be longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x4

    .line 1340
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    if-nez p1, :cond_4

    goto :goto_3

    .line 1341
    :cond_4
    array-length v1, p1

    :goto_3
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_5

    .line 1343
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1345
    :cond_5
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1347
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    return-void
.end method
