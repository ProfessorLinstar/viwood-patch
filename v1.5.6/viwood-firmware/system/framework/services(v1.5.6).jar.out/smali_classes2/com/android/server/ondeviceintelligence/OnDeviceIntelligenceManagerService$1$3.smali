.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;
.super Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .locals 0

    .line 356
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 369
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 361
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V

    return-void
.end method
