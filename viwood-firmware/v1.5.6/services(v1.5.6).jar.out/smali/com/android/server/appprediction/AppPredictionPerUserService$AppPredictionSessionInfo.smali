.class public final Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
.super Ljava/lang/Object;
.source "AppPredictionPerUserService.java"


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field public final mSessionId:Landroid/app/prediction/AppPredictionSessionId;

.field public final mToken:Landroid/os/IBinder;

.field public final mUsesPeopleService:Z


# direct methods
.method public static synthetic $r8$lambda$m4jO3oG5c3P0u21nKe615ZtJxzE(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->lambda$resurrectSessionLocked$0(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmUsesPeopleService(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    return p0
.end method

.method public constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;ZLandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 425
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 426
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 427
    iput-boolean p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 428
    iput-object p4, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    .line 429
    iput-object p5, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 469
    :cond_0
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public final synthetic lambda$resurrectSessionLocked$0(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method public linkToDeath()Z
    .locals 2

    const/4 v0, 0x0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/os/IBinder;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 479
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 480
    iget-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method
