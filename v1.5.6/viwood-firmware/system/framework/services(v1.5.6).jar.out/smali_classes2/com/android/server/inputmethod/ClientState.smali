.class public final Lcom/android/server/inputmethod/ClientState;
.super Ljava/lang/Object;
.source "ClientState.java"


# instance fields
.field public final mAccessibilitySessions:Landroid/util/SparseArray;

.field public final mBinding:Landroid/view/inputmethod/InputBinding;

.field public final mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final mClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field public final mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final mPid:I

.field public final mSelfReportedDisplayId:I

.field public mSessionRequested:Z

.field public mSessionRequestedForAccessibility:Z

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;IIILandroid/os/IBinder$DeathRecipient;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 60
    iput-object p1, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 61
    iput-object p2, p0, Lcom/android/server/inputmethod/ClientState;->mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 62
    iput p3, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 63
    iput p4, p0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 64
    iput p5, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 65
    new-instance p1, Landroid/view/inputmethod/InputBinding;

    const/4 p5, 0x0

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p1, p5, p2, p3, p4}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V

    iput-object p1, p0, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    .line 67
    iput-object p6, p0, Lcom/android/server/inputmethod/ClientState;->mClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSelfReportedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
