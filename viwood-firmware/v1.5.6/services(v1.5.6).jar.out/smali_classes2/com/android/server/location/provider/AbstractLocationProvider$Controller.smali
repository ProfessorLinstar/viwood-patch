.class public Lcom/android/server/location/provider/AbstractLocationProvider$Controller;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderController;


# instance fields
.field public mStarted:Z

.field public final synthetic this$0:Lcom/android/server/location/provider/AbstractLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$F9dA1JzrQGUlNPuOmx3DHTxJe-k(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->lambda$sendExtraCommand$3(IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LeNcBraXlYCSFuemITl6ZhAWq-s(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;Landroid/location/provider/ProviderRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->lambda$setRequest$1(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$POFKf6U6XI6kGnKlqRrlOHg84-g(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->lambda$flush$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ymAsNas0LO3WeFO8o8yVE4_uJQA(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .locals 0

    .line 369
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->withListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 362
    iput-boolean p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    return-void
.end method


# virtual methods
.method public flush(Ljava/lang/Runnable;)V
    .locals 2

    .line 401
    iget-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isStarted()Z
    .locals 0

    .line 376
    iget-boolean p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    return p0
.end method

.method public final synthetic lambda$flush$2(Ljava/lang/Runnable;)V
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->onFlush(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$sendExtraCommand$3(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/AbstractLocationProvider;->onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic lambda$setRequest$1(Landroid/location/provider/ProviderRequest;)V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->onSetRequest(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method

.method public sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 407
    iget-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;IILjava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 1

    .line 368
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-static {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->-$$Nest$fgetmInternalState(Lcom/android/server/location/provider/AbstractLocationProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    if-eqz p1, :cond_1

    .line 370
    iget-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 371
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-object p0
.end method

.method public setRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 2

    .line 395
    iget-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;Landroid/location/provider/ProviderRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 381
    iget-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 382
    iput-boolean v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    .line 383
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 388
    iget-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->mStarted:Z

    .line 390
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
