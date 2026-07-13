.class public Lcom/android/server/power/AmbientDisplaySuppressionController;
.super Ljava/lang/Object;
.source "AmbientDisplaySuppressionController.java"


# instance fields
.field public final mCallback:Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSuppressionTokens:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mCallback:Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 134
    const-string v0, "AmbientDisplaySuppressionController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ambientDisplaySuppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSuppressionTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v0, "statusbar"

    .line 142
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSuppressionTokens(I)Ljava/util/List;
    .locals 4

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 104
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 105
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 108
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSuppressed()Z
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSuppressed(Ljava/lang/String;I)Z
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public suppress(Ljava/lang/String;IZ)V
    .locals 0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result p2

    if-eqz p3, :cond_0

    .line 75
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result p1

    if-eq p1, p2, :cond_1

    .line 82
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mCallback:Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;

    invoke-interface {p2, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;->onSuppressionChanged(Z)V

    .line 86
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->suppressAmbientDisplay(Z)V

    .line 88
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 90
    const-string p1, "AmbientDisplaySuppressionController"

    const-string p2, "Failed to suppress ambient display"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
