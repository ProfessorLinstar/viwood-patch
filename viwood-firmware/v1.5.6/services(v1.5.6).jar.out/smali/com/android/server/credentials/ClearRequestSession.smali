.class public final Lcom/android/server/credentials/ClearRequestSession;
.super Lcom/android/server/credentials/RequestSession;
.source "ClearRequestSession.java"

# interfaces
.implements Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IClearCredentialStateCallback;Landroid/credentials/ClearCredentialStateRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;J)V
    .locals 15

    .line 52
    const-string v8, "android.credentials.selection.TYPE_UNDEFINED"

    const/4 v14, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v14}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    return-void
.end method


# virtual methods
.method public initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 70
    invoke-static {v0, v1, p1, p0, p2}, Lcom/android/server/credentials/ProviderClearSession;->createNewSession(Landroid/content/Context;ILandroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ClearRequestSession;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderClearSession;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider session created and being added for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string v0, "CredentialManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/server/credentials/ProviderSession;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IClearCredentialStateCallback;

    invoke-interface {p0, p1, p2}, Landroid/credentials/IClearCredentialStateCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invokeClientCallbackSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ClearRequestSession;->invokeClientCallbackSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public invokeClientCallbackSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IClearCredentialStateCallback;

    invoke-interface {p0}, Landroid/credentials/IClearCredentialStateCallback;->onSuccess()V

    return-void
.end method

.method public launchUiWithProviderData(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFinalErrorReceived(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/ClearRequestSession;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Void;)V

    return-void
.end method

.method public onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Void;)V
    .locals 3

    .line 98
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiResponseData(ZJ)V

    .line 99
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->isPrimaryProviderViaProviderInfo(Landroid/content/ComponentName;)Z

    move-result v1

    .line 99
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;Z)V

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithResponseAndFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderResponseComplete(Landroid/content/ComponentName;)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ClearRequestSession;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Void;)V

    :cond_0
    return-void
.end method

.method public onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider changed with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CredentialManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p1}, Lcom/android/server/credentials/ProviderSession;->isTerminatingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 86
    const-string p1, "Provider terminating status"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/ClearRequestSession;->onProviderTerminated(Landroid/content/ComponentName;)V

    return-void

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/android/server/credentials/ProviderSession;->isCompletionStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    const-string p1, "Provider has completion status"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/ClearRequestSession;->onProviderResponseComplete(Landroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method public onProviderTerminated(Landroid/content/ComponentName;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/credentials/ClearRequestSession;->processResponses()V

    :cond_0
    return-void
.end method

.method public onUiCancellation(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/android/server/credentials/RequestSession;->onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V

    return-void
.end method

.method public onUiSelectorInvocationFailure()V
    .locals 0

    .line 0
    return-void
.end method

.method public final processResponses()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/credentials/ProviderSession;

    .line 140
    invoke-virtual {v1}, Lcom/android/server/credentials/ProviderSession;->isProviderResponseSet()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithResponseAndFinish(Ljava/lang/Object;)V

    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const-string v1, "android.credentials.ClearCredentialStateException.TYPE_UNKNOWN"

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 149
    const-string v0, "All providers failed"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
