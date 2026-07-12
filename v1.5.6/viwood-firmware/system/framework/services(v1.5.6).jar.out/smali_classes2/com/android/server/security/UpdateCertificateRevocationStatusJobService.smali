.class public Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;
.super Landroid/app/job/JobService;
.source "UpdateCertificateRevocationStatusJobService.java"


# instance fields
.field public mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$FQ5pfV6Ncw9NXU64tx3c0B_7Qp4(Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .locals 3

    .line 46
    const-string v0, "AVF_CRL"

    :try_start_0
    new-instance v1, Lcom/android/server/security/CertificateRevocationStatusManager;

    invoke-direct {v1, p0}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v2, "Starting to fetch remote CRL from job service."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->fetchRemoteRevocationListBytes()[B

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/android/server/security/CertificateRevocationStatusManager;->silentlyStoreRevocationList([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 54
    const-string v2, "Unable to update the stored revocation list."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 69
    iget-object p0, p0, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/security/UpdateCertificateRevocationStatusJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/security/UpdateCertificateRevocationStatusJobService;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
