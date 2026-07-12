.class public Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# instance fields
.field public final mCleanupRunnables:Ljava/util/List;

.field public mOngoing:Z

.field public final mStartTime:J

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$Sj35ThxKAaMQVMJuJW7BiRrLEAE(Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->lambda$cancel$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$utPF6Nzeh5_1soUTRhYEbXDXUko(Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->lambda$finish$1()V

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 2

    .line 14688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 14690
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p1, 0x1

    .line 14691
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 14692
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    .line 14693
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p0, :cond_0

    .line 14694
    const-string p0, "NotificationService"

    const-string p1, "PostNotification: Started"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addCleanupRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 14699
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 6

    .line 14718
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->isOngoing()Z

    move-result v0

    const-string v1, "NotificationService"

    if-nez v0, :cond_0

    .line 14719
    const-string p0, "cancel() called on already-finished tracker"

    invoke-static {v1, p0}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14722
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 14723
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 14724
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 14726
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 14727
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 14729
    :cond_2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_3

    .line 14730
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    sub-long/2addr v2, v4

    .line 14732
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 14731
    const-string v0, "PostNotification: Abandoned after %d ms"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public finish()J
    .locals 4

    .line 14744
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    sub-long/2addr v0, v2

    .line 14745
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->isOngoing()Z

    move-result v2

    const-string v3, "NotificationService"

    if-nez v2, :cond_0

    .line 14746
    const-string p0, "finish() called on already-finished tracker"

    invoke-static {v3, p0}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 14749
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 14750
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 14751
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 14753
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 14754
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 14756
    :cond_2
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p0, :cond_3

    .line 14758
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "PostNotification: Finished in %d ms"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 14757
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 14704
    iget-wide v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    return-wide v0
.end method

.method public isOngoing()Z
    .locals 0

    .line 14709
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    return p0
.end method

.method public final synthetic lambda$cancel$0()V
    .locals 0

    .line 14724
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final synthetic lambda$finish$1()V
    .locals 0

    .line 14751
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
