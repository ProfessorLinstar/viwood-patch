.class public Lcom/android/server/location/gnss/GnssPsdsDownloader;
.super Ljava/lang/Object;
.source "GnssPsdsDownloader.java"


# static fields
.field public static final CONNECTION_TIMEOUT_MS:I

.field public static final DEBUG:Z

.field public static final READ_TIMEOUT_MS:I


# instance fields
.field public final mLongTermPsdsServers:[Ljava/lang/String;

.field public mNextServerIndex:I

.field public final mPsdsServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const-string v0, "GnssPsdsDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->DEBUG:Z

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    const-wide/16 v1, 0x3c

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "LONGTERM_PSDS_SERVER_1"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "LONGTERM_PSDS_SERVER_2"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v2, "LONGTERM_PSDS_SERVER_3"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-nez v5, :cond_3

    .line 75
    const-string v0, "GnssPsdsDownloader"

    const-string v1, "No Long-Term PSDS servers were specified in the GnssConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    goto :goto_2

    .line 78
    :cond_3
    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 80
    aput-object v0, v5, v4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    if-eqz v1, :cond_5

    add-int/lit8 v0, v3, 0x1

    .line 81
    aput-object v1, v5, v3

    move v3, v0

    :cond_5
    if-eqz v2, :cond_6

    add-int/lit8 v0, v3, 0x1

    .line 82
    aput-object v2, v5, v3

    move v3, v0

    .line 85
    :cond_6
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 86
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 89
    :goto_2
    const-string v0, "NORMAL_PSDS_SERVER"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "REALTIME_PSDS_SERVER"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    .line 93
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    const/4 p0, 0x2

    .line 94
    aput-object v0, v1, p0

    const/4 p0, 0x3

    .line 95
    aput-object p1, v1, p0

    return-void
.end method


# virtual methods
.method public final doDownload(Ljava/lang/String;)[B
    .locals 8

    .line 145
    sget-boolean p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->DEBUG:Z

    const-string v0, "GnssPsdsDownloader"

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading PSDS data from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 149
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 150
    :try_start_1
    const-string v2, "Accept"

    const-string v3, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v2, "x-wap-profile"

    const-string v3, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget v2, Lcom/android/server/location/gnss/GnssPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 157
    sget v2, Lcom/android/server/location/gnss/GnssPsdsDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 159
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 160
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    if-eqz p0, :cond_1

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP error downloading gnss PSDS: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    .line 166
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    .line 168
    new-array v3, v3, [B

    .line 170
    :cond_3
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x0

    .line 171
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 172
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xf4240

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 173
    sget-boolean v2, Lcom/android/server/location/gnss/GnssPsdsDownloader;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "PSDS file too large"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    .line 178
    :cond_4
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    .line 177
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 183
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :goto_2
    if-eqz p0, :cond_6

    .line 166
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_8
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_3
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    move-object p1, v1

    .line 180
    :goto_4
    :try_start_9
    sget-boolean v2, Lcom/android/server/location/gnss/GnssPsdsDownloader;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "Error downloading gnss PSDS: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    if-eqz p1, :cond_8

    .line 183
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    return-object v1

    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 185
    :cond_9
    throw p0
.end method

.method public final doDownloadWithTrafficAccounted(Ljava/lang/String;)[B
    .locals 1

    const/16 v0, -0xbc

    .line 133
    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    .line 136
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 139
    throw p0
.end method

.method public downloadPsdsData(I)[B
    .locals 5

    .line 101
    iget v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x3

    if-le p1, v2, :cond_1

    if-gt p1, v3, :cond_1

    .line 105
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    if-ne p1, v2, :cond_5

    :cond_2
    if-nez v1, :cond_4

    .line 113
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownloadWithTrafficAccounted(Ljava/lang/String;)[B

    move-result-object v1

    .line 116
    iget p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 117
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne p1, v3, :cond_3

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 121
    :cond_3
    iget p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    if-ne p1, v0, :cond_2

    :cond_4
    return-object v1

    :cond_5
    if-le p1, v2, :cond_6

    if-gt p1, v3, :cond_6

    .line 124
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownloadWithTrafficAccounted(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method
