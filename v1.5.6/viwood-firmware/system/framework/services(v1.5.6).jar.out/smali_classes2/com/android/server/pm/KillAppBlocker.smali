.class public final Lcom/android/server/pm/KillAppBlocker;
.super Ljava/lang/Object;
.source "KillAppBlocker.java"


# instance fields
.field public mActiveUids:Ljava/util/List;

.field public mRegistered:Z

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveUids(Lcom/android/server/pm/KillAppBlocker;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidsGoneCountDownLatch(Lcom/android/server/pm/KillAppBlocker;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    .line 44
    new-instance v0, Lcom/android/server/pm/KillAppBlocker$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KillAppBlocker$1;-><init>(Lcom/android/server/pm/KillAppBlocker;)V

    iput-object v0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Landroid/app/IUidObserver;

    return-void
.end method


# virtual methods
.method public register()V
    .locals 5

    .line 58
    iget-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Landroid/app/IUidObserver;

    const-string/jumbo v2, "pm"

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    .line 78
    iget-object p0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public waitAppProcessGone(Landroid/app/ActivityManagerInternal;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/lang/String;)V
    .locals 8

    .line 88
    iget-boolean v0, p0, Lcom/android/server/pm/KillAppBlocker;->mRegistered:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 93
    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p3

    const/4 v0, 0x0

    .line 95
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 96
    aget v6, p3, v0

    const-wide/32 v4, 0x20000

    const/16 v7, 0x3e8

    move-object v2, p2

    move-object v3, p4

    .line 97
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_1

    .line 100
    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p4

    const/16 v1, 0x14

    if-eq p4, v1, :cond_1

    .line 101
    iget-object p4, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object p2, v2

    move-object p4, v3

    goto :goto_0

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/KillAppBlocker;->mActiveUids:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/KillAppBlocker;->mUidsGoneCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    return-void

    .line 110
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
