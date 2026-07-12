.class public Lcom/android/server/backup/remote/FutureBackupCallback;
.super Landroid/app/backup/IBackupCallback$Stub;
.source "FutureBackupCallback.java"


# instance fields
.field public final mFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/backup/IBackupCallback$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/backup/remote/FutureBackupCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public operationComplete(J)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/server/backup/remote/FutureBackupCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, p2}, Lcom/android/server/backup/remote/RemoteResult;->of(J)Lcom/android/server/backup/remote/RemoteResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
