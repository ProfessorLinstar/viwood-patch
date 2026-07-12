.class public Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;
.super Ljava/lang/Object;
.source "WearableSensingManagerPerUserService.java"

# interfaces
.implements Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$statusCallback:Landroid/os/RemoteCallback;

.field public final synthetic val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mensureRemoteServiceInitiated(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    .line 278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 279
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmSecureChannelLock(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 282
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v0}, Lcom/android/server/wearable/RemoteWearableSensingService;->killWearableSensingServiceProcess()V

    .line 284
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fputmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 286
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 286
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 278
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public onSecureTransportAvailable(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 264
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calling over to remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mensureRemoteServiceInitiated(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    .line 267
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->val$statusCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 271
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
