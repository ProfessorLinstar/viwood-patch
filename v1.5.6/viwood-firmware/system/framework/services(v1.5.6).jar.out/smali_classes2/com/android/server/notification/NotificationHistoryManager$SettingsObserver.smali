.class public final Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationHistoryManager.java"


# instance fields
.field public final NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/os/Handler;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    .line 399
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 395
    const-string/jumbo p1, "notification_history_enabled"

    .line 396
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 406
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryManager;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v1}, Lcom/android/server/notification/NotificationHistoryManager;->-$$Nest$fgetmUserManager(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 408
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(Landroid/net/Uri;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 410
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 420
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(Landroid/net/Uri;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 415
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update(Landroid/net/Uri;I)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 426
    :cond_1
    :goto_0
    const-string/jumbo p1, "notification_history_enabled"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 429
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/notification/NotificationHistoryManager;->onHistoryEnabledChanged(IZ)V

    return-void
.end method
