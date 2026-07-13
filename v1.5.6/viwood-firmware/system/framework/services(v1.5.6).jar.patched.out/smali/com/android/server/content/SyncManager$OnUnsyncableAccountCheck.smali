.class public Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

.field public final mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;


# direct methods
.method public static bridge synthetic -$$Nest$monReady(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V
    .locals 0

    .line 2992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2993
    iput-object p1, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2994
    iput-object p2, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

    return-void
.end method


# virtual methods
.method public final onReady()V
    .locals 2

    .line 2998
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3000
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

    invoke-interface {p0}, Lcom/android/server/content/SyncManager$OnReadyCallback;->onReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3002
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3003
    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 3008
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object p1

    .line 3011
    :try_start_0
    new-instance p2, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;

    invoke-direct {p2, p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;-><init>(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    invoke-interface {p1, p2}, Landroid/content/ISyncAdapter;->onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3020
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not call onUnsyncableAccountDone "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SyncManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3025
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
