.class public Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    .line 364
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 0

    .line 372
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    .line 356
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public hideInputMethod(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public maybeFinishStylusHandwriting()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onImeParentChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSwitchKeyboardLayoutShortcut(IILandroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public removeImeSurface(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setHasVisibleImeLayeringOverlay(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setInteractive(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;II)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;II)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public unbindAccessibilityFromCurrentClient(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateImeWindowStatus(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateShouldShowImeSwitcher(II)V
    .locals 0

    .line 0
    return-void
.end method
