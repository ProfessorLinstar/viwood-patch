.class public Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public mRequestAugmentedAutofill:Ljava/util/function/Consumer;

.field public mSessionWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;)V
    .locals 1

    .line 6582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6583
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    .line 6584
    iput-object p2, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 6585
    iput-object p3, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mRequestAugmentedAutofill:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 3

    .line 6590
    iget-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 6592
    const-string v1, "AugmentedAutofillInlineSuggestionRendererOnResultListener:"

    invoke-static {v0, v1}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 6596
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6597
    :try_start_0
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v2, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    iget-object p0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mRequestAugmentedAutofill:Ljava/util/function/Consumer;

    invoke-virtual {v0, v2, p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 6599
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
