.class public abstract Lcom/android/server/blob/BlobStoreUtils;
.super Ljava/lang/Object;
.source "BlobStoreUtils.java"


# static fields
.field public static final sLock:Ljava/lang/Object;

.field public static sRevocableFdHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/blob/BlobStoreUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescriptionResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 58
    invoke-static {p0, p2, p3}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDescriptionResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 52
    const-string/jumbo v0, "string"

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 2

    .line 40
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BlobStore"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRevocableFdHandler()Landroid/os/Handler;
    .locals 3

    .line 80
    sget-object v0, Lcom/android/server/blob/BlobStoreUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/android/server/blob/BlobStoreUtils;->sRevocableFdHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 82
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 84
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BlobFuseLooper"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/blob/BlobStoreUtils;->sRevocableFdHandler:Landroid/os/Handler;

    .line 88
    monitor-exit v0

    return-object v2

    .line 89
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
