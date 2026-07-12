.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field public final mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

.field public final mSession:Landroid/view/ContentRecordingSession;


# direct methods
.method public constructor <init>(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    .line 1700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1701
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 1702
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 1703
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mSession:Landroid/view/ContentRecordingSession;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1709
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherSessionCallback;->mSession:Landroid/view/ContentRecordingSession;

    invoke-interface {v0, v1, p0}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1711
    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Failed to notify content recording session changed"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
