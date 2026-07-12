.class public final Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;
.super Ljava/lang/Object;
.source "InlineSuggestionRendorInfoCallbackOnResultListener.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public final mInlineSuggestionsRequestConsumer:Ljava/util/function/Consumer;

.field public final mRequestIdCopy:I

.field public final mSessionWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;ILjava/util/function/Consumer;Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p2, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mRequestIdCopy:I

    .line 43
    iput-object p3, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mInlineSuggestionsRequestConsumer:Ljava/util/function/Consumer;

    .line 44
    iput-object p1, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mSessionWeakReference:Ljava/lang/ref/WeakReference;

    .line 45
    iput-object p4, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mSessionWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    if-nez v0, :cond_0

    .line 50
    const-string p0, "InlineSuggestionRendorInfoCallbackOnResultListener"

    const-string p1, "Session is null before trying to call onResult"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_1

    .line 55
    const-string p0, "InlineSuggestionRendorInfoCallbackOnResultListener"

    const-string p1, "Session is destroyed before trying to call onResult"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v3, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mInlineSuggestionsRequestConsumer:Ljava/util/function/Consumer;

    iget p0, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mRequestIdCopy:I

    .line 60
    invoke-virtual {v0, v4, p0}, Lcom/android/server/autofill/Session;->inlineSuggestionsRequestCacheDecorator(Ljava/util/function/Consumer;I)Ljava/util/function/Consumer;

    move-result-object p0

    .line 58
    invoke-virtual {v2, v3, p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 63
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
