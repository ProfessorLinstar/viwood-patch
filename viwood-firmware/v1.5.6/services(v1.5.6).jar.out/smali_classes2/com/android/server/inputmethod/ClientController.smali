.class public final Lcom/android/server/inputmethod/ClientController;
.super Ljava/lang/Object;
.source "ClientController.java"


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mClients:Landroid/util/ArrayMap;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$eF4cD2NQlJ6H-Idt0s1NiLWRSeA(Lcom/android/server/inputmethod/ClientController;Lcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->lambda$addClient$0(Lcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManagerInternal;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/android/server/inputmethod/ClientController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method


# virtual methods
.method public addClient(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;III)Lcom/android/server/inputmethod/ClientState;
    .locals 7

    .line 63
    new-instance v6, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ClientController;Lcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 73
    iget-object v3, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/ClientState;

    .line 74
    iget v4, v3, Lcom/android/server/inputmethod/ClientState;->mUid:I

    if-ne v4, p4, :cond_1

    iget v4, v3, Lcom/android/server/inputmethod/ClientState;->mPid:I

    if-ne v4, p5, :cond_1

    iget v3, v3, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    if-eq v3, p3, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/displayId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    new-instance v0, Lcom/android/server/inputmethod/ClientState;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ClientState;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;IIILandroid/os/IBinder$DeathRecipient;)V

    .line 97
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addClientControllerCallback(Lcom/android/server/inputmethod/ClientController$ClientControllerCallback;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public forAllClients(Ljava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/ClientState;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ClientState;

    return-object p0
.end method

.method public final synthetic lambda$addClient$0(Lcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 1

    .line 65
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->removeClientAsBinder(Landroid/os/IBinder;)Z

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeClient(Lcom/android/internal/inputmethod/IInputMethodClient;)Z
    .locals 0

    .line 104
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->removeClientAsBinder(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public final removeClientAsBinder(Landroid/os/IBinder;)Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ClientState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    iget-object v2, v0, Lcom/android/server/inputmethod/ClientState;->mClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 114
    :goto_0
    iget-object p1, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/ClientController$ClientControllerCallback;

    invoke-interface {p1, v0}, Lcom/android/server/inputmethod/ClientController$ClientControllerCallback;->onClientRemoved(Lcom/android/server/inputmethod/ClientState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientController;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget p1, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown client "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
