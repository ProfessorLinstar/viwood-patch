.class public final Lcom/android/server/inputmethod/ZeroJankProxy;
.super Ljava/lang/Object;
.source "ZeroJankProxy.java"

# interfaces
.implements Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;


# direct methods
.method public static synthetic $r8$lambda$2-twf30KVNWRngVw1aZPUvQ5GWM(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$acceptStylusHandwritingDelegationAsync$11(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5NCeGEQRBWokR2A7BJ1qFrtWRfc(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$showSoftInput$2(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JGNc0QCBlRh6POjKVGdx2uRA-Z8(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZI)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p14}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$startInputOrWindowGainedFocusAsync$6(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$NGfwIqt2TkCLOc8HU8vX-EC6LuU(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$hideSoftInput$5(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TA8Vd-sD1J1ATiZWjgM_VQy-ZNQ(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$showSoftInput$3(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UjtKovzrmi9qxLTiOWYxY50ugFI(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$startStylusHandwriting$8(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WUdtZ2tp1_iIb2R8Q6G3Q0hd1Kg(JLjava/lang/Runnable;)V
    .locals 2

    .line 113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 115
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 120
    :try_start_1
    const-string p1, "InputMethodManagerService"

    const-string p2, "Error in async IMMS call"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    throw p0
.end method

.method public static synthetic $r8$lambda$dCAVl6gJgiis2qp06kEUsj6XrcQ(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$startConnectionlessStylusHandwriting$9(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNYYVmwGhx_L8q2hS7pl-XHl0gM(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$acceptStylusHandwritingDelegation$10(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r10Pq3FDN1i-ox3lWCysTXCduXc(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$prepareStylusHandwritingDelegation$12(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rj4kFTQMxZfX9Hd6xXzDHyNQAPs(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$hideSoftInput$4(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rp2V_xQZve-BllSUG-MH3fgFE0s(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$addClient$1(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBdBMotnFDZmWkfXujx49NYMzrs(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/ZeroJankProxy;->lambda$showInputMethodPickerFromClient$7(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zwm76fC1ViRWLhoJV04CSZFLpTM(Lcom/android/server/inputmethod/ZeroJankProxy;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/inputmethod/ZeroJankProxy$Callback;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 98
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    .line 399
    :try_start_0
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 403
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 408
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 405
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 406
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 8

    .line 419
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 1

    .line 134
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodListLegacy(II)Ljava/util/List;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result p0

    return p0
.end method

.method public getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 9

    if-eqz p7, :cond_0

    .line 210
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/4 v0, 0x1

    return v0

    .line 214
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V

    new-instance v2, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    invoke-static {v0, v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 218
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromServerForTest()V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInputFromServerForTest()V

    return-void
.end method

.method public isImeTraceEnabled()Z
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isImeTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isInputMethodPickerShownForTest()Z

    move-result p0

    return p0
.end method

.method public isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$acceptStylusHandwritingDelegation$10(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$acceptStylusHandwritingDelegationAsync$11(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    return-void
.end method

.method public final synthetic lambda$addClient$1(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method public final synthetic lambda$hideSoftInput$4(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface/range {p0 .. p7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    return-void
.end method

.method public final synthetic lambda$hideSoftInput$5(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Ljava/lang/Boolean;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface/range {p0 .. p7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$prepareStylusHandwritingDelegation$12(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$showInputMethodPickerFromClient$7(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    return-void
.end method

.method public final synthetic lambda$showSoftInput$2(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface/range {p0 .. p8}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    return-void
.end method

.method public final synthetic lambda$showSoftInput$3(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Ljava/lang/Boolean;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface/range {p0 .. p8}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$startConnectionlessStylusHandwriting$9(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    return-void
.end method

.method public final synthetic lambda$startInputOrWindowGainedFocusAsync$6(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZI)V
    .locals 14

    .line 242
    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    invoke-interface/range {v0 .. v13}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    move/from16 v1, p14

    .line 248
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/inputmethod/ZeroJankProxy;->sendOnStartInputResult(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 250
    iget v0, v0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 251
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 252
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 253
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getClientStateLocked(Lcom/android/internal/inputmethod/IInputMethodClient;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v0

    if-eqz v0, :cond_0

    move/from16 v11, p11

    .line 255
    invoke-virtual {p0, v0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 258
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final synthetic lambda$startStylusHandwriting$8(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public final offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final offload(Ljava/lang/Runnable;)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final offloadInner(Ljava/lang/Runnable;)V
    .locals 3

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda13;-><init>(JLjava/lang/Runnable;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    throw p0
.end method

.method public onImeSwitchButtonClickFromSystem(I)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onImeSwitchButtonClickFromSystem(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface/range {p0 .. p7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V

    return-void
.end method

.method public prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 429
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public removeImeSurface(I)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->removeImeSurface(I)V

    return-void
.end method

.method public removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    return-void
.end method

.method public reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final sendOnStartInputResult(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 2

    .line 471
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy$Callback;->getClientStateLocked(Lcom/android/internal/inputmethod/IInputMethodClient;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 474
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 477
    :cond_0
    const-string p0, "InputMethodManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client that requested startInputOrWindowGainedFocus is no longer bound. InputBindResult: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for startInputSeq: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    return-void
.end method

.method public setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    return-void
.end method

.method public setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    return-void
.end method

.method public shouldShowImeSwitcherButtonForTest()Z
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->shouldShowImeSwitcherButtonForTest()Z

    move-result p0

    return p0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 1

    .line 282
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public showInputMethodPickerFromSystem(II)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromSystem(II)V

    return-void
.end method

.method public showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 10

    if-eqz p8, :cond_0

    .line 184
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V

    new-instance v2, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    invoke-static {v0, v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 200
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 8

    .line 386
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public startImeTrace()V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startImeTrace()V

    return-void
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V
    .locals 16

    .line 241
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZI)V

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public startProtoDump([BILjava/lang/String;)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startProtoDump([BILjava/lang/String;)V

    return-void
.end method

.method public startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 1

    .line 378
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offload(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public stopImeTrace()V
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->stopImeTrace()V

    return-void
.end method
