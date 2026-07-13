.class public Lcom/android/server/storage/AppCollector;
.super Ljava/lang/Object;
.source "AppCollector.java"


# static fields
.field public static TAG:Ljava/lang/String; = "AppCollector"


# instance fields
.field public final mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

.field public mStats:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmStats(Lcom/android/server/storage/AppCollector;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 7

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    new-instance v0, Lcom/android/server/storage/AppCollector$BackgroundHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v1, "user"

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/UserManager;

    const-string/jumbo v1, "storagestats"

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/storage/AppCollector$BackgroundHandler;-><init>(Lcom/android/server/storage/AppCollector;Landroid/os/Looper;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/usage/StorageStatsManager;)V

    iput-object v0, v1, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    return-void
.end method


# virtual methods
.method public getPackageStats(J)Ljava/util/List;
    .locals 2

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    .line 82
    iget-object v0, p0, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 84
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    iget-object p0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 92
    :catch_0
    sget-object p0, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    const-string p1, "AppCollector timed out"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 90
    sget-object p1, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    const-string p2, "An exception occurred while getting app storage"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0

    .line 84
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
