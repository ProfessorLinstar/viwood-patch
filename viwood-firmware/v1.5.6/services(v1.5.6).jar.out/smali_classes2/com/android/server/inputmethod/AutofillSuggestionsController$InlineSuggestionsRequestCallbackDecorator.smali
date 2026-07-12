.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;
.super Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;
.source "AutofillSuggestionsController.java"


# instance fields
.field public final mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

.field public final mImeDisplayId:I

.field public final mImePackageName:Ljava/lang/String;

.field public final mImeToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/AutofillSuggestionsController;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 186
    iput-object p3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    .line 187
    iput p4, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeDisplayId:I

    .line 188
    iput-object p5, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeDisplayId:I

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->setHostDisplayId(I)V

    .line 207
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-static {v1}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->-$$Nest$fgetmBindingController(Lcom/android/server/inputmethod/AutofillSuggestionsController;)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeToken:Landroid/os/IBinder;

    if-ne v2, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->-$$Nest$fputmCurHostInputToken(Lcom/android/server/inputmethod/AutofillSuggestionsController;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 212
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V

    return-void

    .line 212
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 201
    :cond_1
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host package name in the provide request=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] doesn\'t match the IME package name=["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onInlineSuggestionsSessionInvalidated()V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V

    return-void
.end method

.method public onInlineSuggestionsUnsupported()V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V

    return-void
.end method

.method public onInputMethodFinishInput()V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodFinishInput()V

    return-void
.end method

.method public onInputMethodFinishInputView()V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodFinishInputView()V

    return-void
.end method

.method public onInputMethodShowInputRequested(Z)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodShowInputRequested(Z)V

    return-void
.end method

.method public onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public onInputMethodStartInputView()V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInputMethodStartInputView()V

    return-void
.end method
