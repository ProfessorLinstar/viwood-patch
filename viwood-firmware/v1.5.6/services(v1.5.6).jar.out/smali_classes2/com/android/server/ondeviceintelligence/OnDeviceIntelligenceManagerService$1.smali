.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;
.super Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public static synthetic $r8$lambda$8llU7se9iVRO_76uYsDcRv-ClD0(Landroid/os/Bundle;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 445
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$95tliv1qN9lDlB1NXBkiPjvm40I(Landroid/os/Bundle;)V
    .locals 0

    .line 496
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CjdcTD-vh2AUA-TL11DA9-0rl5I(Landroid/os/Bundle;)V
    .locals 0

    .line 542
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cz9KcwphcbolKIalPJSFoOmuAJQ(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->lambda$requestTokenInfo$6(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GSu8EnvJALignuO5oHH8J0_SO8s(Landroid/os/Bundle;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 538
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ir5CKobz6StUI9Hw2tORJr2dRBI(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->lambda$getFeatureDetails$4(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JFmcS15ENN-3yFsgoKLxYn8eJfo(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;IILandroid/app/ondeviceintelligence/IFeatureCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->lambda$getFeature$2(IILandroid/app/ondeviceintelligence/IFeatureCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z6OaHzWupg2NWl7M8tYPfQirW28(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->lambda$listFeatures$3(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_kQ3vDq61rdb1os1STZP4AIiYZ4(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->lambda$processRequestStreaming$12(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q0ZnVkR9_931rJgdT73F384b3ic(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->lambda$getVersion$1(Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rBlnCkxrE6TdCFoYz2bh1NlAfX0(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->lambda$requestFeatureDownload$5(Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u9qIHgn7NqH2a8LQ0TQnfS2r23c(Landroid/os/Bundle;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 492
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xGzjzJJBUllRCKg7TRjK7Ym_goc(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->lambda$processRequest$9(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ysYfaTkLVfJe9DWYBqNll4a9n6o(Landroid/os/RemoteCallback;Lcom/android/internal/infra/AndroidFuture;Landroid/os/Bundle;)V
    .locals 0

    .line 246
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 247
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$zZ-mKFl4Sp1NoCWuZ8mW8M8Opz4(Landroid/os/Bundle;)V
    .locals 0

    .line 449
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeature(ILandroid/app/ondeviceintelligence/IFeatureCallback;)V
    .locals 3

    .line 256
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnDeviceIntelligenceManagerInternal getFeatures"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string p0, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object p1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v0, 0x64

    invoke-interface {p2, v0, p0, p1}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteIntelligenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v1

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;IILandroid/app/ondeviceintelligence/IFeatureCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .locals 3

    .line 337
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnDeviceIntelligenceManagerInternal getFeatureStatus"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not available"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string p0, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object p1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v0, 0x64

    invoke-interface {p2, v0, p0, p1}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteIntelligenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v1

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public getLatestInferenceInfo(J)Ljava/util/List;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetLatestInferenceInfo(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteServicePackageName()Ljava/lang/String;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getRemoteConfiguredPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion(Landroid/os/RemoteCallback;)V
    .locals 3

    .line 231
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnDeviceIntelligenceManagerInternal getVersion"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Service not available"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 237
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteIntelligenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final synthetic lambda$getFeature$2(IILandroid/app/ondeviceintelligence/IFeatureCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 272
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 273
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/app/ondeviceintelligence/IFeatureCallback;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p4, p1, p2, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getFeature(IILandroid/app/ondeviceintelligence/IFeatureCallback;)V

    .line 287
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getFeatureDetails$4(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 354
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 355
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    invoke-interface {p4, p1, p2, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 373
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getVersion$1(Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 243
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 244
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda14;

    invoke-direct {v2, p1, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda14;-><init>(Landroid/os/RemoteCallback;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p2, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getVersion(Landroid/os/RemoteCallback;)V

    .line 249
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$listFeatures$3(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 310
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 311
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-interface {p3, p1, v1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->listFeatures(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    .line 329
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$processRequest$9(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 481
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 482
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 485
    invoke-static {v1, p5}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p5

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 486
    invoke-static {v1, p6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapProcessingFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p6

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmInferenceInfoStore(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    move-result-object v2

    .line 487
    invoke-static {p7, v1, v0, v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->wrapWithValidation(Landroid/app/ondeviceintelligence/IResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;)Landroid/app/ondeviceintelligence/IResponseCallback;

    move-result-object p7

    move-object v3, p2

    move p2, p1

    move-object p1, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, v3

    .line 482
    invoke-interface/range {p1 .. p8}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->processRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    .line 490
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$processRequestStreaming$12(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 527
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 528
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 531
    invoke-static {v1, p5}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p5

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 532
    invoke-static {v1, p6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapProcessingFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p6

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmInferenceInfoStore(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    move-result-object v2

    .line 533
    invoke-static {p7, v1, v0, v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->wrapWithValidation(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;)Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    move-result-object p7

    move-object v3, p2

    move p2, p1

    move-object p1, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, v3

    .line 528
    invoke-interface/range {p1 .. p8}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->processRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    .line 536
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$requestFeatureDownload$5(Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 6

    .line 397
    new-instance v3, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 398
    new-instance v0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmMainHandler(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 401
    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;-><init>(Landroid/app/ondeviceintelligence/IDownloadCallback;Landroid/os/Handler;Lcom/android/internal/infra/AndroidFuture;J)V

    .line 402
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 403
    invoke-static {p0, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 402
    invoke-interface {p5, p2, p3, p0, v0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->requestFeatureDownload(ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    return-object v3
.end method

.method public final synthetic lambda$requestTokenInfo$6(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 437
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 438
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 440
    invoke-static {v1, p4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p4

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmInferenceInfoStore(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    move-result-object v1

    .line 441
    invoke-static {p5, v0, v1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->wrapWithValidation(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;)Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    move-result-object p5

    move-object v2, p2

    move p2, p1

    move-object p1, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, v2

    .line 438
    invoke-interface/range {p1 .. p6}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->requestTokenInfo(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    .line 443
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    move-result-wide p0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public listFeatures(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .locals 3

    .line 294
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnDeviceIntelligenceManagerInternal getFeatures"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Service not available"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string p0, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v1, 0x64

    invoke-interface {p1, v1, p0, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteIntelligenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v1

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 550
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .locals 11

    const/4 v9, 0x0

    .line 464
    :try_start_0
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OnDeviceIntelligenceManagerInternal processRequest"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 467
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 471
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Service not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v0, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v3, 0xf

    move-object/from16 v8, p6

    invoke-interface {v8, v3, v0, v2}, Landroid/app/ondeviceintelligence/IResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v8, p6

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteInferenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 479
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteInferenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    move-result-object v10

    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    invoke-virtual {v10, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v9

    .line 492
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda7;-><init>(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    if-nez v9, :cond_1

    .line 496
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda8;

    invoke-direct {v2, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda8;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 498
    :cond_1
    throw v0
.end method

.method public processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .locals 11

    const/4 v9, 0x0

    .line 510
    :try_start_0
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OnDeviceIntelligenceManagerInternal processRequestStreaming"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 513
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 517
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Service not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v3, 0xf

    move-object/from16 v8, p6

    invoke-interface {v8, v3, v0, v2}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v8, p6

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteInferenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 525
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteInferenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    move-result-object v10

    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    invoke-virtual {v10, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v9

    .line 538
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    if-nez v9, :cond_1

    .line 542
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 544
    :cond_1
    throw v0
.end method

.method public requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    .locals 7

    .line 381
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnDeviceIntelligenceManagerInternal requestFeatureDownload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v0, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/4 v2, 0x4

    invoke-interface {p3, v2, v0, v1}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteIntelligenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 394
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 395
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .locals 9

    .line 417
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnDeviceIntelligenceManagerInternal requestTokenInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 420
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 422
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 427
    :try_start_1
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Service not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v0, "OnDeviceIntelligenceManagerService is unavailable"

    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    const/16 v3, 0x64

    invoke-interface {p4, v3, v0, v2}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    move-object v6, p2

    goto :goto_2

    .line 433
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mensureRemoteInferenceServiceInitialized(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 434
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 435
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteInferenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    move-result-object v0

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    :try_start_3
    invoke-direct/range {v2 .. v8}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 445
    new-instance p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda11;

    invoke-direct {p0, v6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda11;-><init>(Landroid/os/Bundle;)V

    iget-object p1, v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, p0

    move-object v6, p2

    goto :goto_1

    :goto_2
    if-nez v1, :cond_1

    .line 449
    iget-object p0, v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda12;

    invoke-direct {p2, v6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda12;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 451
    :cond_1
    throw p1
.end method
