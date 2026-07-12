.class public Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;
.super Lcom/android/server/SystemService;
.source "IntrusionDetectionService.java"


# instance fields
.field public final mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

.field public final mContext:Landroid/content/Context;

.field public final mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

.field public volatile mState:I

.field public final mStateCallbacks:Ljava/util/ArrayList;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddStateCallback(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveStateCallback(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtransport(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->transport(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;-><init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;)V
    .locals 2

    .line 91
    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    .line 92
    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getIntrusionDetectionEventransportConnection()Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    .line 96
    invoke-interface {p1, p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getDataAggregator(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Lcom/android/server/security/intrusiondetection/DataAggregator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    .line 97
    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    invoke-interface {p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;->getPermissionEnforcer()Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;-><init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/os/PermissionEnforcer;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    return-void
.end method


# virtual methods
.method public addNewData(Ljava/util/List;)V
    .locals 1

    .line 264
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-interface {v1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    invoke-interface {p1, p0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->onStateChange(I)V

    return-void
.end method

.method public final disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 2

    .line 248
    iget v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->release()V

    .line 254
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->disable()V

    .line 255
    iput v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    .line 256
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->notifyStateMonitors()V

    .line 257
    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    return-void
.end method

.method public final enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 2

    .line 230
    iget v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 231
    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->initialize()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x3

    .line 236
    invoke-interface {p1, p0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onFailure(I)V

    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-virtual {v0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->enable()V

    .line 241
    iput v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    .line 242
    invoke-virtual {p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->notifyStateMonitors()V

    .line 243
    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;->onSuccess()V

    return-void
.end method

.method public getBinderService()Landroid/security/intrusiondetection/IIntrusionDetectionService;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    return-object p0
.end method

.method public final notifyStateMonitors()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    iget v2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    invoke-interface {v1, v2}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->onStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 223
    :catch_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 274
    :try_start_0
    const-string v0, "intrusion_detection"

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mBinderService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 276
    const-string v0, "IntrusionDetectionService"

    const-string v1, "Could not start the IntrusionDetectionService."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-interface {v1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 208
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    return-void
.end method

.method public final transport(Ljava/util/List;)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->addData(Ljava/util/List;)Z

    return-void
.end method
