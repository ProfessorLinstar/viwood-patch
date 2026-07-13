.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraController;
.super Ljava/lang/Object;
.source "VirtualCameraController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCameraPolicy:I

.field public final mCameras:Ljava/util/Map;

.field public final mDeviceId:I

.field public final mServiceLock:Ljava/lang/Object;

.field public mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;-><init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V

    return-void
.end method

.method public constructor <init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 74
    iput p2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    .line 75
    iput p3, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mDeviceId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 150
    const-string v0, "VirtualCameraController"

    const-string v1, "Virtual camera service died."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 152
    :try_start_0
    iput-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v1

    .line 155
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 156
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 153
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final checkConfigByPolicy(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 2

    .line 196
    iget v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->isLensFacingAlreadyPresent(I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only a single virtual camera can be created with lens facing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create virtual camera with DEVICE_POLICY_DEFAULT for POLICY_TYPE_CAMERA"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 165
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :try_start_2
    iget-object v4, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-interface {v4, v3}, Landroid/companion/virtualcamera/IVirtualCameraService;->unregisterCamera(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 170
    :try_start_3
    const-string v4, "VirtualCameraController"

    const-string v5, "close(): Camera failed to be removed on camera service."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :try_start_4
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 174
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    .line 177
    :cond_1
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 179
    :try_start_7
    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 180
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    .line 177
    :goto_3
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public final connectVirtualCameraService()V
    .locals 4

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    :try_start_0
    const-string/jumbo v2, "virtual_camera"

    .line 235
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 237
    const-string p0, "VirtualCameraController"

    const-string v2, "connectVirtualCameraService: Failed to connect to the virtual camera service"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 241
    :try_start_1
    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 242
    invoke-static {v2}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/IVirtualCameraService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 244
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    throw p0
.end method

.method public final connectVirtualCameraServiceIfNeeded()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraService()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 225
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    if-eqz p0, :cond_1

    .line 228
    monitor-exit v0

    return-void

    .line 226
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Virtual camera service is not connected."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VirtualCameraController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 187
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 188
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Registered cameras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->-$$Nest$fgetmConfig(Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;)Landroid/companion/virtual/camera/VirtualCameraConfig;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 192
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/companion/virtualcamera/IVirtualCameraService;->getCameraId(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 142
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final isLensFacingAlreadyPresent(I)Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 210
    invoke-static {v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->-$$Nest$fgetmConfig(Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;)Landroid/companion/virtual/camera/VirtualCameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p0, 0x1

    .line 211
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 214
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;Landroid/content/AttributionSource;)V
    .locals 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->checkConfigByPolicy(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 90
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;-><init>(Lcom/android/server/companion/virtual/camera/VirtualCameraController;Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 93
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    .line 94
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 95
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to register virtual camera."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 105
    :goto_1
    const-string/jumbo p0, "virtual_devices.value_virtual_camera_created_count"

    .line 107
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result p1

    .line 105
    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public final registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z
    .locals 3

    .line 251
    invoke-static {p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->getServiceCameraConfiguration(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mDeviceId:I

    invoke-interface {v2, p1, v0, p0}, Landroid/companion/virtualcamera/IVirtualCameraService;->registerCamera(Landroid/os/IBinder;Landroid/companion/virtualcamera/VirtualCameraConfiguration;I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 255
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 118
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string p0, "VirtualCameraController"

    const-string p1, "Virtual camera was not registered."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-interface {v2, p1}, Landroid/companion/virtualcamera/IVirtualCameraService;->unregisterCamera(Landroid/os/IBinder;)V

    .line 126
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 126
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    :goto_0
    :try_start_6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 132
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method
