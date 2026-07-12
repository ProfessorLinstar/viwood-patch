.class public Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "VirtualDeviceManagerService.java"


# static fields
.field public static final VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

.field public static sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mActiveAssociations:Landroid/util/ArrayMap;

.field public final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field public final mAppsOnVirtualDevices:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

.field public final mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

.field public final mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

.field public mStrongAuthTracker:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;

.field public final mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

.field public final mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

.field public final mVirtualDeviceManagerLock:Ljava/lang/Object;

.field public final mVirtualDevices:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$eM-uhh-4fTQJevYwUm88_ltE5E4(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onCameraAccessBlocked(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-WyqPohEXN68g7USus9Gopp5h0(ILandroid/companion/virtual/IVirtualDeviceListener;)V
    .locals 1

    .line 324
    :try_start_0
    invoke-interface {p1, p0}, Landroid/companion/virtual/IVirtualDeviceListener;->onVirtualDeviceClosed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to invoke onVirtualDeviceClosed listener: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 326
    const-string p1, "VirtualDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveAssociations(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsOnVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImpl(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalService(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceLog(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCameraAccessController(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/os/UserHandle;Landroid/companion/virtual/VirtualDeviceParams;Ljava/lang/String;)Lcom/android/server/companion/virtual/CameraAccessController;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getCameraAccessController(Landroid/os/UserHandle;Landroid/companion/virtual/VirtualDeviceParams;Ljava/lang/String;)Lcom/android/server/companion/virtual/CameraAccessController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDeviceForId(I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetVIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNextUniqueIndex()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 104
    const-string v0, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    const-string v1, "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

    const-string v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    const-string v3, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 135
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceLog;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceLog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 136
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 142
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    .line 165
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    .line 171
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 177
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    .line 187
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 182
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 183
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    .line 184
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerService-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method


# virtual methods
.method public addVirtualDevice(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCameraAccessController(Landroid/os/UserHandle;Landroid/companion/virtual/VirtualDeviceParams;Ljava/lang/String;)Lcom/android/server/companion/virtual/CameraAccessController;
    .locals 4

    const-wide/32 v0, 0x161fa7f8

    .line 261
    invoke-static {v0, v1, p3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x7

    .line 264
    invoke-virtual {p2, p3}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 268
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 269
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 270
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 272
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getCameraAccessController()Lcom/android/server/companion/virtual/CameraAccessController;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/CameraAccessController;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 277
    new-instance p2, Lcom/android/server/companion/virtual/CameraAccessController;

    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    invoke-direct {p2, p1, p3, v0}, Lcom/android/server/companion/virtual/CameraAccessController;-><init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;)V

    return-object p2
.end method

.method public getLocalServiceInstance()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public final getVirtualDeviceForId(I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getVirtualDevicesSnapshot()Ljava/util/ArrayList;
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 381
    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 384
    :cond_0
    monitor-exit v0

    return-object v1

    .line 385
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyRunningAppsChanged(ILandroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const-string p0, "VirtualDeviceManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyRunningAppsChanged called for unknown deviceId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (maybe it was recently closed?)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onAppsOnVirtualDeviceChanged()V

    return-void

    .line 294
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onCameraAccessBlocked(I)V
    .locals 6

    .line 248
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 249
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 252
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 254
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x1040a94

    .line 252
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x1

    .line 251
    invoke-virtual {v2, p1, v3, v5, v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;ILandroid/os/Looper;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCdmAssociationsChanged(Ljava/util/List;)V
    .locals 6

    .line 344
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 345
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 346
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 347
    sget-object v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 350
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 356
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 358
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 359
    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    .line 361
    :goto_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 363
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 364
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 370
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    goto :goto_3

    .line 373
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 374
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onPersistentDeviceIdsRemoved(Ljava/util/Set;)V

    :cond_5
    return-void

    .line 367
    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onLockdownChanged(Z)V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 242
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onLockdownChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 214
    const-string/jumbo v0, "virtualdevice"

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 215
    const-string/jumbo v0, "virtualdevice_native"

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 216
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 217
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x3

    .line 219
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/CompanionDeviceManager;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 225
    invoke-virtual {v0, v1}, Landroid/companion/CompanionDeviceManager;->getAllAssociations(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onCdmAssociationsChanged(Ljava/util/List;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/companion/CompanionDeviceManager;->addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;I)V

    goto :goto_0

    .line 229
    :cond_0
    const-string v0, "VirtualDeviceManagerService"

    const-string v1, "Failed to find CompanionDeviceManager. No CDM association info  will be available."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mStrongAuthTracker:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;

    .line 234
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mStrongAuthTracker:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    return-void
.end method

.method public removeVirtualDevice(I)Z
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 315
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 319
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    const-string v1, "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 333
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 336
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw p0

    .line 320
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
