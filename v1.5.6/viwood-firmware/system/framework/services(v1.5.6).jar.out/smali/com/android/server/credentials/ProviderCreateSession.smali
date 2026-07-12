.class public final Lcom/android/server/credentials/ProviderCreateSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "ProviderCreateSession.java"


# instance fields
.field public final mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

.field public mProviderException:Landroid/credentials/CreateCredentialException;

.field public final mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;


# direct methods
.method public static bridge synthetic -$$Nest$msetUpFillInIntent(Lcom/android/server/credentials/ProviderCreateSession;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession;->setUpFillInIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/CreateCredentialRequest;Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    move v0, p4

    move-object p4, p2

    move-object p2, p6

    move-object p6, p5

    move p5, v0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    .line 148
    iput-object p7, p0, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    .line 149
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderSession;->setStatus(Lcom/android/server/credentials/ProviderSession$Status;)V

    .line 150
    new-instance p1, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    .line 151
    invoke-static {p8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;-><init>(Lcom/android/server/credentials/ProviderCreateSession;Landroid/content/ComponentName;)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    return-void
.end method

.method public static constructQueryPhaseRequest(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;Z)Landroid/service/credentials/BeginCreateCredentialRequest;
    .locals 0

    if-eqz p3, :cond_0

    .line 106
    new-instance p3, Landroid/service/credentials/BeginCreateCredentialRequest;

    invoke-direct {p3, p0, p1, p2}, Landroid/service/credentials/BeginCreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;)V

    return-object p3

    .line 112
    :cond_0
    new-instance p2, Landroid/service/credentials/BeginCreateCredentialRequest;

    invoke-direct {p2, p0, p1}, Landroid/service/credentials/BeginCreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method

.method public static createNewSession(Landroid/content/Context;ILandroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/CreateRequestSession;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderCreateSession;
    .locals 9

    .line 77
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getCapabilities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v1, Landroid/credentials/CreateCredentialRequest;

    iget-object v2, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 80
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v4

    .line 77
    invoke-static {v0, v1, v2, v4}, Lcom/android/server/credentials/ProviderCreateSession;->createProviderRequest(Ljava/util/List;Landroid/credentials/CreateCredentialRequest;Landroid/service/credentials/CallingAppInfo;Z)Landroid/service/credentials/CreateCredentialRequest;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 82
    new-instance v0, Lcom/android/server/credentials/ProviderCreateSession;

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v1, Landroid/credentials/CreateCredentialRequest;

    .line 88
    invoke-virtual {v1}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/CreateCredentialRequest;

    .line 89
    invoke-virtual {v2}, Landroid/credentials/CreateCredentialRequest;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v2

    iget-object v4, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v5, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v5, Landroid/credentials/CreateCredentialRequest;

    .line 92
    invoke-virtual {v5}, Landroid/credentials/CreateCredentialRequest;->alwaysSendAppInfoToProvider()Z

    move-result v5

    .line 88
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/credentials/ProviderCreateSession;->constructQueryPhaseRequest(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;Z)Landroid/service/credentials/BeginCreateCredentialRequest;

    move-result-object v6

    iget-object v8, p3, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/credentials/ProviderCreateSession;-><init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/CreateCredentialRequest;Ljava/lang/String;)V

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create provider session for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createProviderRequest(Ljava/util/List;Landroid/credentials/CreateCredentialRequest;Landroid/service/credentials/CallingAppInfo;Z)Landroid/service/credentials/CreateCredentialRequest;
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroid/credentials/CreateCredentialRequest;->isSystemProviderRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-object v1

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object p3

    .line 130
    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 131
    new-instance p0, Landroid/service/credentials/CreateCredentialRequest;

    .line 132
    invoke-virtual {p1}, Landroid/credentials/CreateCredentialRequest;->getCredentialData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Landroid/service/credentials/CreateCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0

    :cond_1
    return-object v1
.end method

.method private invokeCallbackOnInternalInvalidState()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    const-string v1, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onRemoteEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderCreateSession;->onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void
.end method


# virtual methods
.method public invokeSession()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    .line 254
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->setCallback(Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/BeginCreateCredentialRequest;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;)V

    :cond_0
    return-void
.end method

.method public final maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/CreateCredentialException;
    .locals 2

    .line 296
    const-string p0, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    const-string v0, "CredentialManager"

    if-nez p1, :cond_0

    .line 297
    const-string/jumbo p1, "pendingIntentResponse is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance p1, Landroid/credentials/CreateCredentialException;

    invoke-direct {p1, p0}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 300
    :cond_0
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->isValidResponse(Landroid/credentials/selection/ProviderPendingIntentResponse;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractCreateCredentialException(Landroid/content/Intent;)Landroid/credentials/CreateCredentialException;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 304
    const-string p1, "Pending intent contains provider exception"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 307
    :cond_2
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->isCancelledResponse(Landroid/credentials/selection/ProviderPendingIntentResponse;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 308
    new-instance p0, Landroid/credentials/CreateCredentialException;

    const-string p1, "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"

    invoke-direct {p0, p1}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 310
    :cond_3
    new-instance p1, Landroid/credentials/CreateCredentialException;

    invoke-direct {p1, p0}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 1

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderCreateSession;->maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/CreateCredentialException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {v0}, Landroid/credentials/CreateCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->invokeCallbackWithError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    .line 276
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractCreateCredentialResponse(Landroid/content/Intent;)Landroid/credentials/CreateCredentialResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V

    return-void

    .line 281
    :cond_1
    const-string p1, "CredentialManager"

    const-string/jumbo v0, "onSaveEntrySelected - no response or error found in pending intent response"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/android/server/credentials/ProviderCreateSession;->invokeCallbackOnInternalInvalidState()V

    return-void
.end method

.method public onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    return-void
.end method

.method public onProviderResponseFailure(ILjava/lang/Exception;)V
    .locals 0

    .line 164
    instance-of p1, p2, Landroid/credentials/CreateCredentialException;

    if-eqz p1, :cond_0

    .line 166
    check-cast p2, Landroid/credentials/CreateCredentialException;

    iput-object p2, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderException:Landroid/credentials/CreateCredentialException;

    .line 168
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {p2}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateFrameworkException(Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateExceptionStatus(Z)V

    .line 171
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object p2, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public onProviderResponseSuccess(Landroid/service/credentials/BeginCreateCredentialResponse;)V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote provider responded with a valid response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderCreateSession;->onSetInitialRemoteResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)V

    return-void
.end method

.method public bridge synthetic onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderCreateSession;->onProviderResponseSuccess(Landroid/service/credentials/BeginCreateCredentialResponse;)V

    return-void
.end method

.method public onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Lcom/android/server/credentials/RemoteCredentialService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    .line 182
    :cond_0
    const-string p0, "CredentialManager"

    const-string p1, "Component names different in onProviderServiceDied - this should not happen"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSetInitialRemoteResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)V
    .locals 3

    .line 193
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object v1

    .line 195
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->addResponseContent(Ljava/util/List;Landroid/service/credentials/RemoteEntry;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->isEmptyResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    check-cast v2, Lcom/android/server/credentials/RequestSession;

    iget-object v2, v2, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 198
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object v2

    .line 197
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 199
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    check-cast v2, Lcom/android/server/credentials/RequestSession;

    iget-object v2, v2, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 203
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object v2

    .line 202
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 204
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 2

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "CredentialManager"

    const-string/jumbo v1, "save_entry_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "remote_entry_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 245
    const-string p1, "Unsupported entry type selected"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lcom/android/server/credentials/ProviderCreateSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->getRemoteEntry(Ljava/lang/String;)Landroid/service/credentials/RemoteEntry;

    move-result-object p1

    if-nez p1, :cond_1

    .line 238
    const-string p1, "Unexpected remote entry key"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/android/server/credentials/ProviderCreateSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    .line 242
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/credentials/ProviderCreateSession;->onRemoteEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->getCreateEntry(Ljava/lang/String;)Landroid/service/credentials/CreateEntry;

    move-result-object p1

    if-nez p1, :cond_3

    .line 230
    const-string p1, "Unexpected save entry key"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/android/server/credentials/ProviderCreateSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    .line 234
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderCreateSession;->onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void
.end method

.method public prepareUiData()Landroid/credentials/selection/CreateCredentialProviderData;
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data for UI from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CredentialManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-static {v0}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->toCreateCredentialProviderData()Landroid/credentials/selection/CreateCredentialProviderData;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic prepareUiData()Landroid/credentials/selection/ProviderData;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession;->prepareUiData()Landroid/credentials/selection/CreateCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public final setUpFillInIntent()Landroid/content/Intent;
    .locals 2

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    const-string v1, "android.service.credentials.extra.CREATE_CREDENTIAL_REQUEST"

    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
