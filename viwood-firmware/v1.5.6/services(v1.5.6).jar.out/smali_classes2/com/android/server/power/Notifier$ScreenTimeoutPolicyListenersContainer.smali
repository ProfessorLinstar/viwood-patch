.class public final Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
.super Ljava/lang/Object;
.source "Notifier.java"


# instance fields
.field public final mLastReportedState:Landroid/util/ArrayMap;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public volatile mScreenTimeoutPolicy:I

.field public final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public static synthetic $r8$lambda$rVPCw0atz6GsfCstOkR4CMvZP-A(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->lambda$updateScreenTimeoutPolicyAndNotifyIfNeeded$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$rfRzDRR-XAxLfrN45gYO9-58W6U(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->lambda$addListener$1(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLastReportedState(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 1

    .line 1380
    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    .line 1381
    iput p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1382
    new-instance p2, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Lcom/android/server/power/Notifier;)V

    iput-object p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1405
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Landroid/os/IScreenTimeoutPolicyListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 1414
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$addListener$1(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 0

    .line 1405
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method public final synthetic lambda$updateScreenTimeoutPolicyAndNotifyIfNeeded$0()V
    .locals 2

    .line 1395
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1396
    iget-object v1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IScreenTimeoutPolicyListener;

    .line 1397
    invoke-virtual {p0, v1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1399
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 4

    .line 1418
    const-string v0, "PowerManagerNotifier"

    iget v1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1419
    iget-object v2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1421
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1426
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1, v1}, Landroid/os/IScreenTimeoutPolicyListener;->onScreenTimeoutPolicyChanged(I)V

    .line 1427
    iget-object v2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 1433
    :goto_1
    const-string v2, "Exception when notifying screen timeout policy change"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1434
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->removeListener(Landroid/os/IScreenTimeoutPolicyListener;)V

    goto :goto_3

    .line 1431
    :goto_2
    const-string p1, "Remote exception when notifying screen timeout policy change"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public removeListener(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1410
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateScreenTimeoutPolicyAndNotifyIfNeeded(I)V
    .locals 1

    .line 1392
    iput p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1394
    iget-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
