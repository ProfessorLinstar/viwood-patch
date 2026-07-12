.class public final Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# instance fields
.field public mCurVisibleImeInputTarget:Landroid/os/IBinder;

.field public mHasVisibleImeLayeringOverlay:Z

.field public final mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

.field public mInputShown:Z

.field public mLastImeTargetWindow:Landroid/os/IBinder;

.field public final mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

.field public final mRequestWindowStateMap:Ljava/util/WeakHashMap;

.field public mRequestedImeScreenshot:Z

.field public mRequestedShowExplicitly:Z

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mShowForced:Z

.field public final mUserId:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 8

    .line 193
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 194
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 195
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 196
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerInternal;)V

    new-instance v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-direct {v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    .line 193
    invoke-direct/range {v1 .. v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;)V
    .locals 7

    .line 203
    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getUserManagerService()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getWmService()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    .line 204
    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getImeValidator()Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    move-result-object v4

    new-instance v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-direct {v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;-><init>()V

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    .line 203
    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;I)V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 226
    iput p6, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    .line 227
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 228
    iput-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 229
    iput-object p3, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 230
    iput-object p4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 231
    iput-object p5, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    return-void
.end method


# virtual methods
.method public canHideIme(Landroid/view/inputmethod/ImeTracker$Token;I)Z
    .locals 3

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 293
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p2, "Not hiding: explicit show not cancelled by non-explicit hide"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p2, 0x6

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v1

    .line 300
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    const/4 v0, 0x7

    if-eqz p0, :cond_2

    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_2

    .line 301
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p2, "Not hiding: forced show not cancelled by not-always hide"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v1

    .line 306
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public clearImeShowFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 345
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 346
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return-void
.end method

.method public computeImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)I
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 353
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    .line 354
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForVisibleBackgroundUserOnAutomotive(IILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result p2

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result p2

    .line 361
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 363
    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setImeHiddenByDisplayPolicy(Z)V

    return p2
.end method

.method public computeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;ZZ)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    .locals 8

    .line 449
    invoke-static {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmSoftInputModeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    .line 457
    invoke-static {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmSoftInputModeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I

    move-result v1

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x10

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 460
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 462
    :goto_1
    invoke-static {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmSoftInputModeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v5

    .line 471
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result v6

    const/4 v7, 0x7

    if-eqz v6, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->shouldRestoreImeVisibility(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 472
    sget-object p2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p3, "Will show input to restore visibility"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    invoke-static {p1, v4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    .line 477
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x17

    invoke-direct {p0, v7, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_3
    const/4 v6, 0x5

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    if-eq v0, v3, :cond_c

    const/4 v1, 0x4

    .line 481
    const-string v3, "ImeVisibilityStateComputer"

    if-eq v0, v1, :cond_6

    if-eq v0, v6, :cond_4

    goto/16 :goto_4

    .line 552
    :cond_4
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Window asks to always show input"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    .line 554
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 555
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x8

    invoke-direct {p0, v7, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    .line 559
    :cond_5
    const-string p2, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_c

    if-eqz p2, :cond_7

    .line 540
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Window asks to show input going forward"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    invoke-direct {p0, v7, v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    .line 545
    :cond_7
    const-string p2, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 509
    :cond_8
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 511
    invoke-static {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    goto :goto_4

    .line 483
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    const/4 v0, 0x6

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_3

    .line 485
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getWindowFlags()I

    move-result p2

    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 489
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Unspecified window will hide input"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    .line 494
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    .line 502
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Unspecified window will show input"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    invoke-direct {p0, v7, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    .line 566
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasImeFocusChanged()Z

    move-result p2

    if-nez p2, :cond_d

    .line 573
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isStartInputByGainFocus()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 574
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Same window without editor will hide input"

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x15

    invoke-direct {p0, v6, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    .line 580
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result p2

    if-nez p2, :cond_f

    iget-boolean p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-nez p2, :cond_e

    if-eqz p3, :cond_f

    .line 581
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isStartInputByGainFocus()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 582
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->shouldHideImeWhenNoEditorFocus()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 590
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p2, "Window without editor will hide input"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p2, p3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    invoke-static {p1, v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    .line 594
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x21

    invoke-direct {p0, v6, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 691
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRequestedShowExplicitly="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mShowForced="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeHiddenByDisplayPolicy="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isImeHiddenByDisplayPolicy()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 695
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInputShown="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mLastImeTargetWindow="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2

    const-wide p2, 0x1080000000aL

    .line 682
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p2, 0x1080000000bL

    .line 683
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 684
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 685
    invoke-virtual {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isA11yRequestNoSoftKeyboard()Z

    move-result p2

    const-wide v0, 0x10800000018L

    .line 684
    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p2, 0x1080000000cL

    .line 686
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;
    .locals 0

    .line 759
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    return-object p0
.end method

.method public getLastImeTargetWindow()Landroid/os/IBinder;
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    return-object p0
.end method

.method public getOrCreateWindowState(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .locals 6

    .line 394
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-nez p0, :cond_0

    .line 396
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIZZZ)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getShowFlagsForInputMethodServiceOnly()I
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 320
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 656
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    return p0
.end method

.method public getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    return-object p0
.end method

.method public getWindowTokenFrom(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 618
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 619
    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getRequestImeToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 623
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    .line 625
    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    return-object p0
.end method

.method public getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 631
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInputShown()Z
    .locals 0

    .line 661
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return p0
.end method

.method public onImeInputTargetVisibilityChanged(Landroid/os/IBinder;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 243
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    return-void

    .line 246
    :cond_0
    iget-boolean p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mHasVisibleImeLayeringOverlay:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    if-ne p2, p1, :cond_1

    .line 249
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x25

    invoke-interface {p2, v2, v0, v3, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    .line 251
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    new-instance v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    iget v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onApplyImeVisibilityFromComputerLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;I)V

    :cond_1
    const/4 p1, 0x0

    .line 254
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    return-void
.end method

.method public onImeShowFlags(Landroid/view/inputmethod/ImeTracker$Token;I)Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmA11yRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmImeHiddenByDisplayPolicy(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    and-int/lit8 p1, p2, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 276
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 277
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_2

    .line 279
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    :cond_2
    :goto_0
    return v0

    .line 267
    :cond_3
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onInteractiveChanged(Landroid/os/IBinder;Z)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    .locals 0

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 604
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 605
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 p1, 0x4

    const/16 p2, 0x22

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 607
    iget-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 608
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 609
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 p1, 0x8

    const/16 p2, 0x23

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public requestImeVisibility(Landroid/os/IBinder;Z)V
    .locals 2

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getOrCreateWindowState(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-static {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fgetmPendingA11yRequestingHideKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-static {v0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->-$$Nest$fputmPendingA11yRequestingHideKeyboard(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;Z)V

    .line 388
    :goto_0
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->setRequestImeToken(Landroid/os/IBinder;)V

    .line 389
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    return-void
.end method

.method public setHasVisibleImeLayeringOverlay(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mHasVisibleImeLayeringOverlay:Z

    return-void
.end method

.method public setInputShown(Z)V
    .locals 0

    .line 666
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return-void
.end method

.method public setLastImeTargetWindow(Landroid/os/IBinder;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    return-void
.end method

.method public setWindowState(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->hasEditorFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmToolType(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I

    .line 415
    invoke-static {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$fgetmRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->-$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V

    .line 417
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    return-void
.end method

.method public final setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V
    .locals 3

    .line 422
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v1, "setWindowStateInner, windowToken=%s, state=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldRestoreImeVisibility(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z
    .locals 4

    .line 641
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->getSoftInputModeState()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    return v3

    .line 650
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->shouldRestoreImeVisibility(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method
