.class public Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;
.super Ljava/lang/Object;
.source "IntrusionDetectionEventTransportConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

.field public volatile mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)Z
    .locals 3

    .line 114
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const/4 v1, 0x0

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    invoke-interface {v2, p1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;->addData(Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v1

    :catch_0
    move-exception p0

    .line 118
    const-string p1, "IntrusionDetectionEventTransportConnection"

    const-string v0, "Remote Exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final bindService()Z
    .locals 5

    .line 165
    const-string v0, "android.permission.BIND_INTRUSION_DETECTION_EVENT_TRANSPORT_SERVICE"

    const-string/jumbo v1, "ro.build.type"

    invoke-virtual {p0, v1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mContext:Landroid/content/Context;

    const v3, 0x1040293

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    .line 172
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const-string v1, "debug.intrusiondetection_package_name"

    invoke-virtual {p0, v1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    .line 178
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIntrusionDetectionEventTransportConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntrusionDetectionEventTransportConnection"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 184
    const-string p0, "Unable to find a valid config for the transport service"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mIntrusionDetectionEventTransportConfig:Ljava/lang/String;

    .line 189
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    .line 191
    const-string p0, "Can\'t get serviceComponent name"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 196
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 198
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not declared with the permission \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 209
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    :cond_4
    return v0

    .line 205
    :catch_0
    const-string p0, "Unable to find serviceComponent"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;
    .locals 2

    .line 141
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 144
    const-string p1, "IntrusionDetectionEventTransportConnection"

    const-string v0, "Failed to get result from transport:"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getprop "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 152
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 153
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 155
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 159
    const-string p1, "IntrusionDetectionEventTransportConnection"

    const-string v0, "Failed to get system property value:"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize()Z
    .locals 4

    .line 71
    const-string v0, "initialize"

    const-string v1, "IntrusionDetectionEventTransportConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->bindService()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->waitForConnection()V

    .line 77
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    invoke-interface {v3, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;->initialize(Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    return v2

    :catch_0
    move-exception v0

    .line 81
    const-string v3, "Remote Exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    return v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    invoke-static {p2}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    .line 227
    const-string p1, "IntrusionDetectionEventTransportConnection"

    const-string p2, "connected to service"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 234
    monitor-enter p0

    const/4 p1, 0x0

    .line 235
    :try_start_0
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    .line 236
    const-string p1, "IntrusionDetectionEventTransportConnection"

    const-string v0, "disconnected from service"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 238
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 3

    .line 129
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    invoke-interface {v1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;->release(Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    :try_start_1
    const-string v1, "IntrusionDetectionEventTransportConnection"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->unbindService()V

    .line 136
    throw v0
.end method

.method public final unbindService()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    return-void
.end method

.method public final waitForConnection()V
    .locals 2

    .line 95
    monitor-enter p0

    .line 96
    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "IntrusionDetectionEventTransportConnection"

    const-string/jumbo v1, "waiting for connection to service..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 104
    :cond_0
    :try_start_2
    const-string v0, "IntrusionDetectionEventTransportConnection"

    const-string v1, "connected to service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
