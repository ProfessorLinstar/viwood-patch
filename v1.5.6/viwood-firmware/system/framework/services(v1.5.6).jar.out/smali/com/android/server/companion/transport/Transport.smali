.class public abstract Lcom/android/server/companion/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAssociationId:I

.field public final mContext:Landroid/content/Context;

.field public final mFd:Landroid/os/ParcelFileDescriptor;

.field public final mListeners:Landroid/util/SparseArray;

.field public final mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

.field public final mPendingRequests:Landroid/util/SparseArray;

.field public final mRemoteIn:Ljava/io/InputStream;

.field public final mRemoteOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    iput p1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 98
    iput-object p2, p0, Lcom/android/server/companion/transport/Transport;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 99
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 100
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 101
    iput-object p3, p0, Lcom/android/server/companion/transport/Transport;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isOneway(I)Z
    .locals 1

    .line 0
    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x43000000    # 128.0f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRequest(I)Z
    .locals 1

    .line 0
    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x63000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isResponse(I)Z
    .locals 1

    .line 0
    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    const/high16 v0, 0x33000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 114
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final callback(I[B)V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 295
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const-string v0, "CDM_CompanionTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is received from associationId "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sending data length "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to the listener(s)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/IOnMessageReceivedListener;

    .line 301
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/companion/transport/Transport;->getAssociationId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/companion/IOnMessageReceivedListener;->onMessageReceived(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    return-void

    .line 295
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p0}, Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;->onClosed(Lcom/android/server/companion/transport/Transport;)V

    :cond_0
    return-void
.end method

.method public getAssociationId()I
    .locals 0

    .line 119
    iget p0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    return p0
.end method

.method public final handleMessage(II[B)V
    .locals 3

    .line 221
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    const-string v1, "CDM_CompanionTransport"

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sequence "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from association "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isOneway(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->processOneway(I[B)V

    return-void

    .line 229
    :cond_1
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->processRequest(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to respond to 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 235
    :cond_2
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isResponse(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->processResponse(II[B)V

    return-void

    .line 238
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown message 0x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final processOneway(I[B)V
    .locals 1

    const v0, 0x43708287

    if-eq p1, v0, :cond_0

    const v0, 0x43807378

    if-eq p1, v0, :cond_0

    const v0, 0x43847987

    if-eq p1, v0, :cond_0

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring unknown message 0x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionTransport"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    return-void
.end method

.method public final processRequest(II[B)V
    .locals 3

    const v0, 0x33706573

    .line 259
    const-string v1, "CDM_CompanionTransport"

    const v2, 0x33838567

    sparse-switch p1, :sswitch_data_0

    .line 281
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request 0x"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    .line 272
    :sswitch_0
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 273
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 275
    :catch_0
    const-string p1, "Failed to restore permissions"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    .line 261
    :sswitch_1
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    .line 266
    :sswitch_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 267
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x63678883 -> :sswitch_2
        0x63807378 -> :sswitch_1
        0x63826983 -> :sswitch_0
        0x63827765 -> :sswitch_2
    .end sparse-switch
.end method

.method public final processResponse(II[B)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    .line 311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 313
    const-string p0, "CDM_CompanionTransport"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring unknown sequence "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const p2, 0x33706573

    if-eq p1, p2, :cond_2

    const p2, 0x33838567

    if-eq p1, p2, :cond_1

    .line 327
    const-string p0, "CDM_CompanionTransport"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring unknown response 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 319
    :cond_1
    invoke-virtual {p0, p3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 323
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Remote failure"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 311
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestForResponse(I[B)Ljava/util/concurrent/Future;
    .locals 4

    .line 186
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Requesting for response"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 188
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 189
    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v2

    .line 190
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 196
    iget-object p2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter p2

    .line 197
    :try_start_2
    iget-object p0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 198
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v1

    :catchall_0
    move-exception p0

    .line 198
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 191
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final sendAndForget(I[B)Ljava/util/concurrent/Future;
    .locals 2

    .line 206
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Sending a one-way message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/4 v1, -0x1

    .line 210
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    const/4 p0, 0x0

    .line 211
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public sendMessage(I[B)Ljava/util/concurrent/Future;
    .locals 2

    .line 160
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 161
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isOneway(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->sendAndForget(I[B)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->requestForResponse(I[B)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 166
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send message 0x"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionTransport"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The message being sent must be either a one-way or a request."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public abstract sendMessage(II[B)V
.end method

.method public setOnTransportClosedListener(Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
