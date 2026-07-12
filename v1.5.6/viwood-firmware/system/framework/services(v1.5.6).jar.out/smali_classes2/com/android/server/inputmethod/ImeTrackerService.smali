.class public final Lcom/android/server/inputmethod/ImeTrackerService;
.super Lcom/android/internal/inputmethod/IImeTracker$Stub;
.source "ImeTrackerService.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$as-auvynjuukEdh6H7yFFRfTTOk(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService;->lambda$onStart$0(Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;-><init>()V

    .line 67
    new-instance v0, Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$History;-><init>(Lcom/android/server/inputmethod/ImeTrackerService-IA;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$mdump(Lcom/android/server/inputmethod/ImeTrackerService$History;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finishTrackingPendingImeVisibilityRequests(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->finishTrackingPendingImeVisibilityRequests_enforcePermission()V

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {p0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$fgetmLiveEntries(Lcom/android/server/inputmethod/ImeTrackerService$History;)Ljava/util/WeakHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->clear()V

    .line 185
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    .line 186
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 185
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public hasPendingImeVisibilityRequests()Z
    .locals 1

    .line 169
    invoke-super {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->hasPendingImeVisibilityRequests_enforcePermission()V

    .line 170
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {p0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$fgetmLiveEntries(Lcom/android/server/inputmethod/ImeTrackerService$History;)Ljava/util/WeakHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onStart$0(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 92
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x2

    invoke-static {p0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x3

    invoke-static {p0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onImmsUpdate(Landroid/view/inputmethod/ImeTracker$Token;Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$mgetEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmRequestWindowName(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/lang/String;)V

    .line 156
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProgress(Landroid/os/IBinder;I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$mgetEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->-$$Nest$fputmPhase(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;I)V

    .line 105
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 11

    .line 80
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 81
    new-instance v1, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 82
    new-instance v2, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    const/4 v6, 0x1

    const/4 v10, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>(Ljava/lang/String;IIIIIZLcom/android/server/inputmethod/ImeTrackerService-IA;)V

    .line 84
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 85
    :try_start_0
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {p2, v0, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$maddEntry(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)V

    .line 88
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v1}, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
