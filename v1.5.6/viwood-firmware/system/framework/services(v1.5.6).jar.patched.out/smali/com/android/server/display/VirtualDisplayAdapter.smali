.class public Lcom/android/server/display/VirtualDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "VirtualDisplayAdapter.java"


# static fields
.field static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "virtual:"

.field public static final sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mMaxDevices:I

.field public final mMaxDevicesPerPackage:I

.field public final mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

.field public final mOwnerUids:Landroid/util/ArrayMap;

.field public final mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

.field public final mVirtualDisplayDevices:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSurfaceControlDisplayFactory(Lcom/android/server/display/VirtualDisplayAdapter;)Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleMediaProjectionStoppedLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveVirtualDisplayDeviceLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->removeVirtualDisplayDeviceLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisNeverBlank(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/VirtualDisplayAdapter;->isNeverBlank(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/display/VirtualDisplayAdapter;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 7

    .line 129
    const-string v5, "VirtualDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 85
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    iput-object p0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 92
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    iput-object p0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mOwnerUids:Landroid/util/ArrayMap;

    .line 96
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

    .line 130
    iput-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 131
    iput-object p5, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    .line 133
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0159

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    iput p0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mMaxDevices:I

    const/4 p1, 0x1

    if-lt p0, p1, :cond_1

    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x10e015a

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    iput p0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mMaxDevicesPerPackage:I

    if-lt p0, p1, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The limit of virtual displays per package must be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The limit of virtual displays must be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 7

    .line 104
    new-instance v5, Lcom/android/server/display/VirtualDisplayAdapter$1;

    invoke-direct {v5}, Lcom/android/server/display/VirtualDisplayAdapter$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    return-void
.end method

.method public static generateDisplayUniqueId(Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)Ljava/lang/String;
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "virtual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplayConfig;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplayConfig;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 298
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/display/VirtualDisplayAdapter;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNeverBlank(I)Z
    .locals 1

    .line 0
    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)Lcom/android/server/display/DisplayDevice;
    .locals 18

    move-object/from16 v2, p0

    move/from16 v5, p3

    .line 160
    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 161
    iget-object v0, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x0

    const-string v15, "VirtualDisplayAdapter"

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "Can\'t create virtual display, display with same appToken already exists"

    invoke-static {v15, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    .line 167
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isVirtualDisplayLimitEnabled()Z

    move-result v0

    const-string v1, "Rejecting request to create private virtual display because "

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 168
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v3, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mMaxDevices:I

    if-lt v0, v3, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mMaxDevices:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " devices already exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    .line 174
    :cond_1
    iget-object v0, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 175
    invoke-virtual {v2}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/display/feature/DisplayManagerFlags;->isVirtualDisplayLimitEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mMaxDevicesPerPackage:I

    if-lt v0, v6, :cond_2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mMaxDevicesPerPackage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " devices already exist for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    :cond_2
    move-object/from16 v6, p4

    .line 183
    invoke-virtual/range {p8 .. p8}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v8

    and-int/lit8 v1, p7, 0x4

    const/16 v16, 0x1

    if-eqz v1, :cond_3

    move/from16 v9, v16

    goto :goto_0

    :cond_3
    move v9, v3

    .line 185
    :goto_0
    invoke-static/range {p7 .. p7}, Lcom/android/server/display/VirtualDisplayAdapter;->isNeverBlank(I)Z

    move-result v10

    .line 190
    iget-object v7, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    .line 191
    invoke-virtual/range {p8 .. p8}, Landroid/hardware/display/VirtualDisplayConfig;->getRequestedRefreshRate()F

    move-result v12

    move-object/from16 v11, p5

    .line 190
    invoke-interface/range {v7 .. v12}, Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;->createDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object v1

    if-eqz p2, :cond_4

    .line 194
    new-instance v7, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    invoke-direct {v7, v2, v4}, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    move-object v11, v7

    goto :goto_1

    :cond_4
    move-object v11, v14

    .line 197
    :goto_1
    new-instance v9, Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 198
    invoke-virtual/range {p8 .. p8}, Landroid/hardware/display/VirtualDisplayConfig;->getBrightnessListener()Landroid/hardware/display/IBrightnessListener;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v7, v8}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/hardware/display/IBrightnessListener;Landroid/os/Handler;)V

    move v7, v3

    move-object v3, v1

    .line 199
    new-instance v1, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    move-object/from16 v10, p2

    move-object/from16 v12, p5

    move/from16 v8, p7

    move-object/from16 v13, p8

    move-object/from16 v17, v14

    move v14, v7

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Landroid/media/projection/IMediaProjection;Landroid/media/projection/IMediaProjectionCallback;Ljava/lang/String;Landroid/hardware/display/VirtualDisplayConfig;)V

    .line 203
    iget-object v3, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v2}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isVirtualDisplayLimitEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    iget-object v3, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    iget-object v0, v2, Lcom/android/server/display/VirtualDisplayAdapter;->mOwnerUids:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v10, :cond_6

    .line 211
    :try_start_0
    invoke-interface {v10, v11}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 212
    const-string v0, "Virtual Display: registered media projection callback for new VirtualDisplayDevice"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 215
    :cond_6
    :goto_2
    invoke-interface {v4, v1, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 217
    :goto_3
    const-string v3, "Virtual Display: error while setting up VirtualDisplayDevice"

    invoke-static {v15, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    invoke-virtual {v2, v4}, Lcom/android/server/display/VirtualDisplayAdapter;->removeVirtualDisplayDeviceLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 219
    invoke-virtual {v1, v14}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    return-object v17
.end method

.method public bridge synthetic dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getDisplayDevice(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayDevice;

    return-object p0
.end method

.method public getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getSurfaceLocked()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_0

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Virtual display device released because media projection stopped: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->stopLocked()V

    :cond_0
    return-void
.end method

.method public bridge synthetic registerLocked()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    return-void
.end method

.method public releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;
    .locals 2

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->removeVirtualDisplayDeviceLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release VirtualDisplay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    const/4 v0, 0x0

    .line 272
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-object p0
.end method

.method public final removeVirtualDisplayDeviceLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .locals 4

    .line 311
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isVirtualDisplayLimitEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mOwnerUids:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 322
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    return-object p0
.end method

.method public resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V
    .locals 1

    .line 230
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_0

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resize VirtualDisplay "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->resizeLocked(III)V

    :cond_0
    return-void
.end method

.method public setDisplayIdToMirror(Landroid/os/IBinder;I)V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_0

    .line 258
    invoke-virtual {p0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setDisplayIdToMirror(I)V

    :cond_0
    return-void
.end method

.method public setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 1

    .line 248
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_0

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update surface for VirtualDisplay "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
