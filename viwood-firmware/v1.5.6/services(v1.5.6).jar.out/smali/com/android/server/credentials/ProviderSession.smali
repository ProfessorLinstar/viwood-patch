.class public abstract Lcom/android/server/credentials/ProviderSession;
.super Ljava/lang/Object;
.source "ProviderSession.java"

# interfaces
.implements Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;


# instance fields
.field public final mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mProviderCancellationSignal:Landroid/os/ICancellationSignal;

.field public final mProviderInfo:Landroid/credentials/CredentialProviderInfo;

.field public final mProviderRequest:Ljava/lang/Object;

.field public mProviderResponse:Ljava/lang/Object;

.field public mProviderResponseSet:Ljava/lang/Boolean;

.field public final mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

.field public mProviderSessionUid:I

.field public final mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

.field public mStatus:Lcom/android/server/credentials/ProviderSession$Status;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NOT_STARTED:Lcom/android/server/credentials/ProviderSession$Status;

    iput-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 73
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponseSet:Ljava/lang/Boolean;

    .line 150
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderInfo:Landroid/credentials/CredentialProviderInfo;

    .line 152
    iput-object p2, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    .line 153
    iput-object p3, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 154
    iput p5, p0, Lcom/android/server/credentials/ProviderSession;->mUserId:I

    .line 155
    iput-object p4, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 156
    iput-object p6, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    .line 157
    invoke-static {p1, p4, p5}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionUid:I

    .line 158
    new-instance p1, Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    check-cast p3, Lcom/android/server/credentials/RequestSession;

    iget-object p2, p3, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 159
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getSessionIdTrackTwo()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    return-void
.end method

.method public static generateUniqueId()Ljava/lang/String;
    .locals 1

    .line 176
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCompletionStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z
    .locals 1

    .line 114
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isStatusWaitingForRemoteResponse(Lcom/android/server/credentials/ProviderSession$Status;)Z
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTerminatingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z
    .locals 1

    .line 106
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z
    .locals 1

    .line 90
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public cancelProviderRemoteSession()V
    .locals 2

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->cancel()V

    .line 189
    :cond_0
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/ProviderSession;->setStatus(Lcom/android/server/credentials/ProviderSession$Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 191
    const-string v0, "CredentialManager"

    const-string v1, "Issue while cancelling provider session: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "CredentialManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 258
    const-string p0, "Remote entry being dropped as it is not from the service configured by the OEM."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 265
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 266
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x100000

    .line 267
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    .line 265
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 268
    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PROVIDE_REMOTE_CREDENTIALS"

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, -0x1

    .line 269
    invoke-virtual {v2, v3, v4, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return v1

    .line 275
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getProviderSessionMetric()Lcom/android/server/credentials/metrics/ProviderSessionMetric;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    return-object p0
.end method

.method public getStatus()Lcom/android/server/credentials/ProviderSession$Status;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    return-object p0
.end method

.method public invokeCallbackWithError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract invokeSession()V
.end method

.method public isProviderResponseSet()Ljava/lang/Boolean;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponseSet:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public abstract onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
.end method

.method public abstract prepareUiData()Landroid/credentials/selection/ProviderData;
.end method

.method public setStatus(Lcom/android/server/credentials/ProviderSession$Status;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    return-void
.end method

.method public startCandidateMetrics()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    check-cast p0, Lcom/android/server/credentials/RequestSession;

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 230
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object p0

    .line 229
    invoke-virtual {v0, p0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateMetricSetupViaInitialMetric(Lcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    return-void
.end method

.method public updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 9

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderSession;->setStatus(Lcom/android/server/credentials/ProviderSession$Status;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderInfo:Landroid/credentials/CredentialProviderInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    .line 219
    :goto_0
    iget-object v3, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-static {p1}, Lcom/android/server/credentials/ProviderSession;->isTerminatingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    invoke-static {p1}, Lcom/android/server/credentials/ProviderSession;->isStatusWaitingForRemoteResponse(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    .line 221
    :goto_2
    invoke-static {p1}, Lcom/android/server/credentials/ProviderSession;->isCompletionStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v2

    :goto_4
    iget v6, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionUid:I

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    if-ne p2, v0, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move v7, v1

    .line 219
    :goto_5
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateMetricUpdate(ZZIZZ)V

    .line 225
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p1, p0, p2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method
