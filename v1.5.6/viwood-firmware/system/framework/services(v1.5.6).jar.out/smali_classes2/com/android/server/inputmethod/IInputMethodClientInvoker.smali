.class public final Lcom/android/server/inputmethod/IInputMethodClientInvoker;
.super Ljava/lang/Object;
.source "IInputMethodClientInvoker.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mIsProxy:Z

.field public final mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;


# direct methods
.method public static synthetic $r8$lambda$-Kdju1_EXd9J6Azs1wMip_57lL0(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onUnbindMethod$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$4vBH5dzq5LhwPcmgjldbMQdWn6I(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setActive$5(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8K2ipAv29I48Hvp3wxVM87DxhD8(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onStartInputResult$1(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AoIlvIX3rP6SUO6OlBC_XdXM6X4(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setImeTraceEnabled$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OuPksNuQ9tCWWn7A6QY0aRiqbeI(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onBindMethod$0(Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T7Gu5ioQQZTjloGBga4SNiKv3W4(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$reportFullscreenMode$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TqfpVjKrgSh4f5zBJva6YHyPOus(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onUnbindAccessibilityService$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$VE1DYoKcKG6RshAekspt91ACmH4(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setImeVisibility$7(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a3G7cYid-zOg_bx0EwyiClrvHT8(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$scheduleStartInputIfNecessary$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dMZI-RMrMXtaM_w1zOlvHaqwIis(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$setInteractive$6(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0530uO66e6JqhlHFYiF7K-M9KM(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->lambda$onBindAccessibilityService$2(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 78
    iput-boolean p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 79
    iput-object p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static create(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/Handler;)Lcom/android/server/inputmethod/IInputMethodClientInvoker;
    .locals 2

    .line 64
    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    .line 65
    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V

    return-object v1
.end method

.method public static getCallerMethodName()Ljava/lang/String;
    .locals 3

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 90
    array-length v1, v0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 91
    const-string v0, "<bottom of call stack>"

    return-object v0

    .line 93
    :cond_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    .line 98
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC failed at IInputMethodClientInvoker#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->getCallerMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onBindAccessibilityService$2(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method public final synthetic lambda$onBindMethod$0(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void
.end method

.method public final synthetic lambda$onStartInputResult$1(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void
.end method

.method public final synthetic lambda$onUnbindAccessibilityService$4(II)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindAccessibilityServiceInternal(II)V

    return-void
.end method

.method public final synthetic lambda$onUnbindMethod$3(II)V
    .locals 0

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethodInternal(II)V

    return-void
.end method

.method public final synthetic lambda$reportFullscreenMode$9(Z)V
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenModeInternal(Z)V

    return-void
.end method

.method public final synthetic lambda$scheduleStartInputIfNecessary$8(Z)V
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessaryInternal(Z)V

    return-void
.end method

.method public final synthetic lambda$setActive$5(ZZ)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActiveInternal(ZZ)V

    return-void
.end method

.method public final synthetic lambda$setImeTraceEnabled$10(Z)V
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabledInternal(Z)V

    return-void
.end method

.method public final synthetic lambda$setImeVisibility$7(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibilityInternal(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public final synthetic lambda$setInteractive$6(ZZ)V
    .locals 0

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractiveInternal(ZZ)V

    return-void
.end method

.method public onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 165
    :try_start_1
    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    :cond_0
    return-void

    .line 169
    :goto_0
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_1

    .line 170
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 172
    :cond_1
    throw p2
.end method

.method public onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    :try_start_1
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    :cond_0
    return-void

    .line 121
    :goto_0
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 124
    :cond_1
    throw v0
.end method

.method public onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 141
    :try_start_1
    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    :cond_0
    return-void

    .line 145
    :goto_0
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz p0, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 148
    :cond_1
    throw p2
.end method

.method public onUnbindAccessibilityService(II)V
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindAccessibilityServiceInternal(II)V

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUnbindAccessibilityServiceInternal(II)V
    .locals 0

    .line 205
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindAccessibilityService(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 207
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method public onUnbindMethod(II)V
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethodInternal(II)V

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUnbindMethodInternal(II)V
    .locals 0

    .line 187
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 189
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 2

    .line 287
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenModeInternal(Z)V

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final reportFullscreenModeInternal(Z)V
    .locals 0

    .line 297
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 299
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method public scheduleStartInputIfNecessary(Z)V
    .locals 2

    .line 269
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessaryInternal(Z)V

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleStartInputIfNecessaryInternal(Z)V
    .locals 0

    .line 279
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 281
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method public setActive(ZZ)V
    .locals 2

    .line 213
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActiveInternal(ZZ)V

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setActiveInternal(ZZ)V
    .locals 0

    .line 223
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setActive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 225
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method public setImeTraceEnabled(Z)V
    .locals 2

    .line 305
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabledInternal(Z)V

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setImeTraceEnabledInternal(Z)V
    .locals 0

    .line 315
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 317
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method public setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    .line 249
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibilityInternal(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setImeVisibilityInternal(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    const/16 v0, 0x4e

    .line 259
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 260
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 262
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 263
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public setInteractive(ZZ)V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractiveInternal(ZZ)V

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setInteractiveInternal(ZZ)V
    .locals 0

    .line 241
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setInteractive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 243
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method
