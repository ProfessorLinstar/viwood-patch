.class public Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;
.super Ljava/lang/Object;
.source "FontManagerService.java"

# interfaces
.implements Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;


# instance fields
.field public final mDerCertPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;->mDerCertPaths:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isFromTrustedProvider(Ljava/lang/String;[B)Z
    .locals 7

    .line 190
    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    move-result-object v0

    .line 191
    const-string v1, "FontManagerService"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get fs-verity digest for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;->mDerCertPaths:[Ljava/lang/String;

    array-length p1, p0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_2

    aget-object v4, p0, v3

    .line 196
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :try_start_1
    invoke-static {p2, v0, v5}, Lcom/android/internal/security/VerityUtils;->verifyPkcs7DetachedSignature([B[BLjava/io/InputStream;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    .line 200
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v6

    .line 196
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 201
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read certificate file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public rename(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 215
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public setUpFsverity(Ljava/lang/String;)V
    .locals 0

    .line 209
    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;)V

    return-void
.end method
