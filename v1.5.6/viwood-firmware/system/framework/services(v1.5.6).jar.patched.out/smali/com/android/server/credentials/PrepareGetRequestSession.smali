.class public Lcom/android/server/credentials/PrepareGetRequestSession;
.super Lcom/android/server/credentials/GetRequestSession;
.source "PrepareGetRequestSession.java"


# instance fields
.field public final mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;


# direct methods
.method public static synthetic $r8$lambda$-0CQtGfTShVctYyJ1iEj_6UrIqw(Landroid/credentials/selection/GetCredentialProviderData;)Z
    .locals 0

    .line 164
    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData;->getRemoteEntry()Landroid/credentials/selection/Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$HuLWy8LRkXrj9hkxoS-B-FySBgA(Landroid/credentials/selection/ProviderData;)Landroid/credentials/selection/GetCredentialProviderData;
    .locals 0

    .line 173
    check-cast p0, Landroid/credentials/selection/GetCredentialProviderData;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jze0f_JthyeSqOdIvaCCsO0mnmY(Lcom/android/server/credentials/ProviderSession;)Lcom/android/server/credentials/ProviderGetSession;
    .locals 0

    .line 184
    check-cast p0, Lcom/android/server/credentials/ProviderGetSession;

    return-object p0
.end method

.method public static synthetic $r8$lambda$NpzfcPY27GOs30tJSwFfmPyMSjU(Lcom/android/server/credentials/ProviderGetSession;)Ljava/util/stream/Stream;
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->getCredentialEntryTypes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SM2dfiXALxAfPkoVa4oJa866xEo(Landroid/credentials/selection/ProviderData;)Landroid/credentials/selection/GetCredentialProviderData;
    .locals 0

    .line 162
    check-cast p0, Landroid/credentials/selection/GetCredentialProviderData;

    return-object p0
.end method

.method public static synthetic $r8$lambda$_f5O0h24JrtNICOPmJRXuMQPfJM(Landroid/credentials/selection/GetCredentialProviderData;)Z
    .locals 0

    .line 175
    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData;->getAuthenticationEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JLandroid/credentials/IPrepareGetCredentialCallback;)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p12}, Lcom/android/server/credentials/GetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    .line 61
    invoke-virtual {p7}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda0;-><init>()V

    .line 62
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 63
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    .line 62
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 63
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 67
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const/4 p2, 0x1

    invoke-virtual {p1, p7, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;Z)V

    .line 70
    iput-object p13, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    .line 72
    const-string p0, "CredentialManager"

    const-string p1, "PrepareGetRequestSession constructed."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final constructEmptyPendingResponseAndInvokeCallback(Z)V
    .locals 6

    .line 144
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    new-instance v0, Landroid/credentials/PrepareGetCredentialResponseInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    invoke-interface {p0, v0}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 152
    const-string p1, "CredentialManager"

    const-string v0, "EXCEPTION while mPendingCallback.onResponse"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final constructPendingResponseAndInvokeCallback(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V
    .locals 6

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    new-instance v0, Landroid/credentials/PrepareGetCredentialResponseInternal;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    invoke-interface {p0, v0}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 137
    const-string p1, "CredentialManager"

    const-string p2, "EXCEPTION while mPendingCallback.onResponse"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getCredentialResultTypes(Z)Ljava/util/Set;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>()V

    .line 184
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda1;-><init>()V

    .line 185
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 187
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getUiIntent()Landroid/app/PendingIntent;
    .locals 8

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/ProviderSession;

    .line 193
    invoke-virtual {v2}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/selection/ProviderData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v3, Landroid/credentials/GetCredentialRequest;

    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 201
    invoke-virtual {v4}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 202
    invoke-virtual {v6}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    invoke-static {v5, v6, v7}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    .line 200
    invoke-static {v2, v3, v4, v5, v6}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZZ)Landroid/credentials/selection/RequestInfo;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 199
    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/credentials/CredentialManagerUi;->createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasAuthenticationResults(Ljava/util/ArrayList;Z)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda2;-><init>()V

    .line 173
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;-><init>()V

    .line 174
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final hasRemoteResults(Ljava/util/ArrayList;Z)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda4;-><init>()V

    .line 162
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda5;-><init>()V

    .line 163
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 6

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider Status changed with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/android/server/credentials/PrepareGetRequestSession$1;->$SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 123
    const-string p0, "Unexpected source"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    sget-object p3, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, p3, :cond_1

    .line 117
    invoke-super {p0, p2}, Lcom/android/server/credentials/GetRequestSession;->handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V

    return-void

    .line 118
    :cond_1
    sget-object p2, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, p2, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    return-void

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return-void

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 91
    invoke-virtual {p2}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"

    .line 89
    invoke-static {p1, p2, p3}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 93
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/server/credentials/PrepareGetRequestSession;->getCredentialResultTypes(Z)Ljava/util/Set;

    move-result-object v2

    .line 100
    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/PrepareGetRequestSession;->hasAuthenticationResults(Ljava/util/ArrayList;Z)Z

    move-result v3

    .line 102
    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/PrepareGetRequestSession;->hasRemoteResults(Ljava/util/ArrayList;Z)Z

    move-result v4

    .line 103
    invoke-virtual {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->getUiIntent()Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, p0

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/credentials/PrepareGetRequestSession;->constructPendingResponseAndInvokeCallback(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    return-void

    :cond_5
    move-object v0, p0

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/PrepareGetRequestSession;->constructEmptyPendingResponseAndInvokeCallback(Z)V

    return-void
.end method
