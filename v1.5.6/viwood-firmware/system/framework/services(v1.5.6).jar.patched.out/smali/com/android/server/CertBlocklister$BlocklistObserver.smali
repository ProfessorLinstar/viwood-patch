.class public Lcom/android/server/CertBlocklister$BlocklistObserver;
.super Landroid/database/ContentObserver;
.source "CertBlocklister.java"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mTmpDir:Ljava/io/File;


# direct methods
.method public static bridge synthetic -$$Nest$mwriteDenylist(Lcom/android/server/CertBlocklister$BlocklistObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/CertBlocklister$BlocklistObserver;->writeDenylist()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 61
    iput-object p1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    .line 64
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 65
    iput-object p4, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 79
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Z)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 71
    new-instance p1, Lcom/android/server/CertBlocklister$BlocklistObserver$1;

    const-string v0, "BlocklistUpdater"

    invoke-direct {p1, p0, v0}, Lcom/android/server/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/android/server/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final writeDenylist()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/CertBlocklister$BlocklistObserver;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    sget-object v3, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "CertBlocklister"

    const-string v3, "The certificate blocklist based on serials is deprecated. Please use the pubkey blocklist instead."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    const-string v2, "CertBlocklister"

    const-string v3, "Certificate blocklist changed, updating..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 97
    :try_start_1
    const-string/jumbo v3, "journal"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 98
    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 99
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 100
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 102
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 103
    const-string p0, "CertBlocklister"

    const-string v1, "Certificate blocklist updated"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v4

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 105
    :goto_0
    :try_start_4
    const-string v1, "CertBlocklister"

    const-string v3, "Failed to write blocklist"

    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 109
    :goto_1
    monitor-exit v0

    return-void

    .line 107
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 108
    throw p0

    .line 109
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
