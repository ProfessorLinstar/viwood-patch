.class public Lcom/android/server/autofill/InlineSuggestionRequestConsumer;
.super Ljava/lang/Object;
.source "InlineSuggestionRequestConsumer.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

.field public final mViewStateWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p2, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mViewStateWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 42
    iget-object p0, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mViewStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    .line 43
    const-string v1, "InlineSuggestionRequestConsumer"

    if-nez v0, :cond_0

    .line 44
    const-string p0, "assistDataReceiver is null when accepting new inline suggestionrequests"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 50
    const-string/jumbo p0, "view state is null when accepting new inline suggestion requests"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_1
    invoke-virtual {v0, p1, p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->handleInlineSuggestionRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ViewState;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->accept(Landroid/view/inputmethod/InlineSuggestionsRequest;)V

    return-void
.end method
