.class public Lcom/android/server/inputmethod/InputMethodManagerService$6;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic val$isImeTraceEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .locals 0

    .line 6823
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$6;->val$isImeTraceEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 6828
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$6;->val$isImeTraceEnabled:Z

    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 6823
    check-cast p1, Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$6;->accept(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method
