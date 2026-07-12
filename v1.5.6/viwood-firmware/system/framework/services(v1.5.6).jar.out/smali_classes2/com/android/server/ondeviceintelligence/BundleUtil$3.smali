.class public Lcom/android/server/ondeviceintelligence/BundleUtil$3;
.super Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;
.source "BundleUtil.java"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

.field public final synthetic val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 314
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {p1, p3}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V

    .line 315
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Landroid/app/ondeviceintelligence/TokenInfo;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onSuccess(Landroid/app/ondeviceintelligence/TokenInfo;)V

    .line 306
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/TokenInfo;->getInfoParams()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V

    .line 307
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
