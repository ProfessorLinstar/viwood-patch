.class public final Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;
.source "AccessibilityServiceConnection.java"


# instance fields
.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;-><init>()V

    .line 109
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;->mUserId:I

    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 5

    .line 115
    const-string v0, "ASC.sessionCreated"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 118
    :try_start_0
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;->mUserId:I

    .line 119
    invoke-virtual {v0, p2, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 121
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw p0
.end method
