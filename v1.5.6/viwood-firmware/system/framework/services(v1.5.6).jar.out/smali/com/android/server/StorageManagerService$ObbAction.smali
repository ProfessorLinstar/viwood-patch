.class public abstract Lcom/android/server/StorageManagerService$ObbAction;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# instance fields
.field public mObbState:Lcom/android/server/StorageManagerService$ObbState;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 0

    .line 4444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4445
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V
    .locals 0

    .line 4452
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleExecute()V
    :try_end_0
    .catch Lcom/android/server/StorageManagerService$ObbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4454
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    return-void
.end method

.method public abstract handleExecute()V
.end method

.method public notifyObbStateChange(I)V
    .locals 2

    .line 4466
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4471
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v0, v1, p0, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4473
    :catch_0
    const-string p0, "StorageManagerService"

    const-string p1, "StorageEventListener went away while calling onObbStateChanged"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V
    .locals 1

    .line 4461
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4462
    iget p1, p1, Lcom/android/server/StorageManagerService$ObbException;->status:I

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V

    return-void
.end method
