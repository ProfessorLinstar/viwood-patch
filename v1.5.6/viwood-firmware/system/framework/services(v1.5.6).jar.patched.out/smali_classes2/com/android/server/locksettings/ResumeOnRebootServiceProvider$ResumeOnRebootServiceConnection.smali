.class public Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;
.super Ljava/lang/Object;
.source "ResumeOnRebootServiceProvider.java"


# instance fields
.field public mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static bridge synthetic -$$Nest$fputmBinder(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;Landroid/service/resumeonreboot/IResumeOnRebootService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public bindToService(J)V
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 141
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 142
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    new-instance v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection$1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection$1;-><init>(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v4, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 156
    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v5, 0x4000001

    .line 156
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Binding: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " u"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResumeOnRebootServiceConnection"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_2
    const-string/jumbo v1, "serviceConnection"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V

    return-void
.end method

.method public final throwTypedException(Landroid/os/ParcelableException;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/io/IOException;

    if-eqz p0, :cond_0

    .line 215
    const-class p0, Ljava/io/IOException;

    invoke-virtual {p1, p0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    return-void

    .line 218
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "ResumeOnRebootServiceConnection wrap/unwrap failed"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    throw p0
.end method

.method public unbindService()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    return-void
.end method

.method public unwrap([BJ)[B
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 198
    new-instance v1, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider-IA;)V

    .line 201
    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    new-instance v3, Landroid/os/RemoteCallback;

    invoke-direct {v3, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v2, p1, v3}, Landroid/service/resumeonreboot/IResumeOnRebootService;->unwrap([BLandroid/os/RemoteCallback;)V

    .line 202
    const-string/jumbo p1, "unWrapSecret"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V

    .line 203
    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->-$$Nest$mgetResult(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "exception_key"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->-$$Nest$mgetResult(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object p1

    const-class p3, Landroid/os/ParcelableException;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelableException;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->throwTypedException(Landroid/os/ParcelableException;)V

    .line 207
    :cond_0
    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->-$$Nest$mgetResult(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "unrwapped_blob_key"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 194
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Service not bound"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .locals 1

    .line 226
    const-string p0, "Latch wait for "

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p3, p4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " elapsed"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 231
    new-instance p1, Landroid/os/RemoteException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " interrupted"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wrapBlob([BJJ)[B
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 178
    new-instance v1, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider-IA;)V

    .line 181
    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    new-instance v3, Landroid/os/RemoteCallback;

    invoke-direct {v3, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/service/resumeonreboot/IResumeOnRebootService;->wrapSecret([BJLandroid/os/RemoteCallback;)V

    .line 182
    const-string/jumbo p1, "wrapSecret"

    invoke-virtual {p0, v0, p1, p4, p5}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V

    .line 183
    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->-$$Nest$mgetResult(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "exception_key"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->-$$Nest$mgetResult(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object p1

    const-class p3, Landroid/os/ParcelableException;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelableException;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->throwTypedException(Landroid/os/ParcelableException;)V

    .line 187
    :cond_0
    invoke-static {v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->-$$Nest$fgetmResult(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "wrapped_blob_key"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 174
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Service not bound"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
