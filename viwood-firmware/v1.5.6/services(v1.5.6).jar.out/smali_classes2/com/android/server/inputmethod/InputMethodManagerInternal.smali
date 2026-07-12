.class public abstract Lcom/android/server/inputmethod/InputMethodManagerInternal;
.super Ljava/lang/Object;
.source "InputMethodManagerInternal.java"


# static fields
.field public static final NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 339
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .locals 1

    .line 467
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 468
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_0

    return-object v0

    .line 469
    :cond_0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    return-object v0
.end method


# virtual methods
.method public abstract getEnabledInputMethodListAsUser(I)Ljava/util/List;
.end method

.method public abstract getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZI)Ljava/util/List;
.end method

.method public abstract getInputMethodListAsUser(I)Ljava/util/List;
.end method

.method public abstract hideInputMethod(II)V
.end method

.method public abstract maybeFinishStylusHandwriting()V
.end method

.method public abstract onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;)V
.end method

.method public abstract onImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZI)V
.end method

.method public abstract onImeParentChanged(I)V
.end method

.method public abstract onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
.end method

.method public abstract onSwitchKeyboardLayoutShortcut(IILandroid/os/IBinder;)V
.end method

.method public abstract removeImeSurface(I)V
.end method

.method public abstract reportImeControl(Landroid/os/IBinder;)V
.end method

.method public abstract setHasVisibleImeLayeringOverlay(ZI)V
.end method

.method public abstract setInputMethodEnabled(Ljava/lang/String;ZI)Z
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, -0x1

    .line 143
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->switchToInputMethod(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public abstract switchToInputMethod(Ljava/lang/String;II)Z
.end method

.method public abstract transferTouchFocusToImeWindow(Landroid/os/IBinder;II)Z
.end method

.method public abstract unbindAccessibilityFromCurrentClient(II)V
.end method

.method public abstract updateImeWindowStatus(ZI)V
.end method

.method public abstract updateShouldShowImeSwitcher(II)V
.end method
