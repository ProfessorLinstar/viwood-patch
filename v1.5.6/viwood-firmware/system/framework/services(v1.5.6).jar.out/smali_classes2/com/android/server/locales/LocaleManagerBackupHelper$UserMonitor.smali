.class public final Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LocaleManagerBackupHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/LocaleManagerBackupHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 532
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 533
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 534
    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 535
    iget-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$fgetmStagedDataLock(Lcom/android/server/locales/LocaleManagerBackupHelper;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    .line 537
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {v0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$mremoveProfileFromPersistedInfo(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V

    .line 538
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$mremoveArchivedPackagesForUser(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V

    .line 539
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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 542
    const-string p1, "LocaleManagerBkpHelper"

    const-string p2, "Exception in user monitor."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
