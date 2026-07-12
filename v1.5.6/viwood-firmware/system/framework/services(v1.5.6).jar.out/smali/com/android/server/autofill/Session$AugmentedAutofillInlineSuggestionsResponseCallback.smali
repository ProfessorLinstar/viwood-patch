.class public Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public mSessionWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 1

    .line 6642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6643
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;
    .locals 1

    .line 6648
    iget-object p0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/Session;

    .line 6650
    const-string v0, "AugmentedAutofillInlineSuggestionsResponseCallback:"

    invoke-static {p0, v0}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6651
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 6654
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6655
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6656
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6637
    check-cast p1, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->apply(Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
