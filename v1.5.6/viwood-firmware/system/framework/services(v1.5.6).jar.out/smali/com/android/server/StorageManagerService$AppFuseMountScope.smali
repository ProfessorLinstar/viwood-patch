.class public Lcom/android/server/StorageManagerService$AppFuseMountScope;
.super Lcom/android/server/storage/AppFuseBridge$MountScope;
.source "StorageManagerService.java"


# instance fields
.field public mMounted:Z

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public static synthetic $r8$lambda$4kKaKLh9-s9xF3nc5qRomKq3iik(Lcom/android/server/StorageManagerService$AppFuseMountScope;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$AppFuseMountScope;->lambda$close$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/StorageManagerService;II)V
    .locals 0

    .line 3737
    iput-object p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 3738
    invoke-direct {p0, p2, p3}, Lcom/android/server/storage/AppFuseBridge$MountScope;-><init>(II)V

    const/4 p1, 0x0

    .line 3735
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 3767
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    const-string v1, "#close might be slow"

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mextendWatchdogTimeout(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    .line 3768
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    if-eqz v0, :cond_0

    .line 3769
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$AppFuseMountScope$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/StorageManagerService$AppFuseMountScope;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3789
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    :cond_0
    return-void
.end method

.method public final synthetic lambda$close$0()V
    .locals 2

    .line 3784
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget v1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    iget p0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-interface {v0, v1, p0}, Landroid/os/IVold;->unmountAppFuse(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3786
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public open()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 3743
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    const-string v1, "#open might be slow"

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mextendWatchdogTimeout(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    .line 3745
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget v1, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    iget v2, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-interface {v0, v1, v2}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    .line 3746
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    .line 3747
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3749
    new-instance v0, Lcom/android/server/AppFuseMountException;

    const-string v1, "Failed to mount"

    invoke-direct {v0, v1, p0}, Lcom/android/server/AppFuseMountException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public openFile(III)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 3756
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    const-string v1, "#openFile might be slow"

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$mextendWatchdogTimeout(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    .line 3758
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v1

    iget p0, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    .line 3759
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3761
    new-instance p1, Lcom/android/server/AppFuseMountException;

    const-string p2, "Failed to open"

    invoke-direct {p1, p2, p0}, Lcom/android/server/AppFuseMountException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
