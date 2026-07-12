.class public Lcom/android/server/security/CertificateRevocationStatusManager;
.super Ljava/lang/Object;
.source "CertificateRevocationStatusManager.java"


# static fields
.field static final MAX_OFFLINE_REVOCATION_LIST_AGE_DAYS:I = 0x1e

.field static final NUM_HOURS_BEFORE_NEXT_FETCH:I = 0x18

.field public static final sFileLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mShouldScheduleJob:Z

.field public final mTestRemoteRevocationListUrl:Ljava/lang/String;

.field public final mTestStoredRevocationListFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$F6XQfwTEjF9E2YkHLOw_QbbK6AY(Lcom/android/server/security/CertificateRevocationStatusManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->scheduleJobToFetchRemoteRevocationJob()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestRemoteRevocationListUrl:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    .line 83
    iput-boolean p4, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mShouldScheduleJob:Z

    return-void
.end method

.method public static checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 2

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate has been revoked: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static getLastModifiedDateTime(Ljava/io/File;)Ljava/time/LocalDateTime;
    .locals 4

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p0

    const/4 v2, 0x0

    .line 168
    invoke-static {v0, v1, v2, p0}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkRevocationStatus(Ljava/util/List;)V
    .locals 5

    .line 94
    const-string v0, "AVF_CRL"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 96
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Certificate serial number cannot be null."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p1

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getRevocationListFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/security/CertificateRevocationStatusManager;->getLastModifiedDateTime(Ljava/io/File;)Ljava/time/LocalDateTime;

    move-result-object v2

    const-wide/16 v3, 0x18

    .line 106
    invoke-virtual {p1, v3, v4}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    const-string p1, "CRL is fetched recently, do not fetch again."

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getStoredRevocationList()Lorg/json/JSONObject;

    move-result-object p1

    .line 109
    invoke-static {p1, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 116
    :catch_0
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->fetchRemoteRevocationListBytes()[B

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/security/CertificateRevocationStatusManager;->silentlyStoreRevocationList([B)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/security/CertificateRevocationStatusManager;->parseRevocationList([B)Lorg/json/JSONObject;

    move-result-object p1

    .line 119
    invoke-static {p1, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 121
    const-string v2, "Fallback to check stored revocation status"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mShouldScheduleJob:Z

    if-eqz p1, :cond_3

    .line 123
    new-instance p1, Lcom/android/server/security/CertificateRevocationStatusManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/security/CertificateRevocationStatusManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/security/CertificateRevocationStatusManager;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 126
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getStoredRevocationList()Lorg/json/JSONObject;

    move-result-object p0

    .line 127
    invoke-static {p0, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :catch_2
    move-exception p0

    .line 129
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Unable to load or parse stored revocation status"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public fetchRemoteRevocationListBytes()[B
    .locals 4

    .line 236
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getRemoteRevocationListUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 248
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 247
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse the URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 238
    :cond_1
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "R.string.vendor_required_attestation_revocation_list_url is empty."

    invoke-direct {p0, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRemoteRevocationListUrl()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestRemoteRevocationListUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040a97

    .line 263
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRevocationListFile()Ljava/io/File;
    .locals 2

    .line 201
    iget-object p0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    if-eqz p0, :cond_0

    return-object p0

    .line 204
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "certificate_revocation_list.json"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getStoredRevocationList()Lorg/json/JSONObject;
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getRevocationListFile()Ljava/io/File;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/security/CertificateRevocationStatusManager;->isRevocationListExpired(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    sget-object v1, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/security/CertificateRevocationStatusManager;->parseRevocationList([B)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 152
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    .line 155
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 149
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Offline copy does not exist or has expired."

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isRevocationListExpired(Ljava/io/File;)Z
    .locals 2

    .line 160
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 161
    invoke-static {p1}, Lcom/android/server/security/CertificateRevocationStatusManager;->getLastModifiedDateTime(Ljava/io/File;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 162
    invoke-virtual {p1, p0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p0

    return p0
.end method

.method public final parseRevocationList([B)Lorg/json/JSONObject;
    .locals 2

    .line 254
    new-instance p0, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 255
    const-string p1, "entries"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public final scheduleJobToFetchRemoteRevocationJob()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 209
    const-string v1, "AVF_CRL"

    if-nez v0, :cond_0

    .line 210
    const-string p0, "Unable to get job scheduler."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_0
    const-string v2, "Scheduling job to fetch remote CRL."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v0

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0x6792c2ac

    invoke-direct {v1, p0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 222
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    .line 220
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 214
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public silentlyStoreRevocationList([B)V
    .locals 4

    .line 182
    sget-object v0, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getRevocationListFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v1, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 189
    const-string p1, "AVF_CRL"

    const-string v2, "Successfully stored revocation list."

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p0, 0x0

    .line 191
    :goto_0
    :try_start_3
    const-string v2, "AVF_CRL"

    const-string v3, "Failed to store the certificate revocation list."

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {v1, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 197
    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
