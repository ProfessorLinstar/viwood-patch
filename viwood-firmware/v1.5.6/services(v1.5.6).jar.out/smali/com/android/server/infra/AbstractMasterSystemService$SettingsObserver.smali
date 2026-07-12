.class public final Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AbstractMasterSystemService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V
    .locals 3

    .line 1346
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 1347
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1348
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1349
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1351
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1354
    :cond_0
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1356
    invoke-virtual {p1, p2, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 1361
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange(): uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1366
    :cond_1
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "user_setup_complete"

    .line 1367
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1372
    :cond_2
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onSettingsChanged(ILjava/lang/String;)V

    return-void

    .line 1368
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1369
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 1370
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
