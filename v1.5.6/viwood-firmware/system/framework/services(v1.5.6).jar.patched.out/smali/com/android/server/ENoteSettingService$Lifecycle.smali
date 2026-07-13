.class public Lcom/android/server/ENoteSettingService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ENoteSettingService.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mLifecycleHandlerThread:Landroid/os/HandlerThread;

.field public mService:Lcom/android/server/ENoteSettingService;


# direct methods
.method public static synthetic $r8$lambda$34rA0i2EEL6303nuXiqsXSAEA9g(Lcom/android/server/ENoteSettingService$Lifecycle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/ENoteSettingService$Lifecycle;->handleBootCompleted()V

    return-void
.end method

.method public static synthetic $r8$lambda$O4kLzcL6Q7B2vwdlYAWvQoZQ1sk(Lcom/android/server/ENoteSettingService$Lifecycle;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENoteSettingService$Lifecycle;->handleThirdPartyAppsStart()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q5K_ZQno55foNXc9vleVNx3qis8(Lcom/android/server/ENoteSettingService$Lifecycle;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ENoteSettingService$Lifecycle;->handleLockSettingsReady()V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZzrPIa2RSVGfC-QsRJc0IzaJAA(Ljava/lang/Runnable;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing background task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENoteSettingService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 124
    iput-object p1, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mContext:Landroid/content/Context;

    return-void
.end method

.method private handleBootCompleted()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_google_play"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mService:Lcom/android/server/ENoteSettingService;

    invoke-virtual {v1, v0}, Lcom/android/server/ENoteSettingService;->enableGmsPlayStore(Z)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBootCompleted enableGms ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENoteSettingService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/android/server/ENoteSettingService$Lifecycle;->initializeUserBrightness()V

    .line 224
    invoke-virtual {p0}, Lcom/android/server/ENoteSettingService$Lifecycle;->setProvisioningStateIfNeed()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized ensureHandlerInitialized()V
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    const-string v0, "ENoteSettingService"

    const-string v1, "[ensureHandlerInitialized]"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mLifecycleHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LifecycleHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mLifecycleHandlerThread:Landroid/os/HandlerThread;

    .line 174
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 175
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mLifecycleHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final handleLockSettingsReady()V
    .locals 2

    .line 202
    const-string v0, "ENoteSettingService"

    const-string v1, "handleLockSettingsReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mService:Lcom/android/server/ENoteSettingService;

    invoke-static {p0}, Lcom/android/server/ENoteSettingService;->-$$Nest$minitSuggestionFixedGroups(Lcom/android/server/ENoteSettingService;)V

    return-void
.end method

.method public final handleThirdPartyAppsStart()V
    .locals 2

    .line 208
    const-string/jumbo p0, "persist.eink.last.mipimode"

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleThirdPartyAppsStart mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENoteSettingService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/enote/ENoteSetting;->setGlobalEpdMode(I)V

    return-void
.end method

.method public final initializeUserBrightness()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_cold_from_user"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 232
    const-string v3, "ENoteSettingService"

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mService:Lcom/android/server/ENoteSettingService;

    invoke-virtual {v0, v4}, Lcom/android/server/ENoteSettingService;->getBrightness(I)I

    move-result v0

    .line 234
    iget-object v2, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mService:Lcom/android/server/ENoteSettingService;

    invoke-virtual {p0, v4, v0}, Lcom/android/server/ENoteSettingService;->setBrightness(II)V

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persisted initial brightness: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mService:Lcom/android/server/ENoteSettingService;

    invoke-virtual {p0, v4, v0}, Lcom/android/server/ENoteSettingService;->setBrightness(II)V

    .line 241
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restored user brightness: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase() # phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "init.svc.wisky_wac_flash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "init.svc.wisky_wac_flash"

    .line 147
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "ENoteSettingService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x258

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance p1, Lcom/android/server/ENoteSettingService$Lifecycle$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/ENoteSettingService$Lifecycle$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ENoteSettingService$Lifecycle;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ENoteSettingService$Lifecycle;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/ENoteSettingService$Lifecycle;->stopHandlerThread()V

    return-void

    .line 156
    :cond_1
    new-instance p1, Lcom/android/server/ENoteSettingService$Lifecycle$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/ENoteSettingService$Lifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ENoteSettingService$Lifecycle;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ENoteSettingService$Lifecycle;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ENoteSettingService$Lifecycle;->ensureHandlerInitialized()V

    .line 151
    new-instance p1, Lcom/android/server/ENoteSettingService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/ENoteSettingService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ENoteSettingService$Lifecycle;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ENoteSettingService$Lifecycle;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 129
    const-string v0, "ENoteSettingService"

    const-string v1, "ENoteSettingService onStart!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Lcom/android/server/ENoteSettingService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ENoteSettingService;-><init>(Landroid/content/Context;Lcom/android/server/ENoteSettingService-IA;)V

    iput-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mService:Lcom/android/server/ENoteSettingService;

    .line 131
    new-instance v1, Lcom/android/server/ENoteSettingService$LocalServiceImpl;

    invoke-direct {v1, v0}, Lcom/android/server/ENoteSettingService$LocalServiceImpl;-><init>(Lcom/android/server/ENoteSettingService;)V

    const-class v0, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 133
    const-string v0, "ENoteSetting"

    iget-object v1, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mService:Lcom/android/server/ENoteSettingService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final postBackgroundTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 191
    const-string p0, "ENoteSettingService"

    const-string p1, "Handler not initialized, skipping task"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_0
    new-instance v0, Lcom/android/server/ENoteSettingService$Lifecycle$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/ENoteSettingService$Lifecycle$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setProvisioningStateIfNeed()V
    .locals 3

    .line 246
    const-string v0, "ENoteSettingService"

    const-string v1, "[setProvisioningStateIfNeed]"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "eink_user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mService:Lcom/android/server/ENoteSettingService;

    invoke-virtual {v0}, Lcom/android/server/ENoteSettingService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object p0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_setup_complete"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized stopHandlerThread()V
    .locals 2

    monitor-enter p0

    .line 180
    :try_start_0
    const-string v0, "ENoteSettingService"

    const-string v1, "[stopHandlerThread]"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mLifecycleHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/android/server/ENoteSettingService$Lifecycle;->mLifecycleHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
