.class public Lcom/android/server/inputmethod/InputMethodBindingController$1;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 357
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmAutofillController(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/AutofillSuggestionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->invalidateAutofillSession()V

    .line 359
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 362
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 369
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 370
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->-$$Nest$fgetmAutofillController(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/AutofillSuggestionsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->invalidateAutofillSession()V

    .line 371
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
