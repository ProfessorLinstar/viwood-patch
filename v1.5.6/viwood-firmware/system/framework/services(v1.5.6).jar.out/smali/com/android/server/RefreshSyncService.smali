.class public Lcom/android/server/RefreshSyncService;
.super Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.source "RefreshSyncService.java"


# instance fields
.field public handler:Landroid/os/Handler;

.field public final handlerThread:Landroid/os/HandlerThread;

.field public mContext:Landroid/content/Context;

.field public mENoteSetting:Landroid/os/enote/ENoteSetting;

.field public mLastRefreshInterval:I


# direct methods
.method public static synthetic $r8$lambda$_URhYaR2147e2jaEbn5g_U2vgKo(Lcom/android/server/RefreshSyncService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/RefreshSyncService;->lambda$registerProxyService$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/android/server/RefreshSyncService;->mLastRefreshInterval:I

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RefreshSyncServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/RefreshSyncService;->handlerThread:Landroid/os/HandlerThread;

    .line 74
    iput-object p1, p0, Lcom/android/server/RefreshSyncService;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/RefreshSyncService;->handler:Landroid/os/Handler;

    .line 77
    invoke-static {p1}, Landroid/os/enote/ENoteSetting;->getInstance(Landroid/content/Context;)Landroid/os/enote/ENoteSetting;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/RefreshSyncService;->mENoteSetting:Landroid/os/enote/ENoteSetting;

    return-void
.end method


# virtual methods
.method public bindInput()V
    .locals 0

    .line 0
    return-void
.end method

.method public clearAccessibilityCache()V
    .locals 0

    .line 0
    return-void
.end method

.method public createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final delayRefreshIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 268
    const-string v0, "RefreshSyncService"

    if-nez p1, :cond_0

    .line 269
    const-string p0, "delayRefreshIfNeed packageName is null, then return!"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/RefreshSyncService;->getRefreshInterval(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 275
    iget v2, p0, Lcom/android/server/RefreshSyncService;->mLastRefreshInterval:I

    if-eq v2, v1, :cond_1

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delayRefreshIfNeed packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " className="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " refreshInterval="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mLastRefreshInterval="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/RefreshSyncService;->mLastRefreshInterval:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p1, p0, Lcom/android/server/RefreshSyncService;->mENoteSetting:Landroid/os/enote/ENoteSetting;

    invoke-virtual {p1, v1}, Landroid/os/enote/ENoteSetting;->setEinkRefreshInterval(I)I

    .line 279
    iput v1, p0, Lcom/android/server/RefreshSyncService;->mLastRefreshInterval:I

    :cond_1
    return-void
.end method

.method public final getRefreshInterval(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 292
    const-string p0, "com.amazon.kindle"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x190

    const/16 v1, 0x258

    if-eqz p0, :cond_1

    .line 294
    const-string p0, "com.amazon.kcp.reader.StandAlonePdfReaderActivity"

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    .line 299
    :cond_1
    const-string p0, "com.tencent.weread"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.tencent.weread.ReaderFragmentActivity"

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 301
    :cond_2
    const-string/jumbo p0, "org.readera"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "org.readera.read.ReadActivity"

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final handleWindowFocusChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/server/RefreshSyncService;->delayRefreshIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .locals 0

    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "initialized with connection ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RefreshSyncService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$registerProxyService$0()V
    .locals 8

    .line 83
    const-string v0, "accessibility_enabled"

    const-string v1, "RefreshSyncService"

    const-string v2, "enabled_accessibility_services"

    :try_start_0
    iget-object v3, p0, Lcom/android/server/RefreshSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    .line 88
    invoke-static {v3, v2, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const-string v6, "com.viwoods.refresh.service/.RefreshSyncProxyService"

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {v3, v2, v5, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 102
    const-string v2, "RefreshSync: Appended to existing services."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 104
    :cond_1
    const-string v2, "RefreshSync: Service already registered, skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    invoke-static {v3, v2, v6, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 107
    :goto_1
    invoke-static {v3, v0, v4, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    .line 110
    invoke-static {v3, v0, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/RefreshSyncService;->shutdownHandlerThread()V

    return-void

    .line 114
    :goto_2
    :try_start_2
    const-string v2, "Error triggering registration"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-virtual {p0}, Lcom/android/server/RefreshSyncService;->shutdownHandlerThread()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lcom/android/server/RefreshSyncService;->shutdownHandlerThread()V

    .line 117
    throw v0
.end method

.method public onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAccessibilityButtonClicked(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 159
    const-string p0, "RefreshSyncService"

    const-string p1, "AccessibilityEvent is NULL"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 166
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/RefreshSyncService;->handleWindowFocusChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFingerprintCapturingGesturesChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFingerprintGesture(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPerformGestureResult(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSystemActionsChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onTouchStateChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerProxyService()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/server/RefreshSyncService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/RefreshSyncService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/RefreshSyncService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/RefreshSyncService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public final shutdownHandlerThread()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/RefreshSyncService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/server/RefreshSyncService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public unbindInput()V
    .locals 0

    .line 0
    return-void
.end method
