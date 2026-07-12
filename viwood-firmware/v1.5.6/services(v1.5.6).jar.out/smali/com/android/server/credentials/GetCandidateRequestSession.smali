.class public Lcom/android/server/credentials/GetCandidateRequestSession;
.super Lcom/android/server/credentials/RequestSession;
.source "GetCandidateRequestSession.java"

# interfaces
.implements Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;


# instance fields
.field public final mAutofillCallback:Landroid/os/ResultReceiver;

.field public final mAutofillRequestId:I

.field public final mAutofillSessionId:I

.field public final mClientBinder:Landroid/os/IBinder;

.field public mPrimaryProviderComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCandidateCredentialsCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;Landroid/os/IBinder;)V
    .locals 16

    move-object/from16 v15, p11

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    .line 80
    const-string v8, "android.credentials.selection.TYPE_GET"

    move-object/from16 v0, p0

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

    invoke-direct/range {v0 .. v14}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    const/4 v1, 0x0

    .line 70
    iput-object v1, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    .line 83
    iput-object v15, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mClientBinder:Landroid/os/IBinder;

    .line 84
    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "autofill_session_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillSessionId:I

    .line 85
    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "autofill_request_id"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillRequestId:I

    .line 86
    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.credentials.AUTOFILL_RESULT_RECEIVER"

    const-class v3, Landroid/os/ResultReceiver;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    if-eqz v15, :cond_0

    .line 89
    invoke-virtual {v0, v15}, Lcom/android/server/credentials/RequestSession;->setUpClientCallbackListener(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAutofillRequestId()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillRequestId:I

    return p0
.end method

.method public getAutofillSessionId()I
    .locals 0

    .line 264
    iget p0, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillSessionId:I

    return p0
.end method

.method public initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 105
    invoke-static {v0, v1, p1, p0, p2}, Lcom/android/server/credentials/ProviderGetSession;->createNewSession(Landroid/content/Context;ILandroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/GetCandidateRequestSession;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderGetSession;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In startProviderSession - provider session created and being added for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p2}, Lcom/android/server/credentials/ProviderSession;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iput-object v0, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method public invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IGetCandidateCredentialsCallback;

    invoke-interface {p0, p1, p2}, Landroid/credentials/IGetCandidateCredentialsCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invokeClientCallbackSuccess(Landroid/credentials/GetCandidateCredentialsResponse;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IGetCandidateCredentialsCallback;

    invoke-interface {p0, p1}, Landroid/credentials/IGetCandidateCredentialsCallback;->onResponse(Landroid/credentials/GetCandidateCredentialsResponse;)V

    return-void
.end method

.method public bridge synthetic invokeClientCallbackSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Landroid/credentials/GetCandidateCredentialsResponse;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/GetCandidateRequestSession;->invokeClientCallbackSuccess(Landroid/credentials/GetCandidateCredentialsResponse;)V

    return-void
.end method

.method public launchUiWithProviderData(Ljava/util/ArrayList;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/GetCredentialRequest;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 135
    invoke-virtual {v3}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 136
    invoke-virtual {v5}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    invoke-static {v4, v5, v6}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    .line 134
    invoke-static {v1, v2, v3, v4, v5}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZZ)Landroid/credentials/selection/RequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/CredentialManagerUi;->createIntentForAutofill(Landroid/credentials/selection/RequestInfo;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/credentials/selection/ProviderData;

    .line 143
    check-cast v4, Landroid/credentials/selection/GetCredentialProviderData;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_1
    :try_start_0
    new-instance p1, Landroid/credentials/GetCandidateCredentialsResponse;

    iget-object v2, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    invoke-direct {p1, v1, v0, v2}, Landroid/credentials/GetCandidateCredentialsResponse;-><init>(Ljava/util/List;Landroid/content/Intent;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/GetCandidateRequestSession;->invokeClientCallbackSuccess(Landroid/credentials/GetCandidateCredentialsResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Issue while responding to client with error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_2
    :goto_1
    const-string p1, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    const-string v0, "No credentials found"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinalErrorReceived(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    const-string/jumbo p1, "onFinalErrorReceived"

    const-string v0, "CredentialManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string p1, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    const-string p0, "User canceled but session is not being terminated"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/credentials/GetCandidateRequestSession;->respondToFinalReceiverWithFailureAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V
    .locals 2

    .line 233
    const-string/jumbo p1, "onFinalResponseReceived"

    const-string v0, "CredentialManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    if-ne p1, v1, :cond_0

    .line 235
    const-string p0, "Request has already been completed. This is strange."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/GetCandidateRequestSession;->respondToFinalReceiverWithResponseAndFinish(Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public bridge synthetic onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/GetCandidateRequestSession;->onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 1

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "in onStatusChanged with status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", and source: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CredentialManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result p1

    if-nez p1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    const-string p1, "in onProviderStatusChanged - isUiInvocationNeeded"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    return-void

    .line 223
    :cond_0
    const-string p1, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    const-string p2, "No credentials available"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onUiCancellation(Z)V
    .locals 0

    .line 179
    const-string p0, "CredentialManager"

    const-string p1, "User canceled but session is not being terminated"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/server/credentials/RequestSession;->onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V

    return-void
.end method

.method public onUiSelectorInvocationFailure()V
    .locals 1

    .line 204
    const-string v0, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    .line 205
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    return-void
.end method

.method public final respondToFinalReceiverWithFailureAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v2, "CredentialManager"

    if-ne v0, v1, :cond_0

    .line 186
    const-string p0, "Request has already been completed. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 197
    :cond_1
    const-string/jumbo p1, "onUiCancellation called but mAutofillCallback not found"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void
.end method

.method public final respondToFinalReceiverWithResponseAndFinish(Landroid/credentials/GetCredentialResponse;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v2, "CredentialManager"

    if-ne v0, v1, :cond_0

    .line 243
    const-string p0, "Request has already been completed. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 248
    const-string/jumbo v0, "onFinalResponseReceived sending through final receiver"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    const-string v2, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    iget-object p1, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 253
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void

    .line 255
    :cond_1
    const-string/jumbo p1, "onFinalResponseReceived result receiver not found for pinned entry"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/credentials/RequestSession;->finishSession(ZI)V

    return-void
.end method
