.class public Lcom/android/server/credentials/GetRequestSession;
.super Lcom/android/server/credentials/RequestSession;
.source "GetRequestSession.java"

# interfaces
.implements Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;


# direct methods
.method public static synthetic $r8$lambda$0LtTRBV-lRduLp65nu5fZ6r7FyY(Lcom/android/server/credentials/GetRequestSession;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/GetRequestSession;->lambda$handleEmptyAuthenticationSelection$1(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F54EbIc40VBZ5z3EW237v9dIweU(Lcom/android/server/credentials/GetRequestSession;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/GetRequestSession;->lambda$launchUiWithProviderData$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;J)V
    .locals 15

    .line 61
    invoke-static/range {p7 .. p7}, Lcom/android/server/credentials/GetRequestSession;->getRequestInfoFromRequest(Landroid/credentials/GetCredentialRequest;)Ljava/lang/String;

    move-result-object v8

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

    .line 60
    invoke-direct/range {v0 .. v14}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    .line 63
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p0, v6}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V

    return-void
.end method

.method public static getRequestInfoFromRequest(Landroid/credentials/GetCredentialRequest;)Ljava/lang/String;
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/CredentialOption;

    .line 68
    invoke-virtual {v0}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    const-string p0, "android.credentials.selection.TYPE_GET_VIA_REGISTRY"

    return-object p0

    .line 74
    :cond_1
    const-string p0, "android.credentials.selection.TYPE_GET"

    return-object p0
.end method


# virtual methods
.method public bridge synthetic addProviderSession(Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->addProviderSession(Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession;)V

    return-void
.end method

.method public handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/GetRequestSession;Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/credentials/GetRequestSession;->providerDataContainsEmptyAuthEntriesOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const-string v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 239
    const-string p1, "No credentials available"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 89
    invoke-static {v0, v1, p1, p0, p2}, Lcom/android/server/credentials/ProviderGetSession;->createNewSession(Landroid/content/Context;ILandroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/GetRequestSession;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderGetSession;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider session created and being added for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    const-string v0, "CredentialManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
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

    .line 137
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IGetCredentialCallback;

    invoke-interface {p0, p1, p2}, Landroid/credentials/IGetCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invokeClientCallbackSuccess(Landroid/credentials/GetCredentialResponse;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IGetCredentialCallback;

    invoke-interface {p0, p1}, Landroid/credentials/IGetCredentialCallback;->onResponse(Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public bridge synthetic invokeClientCallbackSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/GetRequestSession;->invokeClientCallbackSuccess(Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public final synthetic lambda$handleEmptyAuthenticationSelection$1(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/ProviderGetSession;

    .line 226
    iget-object p2, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->updateAuthEntriesStatusFromAnotherSession()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$launchUiWithProviderData$0(Ljava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->cancelExistingPendingIntent()V

    .line 107
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v3, Landroid/credentials/GetCredentialRequest;

    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 109
    invoke-virtual {v4}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 111
    invoke-virtual {v6}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    .line 110
    invoke-static {v5, v6, v7}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 108
    invoke-static {v2, v3, v4, v5, v0}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZZ)Landroid/credentials/selection/RequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 107
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/credentials/CredentialManagerUi;->createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 117
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast v1, Landroid/credentials/IGetCredentialCallback;

    invoke-interface {v1, p1}, Landroid/credentials/IGetCredentialCallback;->onPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 119
    :catch_0
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiReturnedFinalPhase(Z)V

    .line 120
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    invoke-virtual {p1, v0}, Lcom/android/server/credentials/CredentialManagerUi;->setStatus(Lcom/android/server/credentials/CredentialManagerUi$UiStatus;)V

    .line 122
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const-string v0, "android.credentials.GetCredentialException.TYPE_UNKNOWN"

    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 123
    const-string p1, "Unable to instantiate selector"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public launchUiWithProviderData(Ljava/util/ArrayList;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiCallStartTime(J)V

    .line 103
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    sget-object v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerUi;->setStatus(Lcom/android/server/credentials/CredentialManagerUi$UiStatus;)V

    .line 104
    new-instance v0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/GetRequestSession;Ljava/util/ArrayList;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onFinalErrorReceived(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V
    .locals 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFinalResponseReceived from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiResponseData(ZJ)V

    .line 145
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->isPrimaryProviderViaProviderInfo(Landroid/content/ComponentName;)Z

    move-result v2

    .line 145
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;Z)V

    if-eqz p2, :cond_1

    .line 148
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 149
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result v0

    .line 148
    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenProviderStatus(I)V

    .line 151
    invoke-virtual {p2}, Landroid/credentials/GetCredentialResponse;->getCredential()Landroid/credentials/Credential;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p2}, Landroid/credentials/GetCredentialResponse;->getCredential()Landroid/credentials/Credential;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenClassType(Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithResponseAndFinish(Ljava/lang/Object;)V

    return-void

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    sget-object p2, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 159
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p2

    .line 158
    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenProviderStatus(I)V

    .line 161
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const-string p2, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 162
    const-string p1, "Invalid response from provider"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/GetRequestSession;->onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status changed for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CredentialManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object p3, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, p3, :cond_0

    .line 202
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/GetRequestSession;->handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result p1

    if-nez p1, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    const-string p1, "Provider status changed - ui invocation is needed"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    return-void

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const-string p2, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 216
    const-string p1, "No credentials available"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onUiCancellation(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 180
    const-string p1, "android.credentials.GetCredentialException.TYPE_INTERRUPTED"

    const-string v0, "The UI was interrupted - please try again."

    goto :goto_0

    .line 178
    :cond_0
    const-string p1, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    const-string v0, "User cancelled the selector"

    .line 182
    :goto_0
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {v1, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/android/server/credentials/RequestSession;->onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V

    return-void
.end method

.method public onUiSelectorInvocationFailure()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const-string v1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 190
    const-string v0, "No credentials available."

    invoke-virtual {p0, v1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final providerDataContainsEmptyAuthEntriesOnly()Z
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/credentials/ProviderGetSession;

    .line 247
    invoke-virtual {v1}, Lcom/android/server/credentials/ProviderGetSession;->containsEmptyAuthEntriesOnly()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
