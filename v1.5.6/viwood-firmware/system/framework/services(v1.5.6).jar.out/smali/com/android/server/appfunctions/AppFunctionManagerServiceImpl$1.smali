.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;
.super Ljava/lang/Object;
.source "AppFunctionManagerServiceImpl.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 334
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 334
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
