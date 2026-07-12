.class public final Lcom/android/server/credentials/ProviderGetSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "ProviderGetSession.java"

# interfaces
.implements Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;


# instance fields
.field public final mBeginGetOptionToCredentialOptionMap:Ljava/util/Map;

.field public final mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mCompleteRequest:Landroid/credentials/GetCredentialRequest;

.field public mProviderException:Landroid/credentials/GetCredentialException;

.field public final mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;


# direct methods
.method public static synthetic $r8$lambda$23mPFs-ic7IpBrwfHZTOzCdIWPU(Landroid/service/credentials/BeginGetCredentialRequest$Builder;Ljava/util/Map;Landroid/credentials/CredentialOption;)V
    .locals 4

    .line 166
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/service/credentials/BeginGetCredentialOption;

    .line 169
    invoke-virtual {p2}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/credentials/CredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/service/credentials/BeginGetCredentialOption;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0, v1}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->addBeginGetCredentialOption(Landroid/service/credentials/BeginGetCredentialOption;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 171
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$Tn_Fgo2Q82SnPVcoincPw538KEM(Landroid/util/Pair;)Z
    .locals 2

    .line 566
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/credentials/selection/AuthenticationEntry;

    invoke-virtual {v0}, Landroid/credentials/selection/AuthenticationEntry;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/selection/AuthenticationEntry;

    .line 568
    invoke-virtual {p0}, Landroid/credentials/selection/AuthenticationEntry;->getStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static bridge synthetic -$$Nest$msetUpFillInIntentForRemoteEntry(Lcom/android/server/credentials/ProviderGetSession;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->setUpFillInIntentForRemoteEntry()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetUpFillInIntentWithFinalRequest(Lcom/android/server/credentials/ProviderGetSession;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderGetSession;->setUpFillInIntentWithFinalRequest(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetUpFillInIntentWithQueryRequest(Lcom/android/server/credentials/ProviderGetSession;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->setUpFillInIntentWithQueryRequest()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .line 248
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    move v0, p4

    move-object p4, p2

    move-object p2, p6

    move-object p6, p5

    move p5, v0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    .line 250
    iput-object p7, p0, Lcom/android/server/credentials/ProviderGetSession;->mCompleteRequest:Landroid/credentials/GetCredentialRequest;

    .line 251
    iput-object p8, p0, Lcom/android/server/credentials/ProviderGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 252
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderSession;->setStatus(Lcom/android/server/credentials/ProviderSession$Status;)V

    .line 253
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mBeginGetOptionToCredentialOptionMap:Ljava/util/Map;

    .line 254
    new-instance p1, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 255
    invoke-static {p10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;-><init>(Lcom/android/server/credentials/ProviderGetSession;Landroid/content/ComponentName;)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    return-void
.end method

.method public static checkSystemProviderRequirement(Landroid/credentials/CredentialOption;Z)Z
    .locals 0

    .line 232
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->isSystemProviderRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 233
    const-string p0, "CredentialManager"

    const-string p1, "System provider required, but this service is not a system provider"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static constructQueryPhaseRequest(Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;ZLjava/util/Map;)Landroid/service/credentials/BeginGetCredentialRequest;
    .locals 2

    .line 164
    new-instance v0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    invoke-direct {v0}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;-><init>()V

    .line 165
    invoke-virtual {p0}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p3}, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/credentials/BeginGetCredentialRequest$Builder;Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->setCallingAppInfo(Landroid/service/credentials/CallingAppInfo;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 176
    :cond_0
    invoke-virtual {v0}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->build()Landroid/service/credentials/BeginGetCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createNewSession(Landroid/content/Context;ILandroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/GetCandidateRequestSession;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderGetSession;
    .locals 11

    .line 131
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getCapabilities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v1, Landroid/credentials/GetCredentialRequest;

    iget-object v2, p3, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    invoke-static {v0, v1, p2, v2}, Lcom/android/server/credentials/ProviderGetSession;->filterOptions(Ljava/util/List;Landroid/credentials/GetCredentialRequest;Landroid/credentials/CredentialProviderInfo;Ljava/lang/String;)Landroid/credentials/GetCredentialRequest;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 135
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 137
    new-instance v0, Lcom/android/server/credentials/ProviderGetSession;

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v2, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/GetCredentialRequest;

    .line 145
    invoke-virtual {v2}, Landroid/credentials/GetCredentialRequest;->alwaysSendAppInfoToProvider()Z

    move-result v2

    .line 143
    invoke-static {v7, v1, v2, v9}, Lcom/android/server/credentials/ProviderGetSession;->constructQueryPhaseRequest(Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;ZLjava/util/Map;)Landroid/service/credentials/BeginGetCredentialRequest;

    move-result-object v6

    iget-object v8, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v10, p3, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/credentials/ProviderGetSession;-><init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create provider session for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createNewSession(Landroid/content/Context;ILandroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/GetRequestSession;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderGetSession;
    .locals 11

    .line 95
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getCapabilities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v1, Landroid/credentials/GetCredentialRequest;

    iget-object v2, p3, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    invoke-static {v0, v1, p2, v2}, Lcom/android/server/credentials/ProviderGetSession;->filterOptions(Ljava/util/List;Landroid/credentials/GetCredentialRequest;Landroid/credentials/CredentialProviderInfo;Ljava/lang/String;)Landroid/credentials/GetCredentialRequest;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 99
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 101
    new-instance v0, Lcom/android/server/credentials/ProviderGetSession;

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v2, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/GetCredentialRequest;

    .line 109
    invoke-virtual {v2}, Landroid/credentials/GetCredentialRequest;->alwaysSendAppInfoToProvider()Z

    move-result v2

    .line 107
    invoke-static {v7, v1, v2, v9}, Lcom/android/server/credentials/ProviderGetSession;->constructQueryPhaseRequest(Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;ZLjava/util/Map;)Landroid/service/credentials/BeginGetCredentialRequest;

    move-result-object v6

    iget-object v8, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v10, p3, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/credentials/ProviderGetSession;-><init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create provider session for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static filterOptions(Ljava/util/List;Landroid/credentials/GetCredentialRequest;Landroid/credentials/CredentialProviderInfo;Ljava/lang/String;)Landroid/credentials/GetCredentialRequest;
    .locals 5

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filtering request options for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 189
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 190
    const-string p0, "Skipping filtering of options for hybrid service"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 193
    :cond_0
    const-string p3, "Could not parse hybrid service while filtering options"

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/CredentialOption;

    .line 198
    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-static {v2, p2}, Lcom/android/server/credentials/ProviderGetSession;->isProviderAllowed(Landroid/credentials/CredentialOption;Landroid/credentials/CredentialProviderInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/credentials/ProviderGetSession;->checkSystemProviderRequirement(Landroid/credentials/CredentialOption;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Option of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " meets all filteringconditions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 207
    new-instance p0, Landroid/credentials/GetCredentialRequest$Builder;

    .line 208
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialRequest$Builder;-><init>(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0, p3}, Landroid/credentials/GetCredentialRequest$Builder;->setCredentialOptions(Ljava/util/List;)Landroid/credentials/GetCredentialRequest$Builder;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Landroid/credentials/GetCredentialRequest$Builder;->build()Landroid/credentials/GetCredentialRequest;

    move-result-object p0

    return-object p0

    .line 212
    :cond_3
    const-string p0, "No options filtered"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isProviderAllowed(Landroid/credentials/CredentialOption;Landroid/credentials/CredentialProviderInfo;)Z
    .locals 2

    .line 218
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object p0

    .line 223
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 222
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 224
    const-string p0, "CredentialManager"

    const-string p1, "Provider allow list specified but does not contain this provider"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 451
    :cond_0
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->isValidResponse(Landroid/credentials/selection/ProviderPendingIntentResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractGetCredentialException(Landroid/content/Intent;)Landroid/credentials/GetCredentialException;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p0

    .line 457
    :cond_2
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->isCancelledResponse(Landroid/credentials/selection/ProviderPendingIntentResponse;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 458
    new-instance p0, Landroid/credentials/GetCredentialException;

    const-string p1, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 460
    :cond_3
    new-instance p0, Landroid/credentials/GetCredentialException;

    const-string p1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 509
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    move-result-object v1

    .line 510
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getActions()Ljava/util/List;

    move-result-object v2

    .line 511
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getAuthenticationActions()Ljava/util/List;

    move-result-object v3

    .line 512
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object v4

    move v5, p2

    .line 508
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->addResponseContent(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/service/credentials/RemoteEntry;Z)V

    return-void
.end method

.method public containsEmptyAuthEntriesOnly()Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {v0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$fgetmUiCredentialEntries(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {v0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$fgetmUiRemoteEntry(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$fgetmUiAuthenticationEntries(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Ljava/util/Map;

    move-result-object p0

    .line 565
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCredentialEntryTypes()Ljava/util/Set;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->getCredentialEntryTypes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final invokeCallbackOnInternalInvalidState()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    const-string v1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invokeSession()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    .line 364
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->setCallback(Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/BeginGetCredentialRequest;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;)V

    :cond_0
    return-void
.end method

.method public final onActionEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 2

    .line 520
    const-string v0, "CredentialManager"

    const-string/jumbo v1, "onActionEntrySelected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void
.end method

.method public final onAuthenticationEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/credentials/ProviderGetSession;->maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 482
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {p1, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectAuthenticationExceptionStatus(Z)V

    .line 483
    invoke-virtual {v1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-virtual {v1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->invokeCallbackWithError(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 492
    :cond_1
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    .line 491
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractResponseContent(Landroid/content/Intent;)Landroid/service/credentials/BeginGetCredentialResponse;

    move-result-object p1

    .line 493
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    if-eqz p1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {v1, p1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/BeginGetCredentialResponse;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 495
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderGetSession;->addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V

    return v2

    :cond_2
    return v0
.end method

.method public final onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 1

    if-nez p1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    .line 424
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/credentials/ProviderGetSession;->maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->invokeCallbackWithError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 434
    :cond_1
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    .line 433
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractGetCredentialResponse(Landroid/content/Intent;)Landroid/credentials/GetCredentialResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V

    return-void

    .line 440
    :cond_2
    const-string p1, "CredentialManager"

    const-string v0, "Pending intent response contains no credential, or error for a credential entry"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState()V

    return-void
.end method

.method public onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    return-void
.end method

.method public onProviderResponseFailure(ILjava/lang/Exception;)V
    .locals 0

    .line 268
    instance-of p1, p2, Landroid/credentials/GetCredentialException;

    if-eqz p1, :cond_0

    .line 269
    check-cast p2, Landroid/credentials/GetCredentialException;

    iput-object p2, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderException:Landroid/credentials/GetCredentialException;

    .line 271
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {p2}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateFrameworkException(Ljava/lang/String;)V

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateExceptionStatus(Z)V

    .line 274
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object p2, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public onProviderResponseSuccess(Landroid/service/credentials/BeginGetCredentialResponse;)V
    .locals 2

    .line 261
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

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderGetSession;->onSetInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;)V

    return-void
.end method

.method public bridge synthetic onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Landroid/service/credentials/BeginGetCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderGetSession;->onProviderResponseSuccess(Landroid/service/credentials/BeginGetCredentialResponse;)V

    return-void
.end method

.method public onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    .line 281
    invoke-virtual {p1}, Lcom/android/server/credentials/RemoteCredentialService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    .line 285
    :cond_0
    const-string p0, "CredentialManager"

    const-string p1, "Component names different in onProviderServiceDied - this should not happen"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRemoteEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void
.end method

.method public final onSetInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;)V
    .locals 3

    .line 527
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 528
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderGetSession;->addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V

    .line 530
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {v0, p1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/BeginGetCredentialResponse;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 533
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 539
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUiEntrySelected with entryType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and entryKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "action_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "credential_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "authentication_action_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "remote_entry_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 355
    const-string p1, "Unsupported entry type selected"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    .line 312
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->getActionEntry(Ljava/lang/String;)Landroid/service/credentials/Action;

    move-result-object p1

    if-nez p1, :cond_4

    .line 314
    const-string p1, "Unexpected action entry key"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    .line 318
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onActionEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void

    .line 302
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 303
    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->getCredentialEntry(Ljava/lang/String;)Landroid/service/credentials/CredentialEntry;

    move-result-object p1

    if-nez p1, :cond_5

    .line 305
    const-string p1, "Unexpected credential entry key"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    .line 309
    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void

    .line 321
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 322
    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->getAuthenticationAction(Ljava/lang/String;)Landroid/service/credentials/Action;

    move-result-object p1

    .line 323
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->createAuthenticationBrowsingMetric()V

    if-nez p1, :cond_6

    .line 325
    const-string p1, "Unexpected authenticationEntry key"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    .line 330
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onAuthenticationEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 332
    const-string p1, "Additional content received - removing authentication entry"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->removeAuthenticationAction(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {p1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 335
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object p2, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    :cond_7
    return-void

    .line 339
    :cond_8
    const-string p1, "Additional content not received from authentication entry"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 341
    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updateAuthEntryWithNoCredentialsReceived(Ljava/lang/String;)V

    .line 342
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object p2, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    .line 347
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->getRemoteEntry(Ljava/lang/String;)Landroid/service/credentials/RemoteEntry;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 348
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onRemoteEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void

    .line 350
    :cond_9
    const-string p1, "Unexpected remote entry key"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x42312059 -> :sswitch_3
        0x4680f8fd -> :sswitch_2
        0x4806b277 -> :sswitch_1
        0x6e6640d6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareUiData()Landroid/credentials/selection/GetCredentialProviderData;
    .locals 3

    .line 377
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 378
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

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {v0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->toGetCredentialProviderData()Landroid/credentials/selection/GetCredentialProviderData;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic prepareUiData()Landroid/credentials/selection/ProviderData;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->prepareUiData()Landroid/credentials/selection/GetCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public final setUpFillInIntentForRemoteEntry()Landroid/content/Intent;
    .locals 3

    .line 793
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/service/credentials/GetCredentialRequest;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mCompleteRequest:Landroid/credentials/GetCredentialRequest;

    .line 795
    invoke-virtual {p0}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    .line 793
    const-string p0, "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final setUpFillInIntentWithFinalRequest(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/android/server/credentials/ProviderGetSession;->mBeginGetOptionToCredentialOptionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/CredentialOption;

    if-nez p1, :cond_0

    .line 395
    const-string p0, "CredentialManager"

    const-string p1, "Id from Credential Entry does not resolve to a valid option"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 398
    :cond_0
    new-instance v1, Landroid/service/credentials/GetCredentialRequest;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 402
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    .line 398
    const-string p0, "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final setUpFillInIntentWithQueryRequest()Landroid/content/Intent;
    .locals 2

    .line 406
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 407
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcelable;

    const-string v1, "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_REQUEST"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public updateAuthEntriesStatusFromAnotherSession()V
    .locals 1

    .line 555
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updateAuthEntryWithNoCredentialsReceived(Ljava/lang/String;)V

    return-void
.end method
