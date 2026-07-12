.class public final Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
.super Ljava/lang/Object;
.source "MediaQualityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/media/quality/IAmbientBacklightCallback;

.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Ljava/lang/String;Landroid/media/quality/IAmbientBacklightCallback;)V
    .locals 0

    .line 1760
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1761
    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mPackageName:Ljava/lang/String;

    .line 1762
    iput-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    .line 1764
    :try_start_0
    invoke-interface {p3}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1766
    const-string p1, "MediaQualityService"

    const-string p2, "Failed to link to death"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1780
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 1781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 2

    .line 1772
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v0}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1774
    const-string v0, "MediaQualityService"

    const-string v1, "Failed to unlink to death"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
