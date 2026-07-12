.class public Lcom/android/server/inputmethod/InputMethodBindingController$2;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 382
    const-string v0, "IMMS.onServiceConnected"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 385
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethod;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->create(Lcom/android/internal/inputmethod/IInputMethod;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/IInputMethodInvoker;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;->updateCurrentMethodUid()V

    .line 387
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    .line 388
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Service connected without a token!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 390
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 391
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p1

    .line 395
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSelectedMethodId(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    .line 397
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z

    move-result p2

    .line 398
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result v3

    if-eq p2, v3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 399
    :goto_0
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V

    if-eqz p2, :cond_2

    .line 401
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    .line 403
    :cond_2
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmSupportsConnectionlessStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z

    move-result p2

    .line 405
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result v3

    if-eq p2, v3, :cond_3

    .line 407
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 408
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmSupportsConnectionlessStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V

    .line 410
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    .line 412
    :cond_3
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1, p2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 414
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 415
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reRequestCurrentClientSessionLocked(I)V

    .line 416
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmAutofillController(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/AutofillSuggestionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->performOnCreateInlineSuggestionsRequest()V

    .line 422
    :cond_4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 426
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmLatchForTesting(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 427
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmLatchForTesting(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_5
    return-void

    .line 423
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 457
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;J)V

    .line 466
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$mclearCurMethodAndSessions(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 467
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 468
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setInputShown(Z)V

    .line 469
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result p0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 471
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateCurrentMethodUid()V
    .locals 5

    .line 433
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_0

    .line 437
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get UID for package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V

    return-void

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V

    return-void
.end method
