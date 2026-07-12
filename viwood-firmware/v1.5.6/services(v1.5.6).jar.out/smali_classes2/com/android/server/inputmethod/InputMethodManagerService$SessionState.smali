.class public Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# instance fields
.field public mChannel:Landroid/view/InputChannel;

.field public final mClient:Lcom/android/server/inputmethod/ClientState;

.field public final mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mClient:Lcom/android/server/inputmethod/ClientState;

    .line 523
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 524
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 525
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    .line 526
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mUserId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionState{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mClient:Lcom/android/server/inputmethod/ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mClient:Lcom/android/server/inputmethod/ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 513
    invoke-static {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->getBinderIdentityHashCode(Lcom/android/server/inputmethod/IInputMethodInvoker;)I

    move-result v1

    .line 512
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 514
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
