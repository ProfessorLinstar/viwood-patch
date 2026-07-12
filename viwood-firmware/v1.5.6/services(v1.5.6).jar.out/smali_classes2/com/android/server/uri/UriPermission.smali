.class public final Lcom/android/server/uri/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# instance fields
.field public globalModeFlags:I

.field public mReadOwners:Landroid/util/ArraySet;

.field public mWriteOwners:Landroid/util/ArraySet;

.field public modeFlags:I

.field public ownedModeFlags:I

.field public persistableModeFlags:I

.field public persistedCreateTime:J

.field public persistedModeFlags:I

.field public final sourcePkg:Ljava/lang/String;

.field public stringName:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final targetUid:I

.field public final targetUserId:I

.field public final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 70
    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 72
    iput v0, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 74
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 77
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 83
    iput-wide v0, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 95
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 96
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 98
    iput p3, p0, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 99
    iput-object p4, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 1

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 269
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 270
    iget v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 271
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 273
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p1, p0}, Lcom/android/server/uri/UriPermissionOwner;->addReadPermission(Lcom/android/server/uri/UriPermission;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized addWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 296
    iget v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 297
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 299
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p1, p0}, Lcom/android/server/uri/UriPermissionOwner;->addWritePermission(Lcom/android/server/uri/UriPermission;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public buildGrantedUriPermission()Landroid/app/GrantedUriPermission;
    .locals 2

    .line 408
    new-instance v0, Landroid/app/GrantedUriPermission;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/app/GrantedUriPermission;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .locals 5

    .line 404
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iget-wide v3, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sourcePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " targetPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " owned=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " global=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persistable=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persisted=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    iget-wide v0, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persistedCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v0, "readOwners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermissionOwner;

    .line 355
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v0, "writeOwners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermissionOwner;

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getStrength(I)I
    .locals 2

    const/4 v0, 0x3

    and-int/2addr p1, v0

    .line 256
    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    return v0

    .line 258
    :cond_0
    iget v0, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 p0, 0x2

    return p0

    .line 260
    :cond_1
    iget p0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z
    .locals 3

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v2, p1, 0x3

    if-eqz v0, :cond_1

    .line 137
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    :cond_1
    if-nez p2, :cond_2

    .line 141
    iget p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p0, p2}, Lcom/android/server/uri/UriPermission;->addReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    :cond_3
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 147
    invoke-virtual {p0, p2}, Lcom/android/server/uri/UriPermission;->addWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 151
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    return v1
.end method

.method public initPersistedModes(IJ)V
    .locals 0

    and-int/lit8 p1, p1, 0x3

    .line 124
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 125
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 126
    iput-wide p2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 128
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    return-void
.end method

.method public releasePersistableModes(I)Z
    .locals 3

    and-int/lit8 p1, p1, 0x3

    .line 184
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    .line 185
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-nez p1, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    .line 188
    iput-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 192
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 3

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 287
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 288
    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 289
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 291
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_2
    :goto_1
    :try_start_1
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown read owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 3

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 314
    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 315
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 317
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_2
    :goto_1
    :try_start_1
    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown write owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public revokeModes(IZ)Z
    .locals 7

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 203
    :goto_0
    iget v3, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-eqz v0, :cond_1

    .line 207
    iget v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v3, -0x2

    .line 208
    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 210
    :cond_1
    iget v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    .line 213
    iget v6, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 214
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v6, :cond_2

    .line 216
    invoke-virtual {v6, p0}, Lcom/android/server/uri/UriPermissionOwner;->removeReadPermission(Lcom/android/server/uri/UriPermission;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 219
    :cond_3
    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 221
    :cond_4
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_3
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a

    if-eqz v0, :cond_6

    .line 225
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 226
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 228
    :cond_6
    iget p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 229
    monitor-enter p0

    .line 230
    :try_start_1
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 231
    iget p2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 232
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermissionOwner;

    if-eqz p2, :cond_7

    .line 234
    invoke-virtual {p2, p0}, Lcom/android/server/uri/UriPermissionOwner;->removeWritePermission(Lcom/android/server/uri/UriPermission;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 237
    :cond_8
    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 239
    :cond_9
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 242
    :cond_a
    :goto_6
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-nez p1, :cond_b

    const-wide/high16 p1, -0x8000000000000000L

    .line 243
    iput-wide p1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 246
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 247
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, v3, :cond_c

    return v2

    :cond_c
    return v1
.end method

.method public snapshot()Lcom/android/server/uri/UriPermission$Snapshot;
    .locals 2

    .line 400
    new-instance v0, Lcom/android/server/uri/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriPermission$Snapshot;-><init>(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission-IA;)V

    return-object v0
.end method

.method public takePersistableModes(I)Z
    .locals 5

    and-int/lit8 p1, p1, 0x3

    .line 162
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int v1, p1, v0

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested flags 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but only 0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 165
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " are allowed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    const-string p1, "UriPermission"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 169
    :cond_0
    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/2addr p1, v0

    or-int/2addr p1, v1

    .line 170
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz p1, :cond_1

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 177
    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 325
    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public final updateModeFlags()V
    .locals 4

    .line 103
    iget v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 104
    iget v1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    iget v2, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    const/4 v1, 0x2

    .line 106
    const-string v2, "UriPermission"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eq v1, v0, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is changing from 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " via calling UID "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PID "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 107
    invoke-static {v2, p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
