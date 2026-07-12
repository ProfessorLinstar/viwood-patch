.class public final Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
.super Landroid/database/ContentObserver;
.source "ContentObserverController.java"


# instance fields
.field public final mJobs:Landroid/util/ArraySet;

.field public final mUri:Landroid/app/job/JobInfo$TriggerContentUri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 221
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 217
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 222
    iput-object p3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    .line 223
    iput p4, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 228
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "JobScheduler.ContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange(self="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " when mUri="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mUserId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 235
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 236
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v3, :cond_1

    .line 237
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 239
    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_2

    .line 240
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v3, :cond_3

    .line 243
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 245
    :cond_3
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->scheduleLocked()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_4
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
