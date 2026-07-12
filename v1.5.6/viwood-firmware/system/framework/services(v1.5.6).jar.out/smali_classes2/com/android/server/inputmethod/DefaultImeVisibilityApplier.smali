.class public final Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;
.super Ljava/lang/Object;
.source "DefaultImeVisibilityApplier.java"


# instance fields
.field public final mImeTargetVisibilityPolicy:Lcom/android/server/wm/ImeTargetVisibilityPolicy;

.field public mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 73
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 74
    const-class p1, Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    return-void
.end method


# virtual methods
.method public applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V
    .locals 3

    .line 170
    iget-object p4, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p4, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p4

    .line 171
    iget-object v0, p4, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 172
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    .line 234
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid IME visibility state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :pswitch_0
    invoke-virtual {p0, v0, p5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->removeImeScreenshot(II)Z

    return-void

    .line 220
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v1, p4, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    .line 209
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v2, p4, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    .line 201
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v2, p4, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    .line 228
    :pswitch_4
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->showImeScreenshot(Landroid/os/IBinder;II)Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performHideIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;Landroid/os/ResultReceiver;II)V
    .locals 7

    .line 129
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 130
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 131
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 139
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, p1, p3, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 137
    const-string v4, "Calling %s.hideSoftInput(0, %s, %s) for reason: %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 142
    sget-boolean p3, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "TOKEN_NONE"

    :goto_0
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 145
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 147
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, v1, v2, v0}, [Ljava/lang/Object;

    move-result-object p3

    const/16 v0, 0x7d02

    .line 143
    invoke-static {v0, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v5, p2

    move v4, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_2
    return-void
.end method

.method public performShowIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 92
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 93
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 95
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 97
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 98
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, p1, v3, p4, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 95
    const-string v4, "Calling %s.showSoftInput(%s, %s, %s) for reason: %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 101
    sget-boolean p3, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "TOKEN_NONE"

    :goto_0
    iget-object p4, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p4, p4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 104
    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 105
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 106
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p4, v1, v0}, [Ljava/lang/Object;

    move-result-object p3

    const/16 p4, 0x7d01

    .line 102
    invoke-static {p4, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x1

    move-object v2, p1

    move-object v4, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_2
    return-void
.end method

.method public removeImeScreenshot(II)Z
    .locals 7

    .line 266
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ImeTargetVisibilityPolicy;->removeImeScreenshot(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showImeScreenshot(Landroid/os/IBinder;II)Z
    .locals 6

    .line 249
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ImeTargetVisibilityPolicy;->showImeScreenshot(Landroid/os/IBinder;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
