.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;
.super Landroid/app/ondeviceintelligence/IFeatureCallback$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic val$featureCallback:Landroid/app/ondeviceintelligence/IFeatureCallback;

.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/app/ondeviceintelligence/IFeatureCallback;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 273
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;->val$featureCallback:Landroid/app/ondeviceintelligence/IFeatureCallback;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IFeatureCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;->val$featureCallback:Landroid/app/ondeviceintelligence/IFeatureCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 284
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Landroid/app/ondeviceintelligence/Feature;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;->val$featureCallback:Landroid/app/ondeviceintelligence/IFeatureCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onSuccess(Landroid/app/ondeviceintelligence/Feature;)V

    .line 277
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
