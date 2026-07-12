.class public final Lcom/android/server/inputmethod/IInputMethodManagerImpl;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "IInputMethodManagerImpl.java"


# instance fields
.field public final mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    return-void
.end method

.method public static create(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)Lcom/android/server/inputmethod/IInputMethodManagerImpl;
    .locals 1

    .line 243
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl;-><init>(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)V

    return-object v0
.end method


# virtual methods
.method public acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    return-void
.end method

.method public addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method public addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 512
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession_enforcePermission()V

    .line 514
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodListLegacy(II)Ljava/util/List;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result p0

    return p0
.end method

.method public getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    return-object p0
.end method

.method public hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result p0

    return p0
.end method

.method public hideSoftInputFromServerForTest()V
    .locals 0

    .line 316
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest_enforcePermission()V

    .line 318
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInputFromServerForTest()V

    return-void
.end method

.method public isImeTraceEnabled()Z
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isImeTraceEnabled()Z

    move-result p0

    return p0
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 0

    .line 374
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest_enforcePermission()V

    .line 376
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isInputMethodPickerShownForTest()Z

    move-result p0

    return p0
.end method

.method public isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result p0

    return p0
.end method

.method public onImeSwitchButtonClickFromSystem(I)V
    .locals 0

    .line 384
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->onImeSwitchButtonClickFromSystem_enforcePermission()V

    .line 386
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onImeSwitchButtonClickFromSystem(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 534
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V

    return-void
.end method

.method public prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeImeSurface(I)V
    .locals 0

    .line 429
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface_enforcePermission()V

    .line 431
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->removeImeSurface(I)V

    return-void
.end method

.method public removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    return-void
.end method

.method public reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    return-void
.end method

.method public setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    return-void
.end method

.method public setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 0

    .line 520
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest_enforcePermission()V

    .line 522
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    return-void
.end method

.method public shouldShowImeSwitcherButtonForTest()Z
    .locals 0

    .line 392
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldShowImeSwitcherButtonForTest_enforcePermission()V

    .line 394
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->shouldShowImeSwitcherButtonForTest()Z

    move-result p0

    return p0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    return-void
.end method

.method public showInputMethodPickerFromSystem(II)V
    .locals 0

    .line 366
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem_enforcePermission()V

    .line 368
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromSystem(II)V

    return-void
.end method

.method public showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p8}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result p0

    return p0
.end method

.method public startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    return-void
.end method

.method public startImeTrace()V
    .locals 0

    .line 452
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace_enforcePermission()V

    .line 454
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startImeTrace()V

    return-void
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface/range {p0 .. p13}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0
.end method

.method public startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 348
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    move/from16 v1, p1

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

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-interface/range {v0 .. v15}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V

    return-void
.end method

.method public startProtoDump([BILjava/lang/String;)V
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startProtoDump([BILjava/lang/String;)V

    return-void
.end method

.method public startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    return-void
.end method

.method public stopImeTrace()V
    .locals 0

    .line 460
    invoke-super {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace_enforcePermission()V

    .line 462
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->stopImeTrace()V

    return-void
.end method
