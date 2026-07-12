.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController;
.super Ljava/lang/Object;
.source "AutofillSuggestionsController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AutofillSuggestionsController"


# instance fields
.field public final mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

.field public mCurHostInputToken:Landroid/os/IBinder;

.field public mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

.field public mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBindingController(Lcom/android/server/inputmethod/AutofillSuggestionsController;)Lcom/android/server/inputmethod/InputMethodBindingController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurHostInputToken(Lcom/android/server/inputmethod/AutofillSuggestionsController;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mCurHostInputToken:Landroid/os/IBinder;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    return-void
.end method

.method public static isInlineSuggestionsEnabled(Landroid/view/inputmethod/InputMethodInfo;Z)Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isInlineSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsInlineSuggestionsWithTouchExploration()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final clearPendingInlineSuggestionsRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    return-void
.end method

.method public getCurHostInputToken()Landroid/os/IBinder;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mCurHostInputToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public invalidateAutofillSession()V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    if-eqz p0, :cond_0

    .line 167
    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V

    :cond_0
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Z)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->clearPendingInlineSuggestionsRequest()V

    .line 102
    iput-object p2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 105
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 107
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v1

    .line 106
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    invoke-static {v0, p3}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->isInlineSuggestionsEnabled(Landroid/view/inputmethod/InputMethodInfo;Z)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance p3, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 114
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;-><init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 115
    iget-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->performOnCreateInlineSuggestionsRequest()V

    :cond_1
    return-void

    .line 109
    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V

    return-void
.end method

.method public onResetSystemUi()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mCurHostInputToken:Landroid/os/IBinder;

    return-void
.end method

.method public performOnCreateInlineSuggestionsRequest()V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v1, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;

    iget-object v2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    iget-object v3, v2, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    iget-object v4, v2, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 142
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v5

    iget-object v2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 143
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;-><init>(Lcom/android/server/inputmethod/AutofillSuggestionsController;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 144
    iget-object p0, v2, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 147
    sget-object p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->TAG:Ljava/lang/String;

    const-string v0, "No IME connected! Abandoning inline suggestions creation request."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->clearPendingInlineSuggestionsRequest()V

    return-void
.end method
