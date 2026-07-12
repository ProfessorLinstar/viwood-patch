.class public final Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;
.super Ljava/lang/Object;
.source "ContentRecorder.java"

# interfaces
.implements Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;


# instance fields
.field public final mDisplayId:I

.field public mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 725
    iput p1, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public final fetchMediaProjectionManager()V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 800
    :cond_0
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    return-void
.end method

.method public notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    .locals 3

    .line 749
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 750
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/projection/IMediaProjectionManager;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 757
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v0, 0x4

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v0, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, 0x16357972e5e23934L

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    .locals 2

    .line 783
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 784
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/media/projection/IMediaProjectionManager;->notifyCaptureBoundsChanged(IILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 791
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p2, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x39e4ee58ac5f3856L    # 8.255839796801303E-30

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyWindowingModeChanged(III)V
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 768
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/media/projection/IMediaProjectionManager;->notifyWindowingModeChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 775
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p2, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x1424aecde7ddcd54L    # -3.592300748717029E211

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopActiveProjection(I)V
    .locals 7

    .line 730
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 731
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 735
    :try_start_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v5, 0x2c6128f062ff341dL    # 6.426974591688406E-95

    invoke-static {v4, v5, v6, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 738
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v2, p1}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 740
    :goto_1
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    int-to-long v1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, 0x3cf377066afc38ecL    # 4.322085285124858E-15

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method
