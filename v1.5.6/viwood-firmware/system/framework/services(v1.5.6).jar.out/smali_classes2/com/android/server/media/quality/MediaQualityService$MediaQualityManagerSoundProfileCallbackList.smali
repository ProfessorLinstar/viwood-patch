.class public Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "MediaQualityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 1307
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/media/quality/ISoundProfileCallback;)V
    .locals 4

    .line 1311
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1312
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmUserStates(Lcom/android/server/media/quality/MediaQualityService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1313
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmUserStates(Lcom/android/server/media/quality/MediaQualityService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1314
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3, v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v2

    .line 1315
    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmSoundProfileCallbackPidUidMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1317
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 1307
    check-cast p1, Landroid/media/quality/ISoundProfileCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MediaQualityManagerSoundProfileCallbackList;->onCallbackDied(Landroid/media/quality/ISoundProfileCallback;)V

    return-void
.end method
