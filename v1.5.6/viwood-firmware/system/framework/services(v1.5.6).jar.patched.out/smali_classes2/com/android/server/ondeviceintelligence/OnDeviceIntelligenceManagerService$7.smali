.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;
.super Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public static synthetic $r8$lambda$5pDeWqpo4Lsm9LmrQ6P-uqQ9SOA(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->lambda$getReadOnlyFeatureFileDescriptorMap$3(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KZMtcNPDyn_VHW6qj_D-ecc5_YU(Landroid/os/Bundle;)V
    .locals 0

    .line 811
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTx_drAyL0MzZVzYdPEEAqHel2s(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->lambda$getReadOnlyFeatureFileDescriptorMap$5(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ltfCz1lOQqi43giohaAf_DS1Wjo(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->lambda$getReadOnlyFeatureFileDescriptorMap$4(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZCj4OdfPGLT3e_6WI-9Z39n6zM(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .locals 0

    .line 774
    invoke-interface {p2, p0, p1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y73YHv8oZP68DQ3WVTIOfJ3ANG8(Lcom/android/internal/infra/AndroidFuture;Landroid/os/ParcelFileDescriptor;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 779
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 781
    :cond_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    :goto_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$smtryClosePfd(Landroid/os/ParcelFileDescriptor;)V

    return-void

    :goto_1
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$smtryClosePfd(Landroid/os/ParcelFileDescriptor;)V

    .line 786
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteIntelligenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 795
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteIntelligenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 772
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 773
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v1

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 776
    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetcallbackExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final synthetic lambda$getReadOnlyFeatureFileDescriptorMap$3(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 801
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 803
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 804
    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 806
    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1

    .line 808
    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda5;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda5;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 812
    throw p2
.end method

.method public final synthetic lambda$getReadOnlyFeatureFileDescriptorMap$4(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetcallbackExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$getReadOnlyFeatureFileDescriptorMap$5(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .locals 2

    .line 796
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p3, p1, v0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    return-void
.end method
