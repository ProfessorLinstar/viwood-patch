.class public Lcom/android/server/companion/transport/CompanionTransportManager;
.super Ljava/lang/Object;
.source "CompanionTransportManager.java"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mMessageListeners:Landroid/util/SparseArray;

.field public mSecureTransportEnabled:Z

.field public final mTransports:Landroid/util/SparseArray;

.field public final mTransportsListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public static synthetic $r8$lambda$36uuzDRclPDQIPJiNfz_-SR7-wo(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->lambda$addListener$0(Landroid/companion/IOnTransportsChangedListener;Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XfXBCcfHQMio55TByIyfN2lJwbo(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->lambda$notifyOnTransportsChanged$1(Landroid/companion/IOnTransportsChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/association/AssociationStore;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    .line 79
    iput-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    return-void
.end method


# virtual methods
.method public addListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 91
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v0, 0x0

    .line 94
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/transport/Transport;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/transport/Transport;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 97
    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 92
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 3

    .line 104
    const-string v0, "CDM_CompanionTransportManager"

    const-string v1, "Registering OnTransportsChangedListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 107
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/companion/IOnTransportsChangedListener;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 353
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/IOnMessageReceivedListener;

    .line 355
    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4, v3}, Lcom/android/server/companion/transport/Transport;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public attachSystemDataTransport(ILandroid/os/ParcelFileDescriptor;I)V
    .locals 3

    .line 161
    const-string v0, "CDM_CompanionTransportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching transport for association id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 164
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 166
    invoke-static {v0, p3}, Lcom/android/server/companion/transport/TransportUtils;->enforceAssociationCanUseTransportFlags(Landroid/companion/AssociationInfo;I)V

    .line 168
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->initializeTransport(Landroid/companion/AssociationInfo;Landroid/os/ParcelFileDescriptor;[BI)V

    .line 176
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 177
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    const-string p0, "CDM_CompanionTransportManager"

    const-string p1, "Transport attached."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 312
    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 313
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 314
    new-instance v1, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V

    .line 316
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 318
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 319
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public detachSystemDataTransport(I)V
    .locals 3

    .line 186
    const-string v0, "CDM_CompanionTransportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching transport for association id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 190
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/transport/Transport;

    if-nez p1, :cond_0

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/companion/transport/Transport;->stop()V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    const-string p0, "CDM_CompanionTransportManager"

    const-string p1, "Transport detached."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public detachSystemDataTransport(Lcom/android/server/companion/transport/Transport;)V
    .locals 1

    .line 362
    iget p1, p1, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 363
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 284
    :try_start_0
    const-string v1, "System Data Transports: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 285
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 286
    const-string p0, "<empty>\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 288
    :cond_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v1, 0x0

    .line 289
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 291
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/transport/Transport;

    .line 292
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enableSecureTransport(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    return-void
.end method

.method public final getAssociationsWithTransport()Ljava/util/List;
    .locals 5

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 206
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iget-object v4, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 208
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 207
    invoke-virtual {v3, v4}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 210
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initializeTransport(Landroid/companion/AssociationInfo;Landroid/os/ParcelFileDescriptor;[BI)V
    .locals 9

    .line 232
    const-string v0, "CDM_CompanionTransportManager"

    const-string v1, "Initializing transport"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    .line 235
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->isSecureTransportEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-string p1, "CDM_CompanionTransportManager"

    const-string p3, "Secure channel is disabled. Creating raw transport"

    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance p1, Lcom/android/server/companion/transport/RawTransport;

    iget-object p3, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3, p2, p3}, Lcom/android/server/companion/transport/RawTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    goto :goto_1

    .line 239
    :cond_0
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string p1, "CDM_CompanionTransportManager"

    const-string p3, "Creating an unauthenticated secure channel"

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string p1, "CDM"

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 243
    new-instance v2, Lcom/android/server/companion/transport/SecureTransport;

    iget-object v5, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V

    :goto_0
    move-object p1, v2

    goto :goto_1

    :cond_1
    move-object v4, p2

    if-eqz p3, :cond_2

    .line 246
    const-string p1, "CDM_CompanionTransportManager"

    const-string p2, "Creating a PSK-authenticated secure channel"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v2, Lcom/android/server/companion/transport/SecureTransport;

    iget-object v5, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V

    goto :goto_0

    .line 248
    :cond_2
    const-string p2, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 251
    const-string p1, "CDM_CompanionTransportManager"

    const-string p2, "Creating a secure channel with extended patch difference allowance"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance p1, Lcom/android/server/companion/transport/SecureTransport;

    iget-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-direct {p1, v3, v4, p2, p3}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;I)V

    goto :goto_1

    .line 256
    :cond_3
    const-string p1, "CDM_CompanionTransportManager"

    const-string p2, "Creating a secure channel"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance p1, Lcom/android/server/companion/transport/SecureTransport;

    iget-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3, v4, p2, p4}, Lcom/android/server/companion/transport/SecureTransport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;I)V

    .line 260
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addMessageListenersToTransport(Lcom/android/server/companion/transport/Transport;)V

    .line 261
    new-instance p2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V

    invoke-virtual {p1, p2}, Lcom/android/server/companion/transport/Transport;->setOnTransportClosedListener(Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;)V

    .line 262
    invoke-virtual {p1}, Lcom/android/server/companion/transport/Transport;->start()V

    .line 263
    iget-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter p2

    .line 264
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSecureTransportEnabled()Z
    .locals 0

    .line 348
    iget-boolean p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    return p0
.end method

.method public final synthetic lambda$addListener$0(Landroid/companion/IOnTransportsChangedListener;Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    if-ne p2, p1, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final synthetic lambda$notifyOnTransportsChanged$1(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->getAssociationsWithTransport()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/companion/IOnTransportsChangedListener;->onTransportsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final notifyOnTransportsChanged()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/companion/transport/CompanionTransportManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/transport/CompanionTransportManager;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestPermissionRestore(I[B)Ljava/util/concurrent/Future;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/transport/Transport;

    if-nez p0, :cond_0

    .line 273
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing transport"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const p1, 0x63826983

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(I[B)Ljava/util/concurrent/Future;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 276
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendMessage(I[B[I)V
    .locals 4

    .line 145
    const-string v0, "CDM_CompanionTransportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 148
    :goto_0
    :try_start_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    aget v3, p3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    aget v3, p3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/transport/Transport;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(I[B)Ljava/util/concurrent/Future;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
