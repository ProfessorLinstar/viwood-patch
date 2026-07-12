.class public Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;
.super Ljava/lang/Object;
.source "WearableSensingManagerPerUserService.java"

# interfaces
.implements Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic val$connectionId:I

.field public final synthetic val$metadata:Landroid/os/PersistableBundle;

.field public final synthetic val$wearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

.field public final synthetic val$wrappedStatusCallback:Landroid/os/RemoteCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$metadata:Landroid/os/PersistableBundle;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wrappedStatusCallback:Landroid/os/RemoteCallback;

    iput p5, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$connectionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmSecureChannelMap(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmSecureChannelMap(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$connectionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wrappedStatusCallback:Landroid/os/RemoteCallback;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 368
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSecureTransportAvailable(Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    .line 353
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calling over to remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mensureRemoteServiceInitiated(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    .line 356
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$metadata:Landroid/os/PersistableBundle;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wrappedStatusCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, p1, v2, v3, p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideConcurrentSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 361
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
