.class public final Lcom/android/server/credentials/ProviderClearSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "ProviderClearSession.java"

# interfaces
.implements Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;


# instance fields
.field public mProviderException:Landroid/credentials/ClearCredentialStateException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/ClearCredentialStateRequest;)V
    .locals 1

    .line 76
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    move v0, p4

    move-object p4, p2

    move-object p2, p6

    move-object p6, p5

    move p5, v0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    .line 78
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderSession;->setStatus(Lcom/android/server/credentials/ProviderSession$Status;)V

    return-void
.end method

.method public static createNewSession(Landroid/content/Context;ILandroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ClearRequestSession;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderClearSession;
    .locals 9

    .line 53
    iget-object v0, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v0, Landroid/credentials/ClearCredentialStateRequest;

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 54
    invoke-static {v0, v1}, Lcom/android/server/credentials/ProviderClearSession;->createProviderRequest(Landroid/credentials/ClearCredentialStateRequest;Landroid/service/credentials/CallingAppInfo;)Landroid/service/credentials/ClearCredentialStateRequest;

    move-result-object v8

    .line 57
    new-instance v2, Lcom/android/server/credentials/ProviderClearSession;

    move-object v3, p0

    move v6, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/credentials/ProviderClearSession;-><init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/ClearCredentialStateRequest;)V

    return-object v2
.end method

.method public static createProviderRequest(Landroid/credentials/ClearCredentialStateRequest;Landroid/service/credentials/CallingAppInfo;)Landroid/service/credentials/ClearCredentialStateRequest;
    .locals 1

    .line 66
    new-instance v0, Landroid/service/credentials/ClearCredentialStateRequest;

    .line 68
    invoke-virtual {p0}, Landroid/credentials/ClearCredentialStateRequest;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/service/credentials/ClearCredentialStateRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public invokeSession()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    .line 136
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->setCallback(Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/ClearCredentialStateRequest;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;)V

    :cond_0
    return-void
.end method

.method public onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    return-void
.end method

.method public onProviderResponseFailure(ILjava/lang/Exception;)V
    .locals 0

    .line 92
    instance-of p1, p2, Landroid/credentials/ClearCredentialStateException;

    if-eqz p1, :cond_0

    .line 93
    check-cast p2, Landroid/credentials/ClearCredentialStateException;

    iput-object p2, p0, Lcom/android/server/credentials/ProviderClearSession;->mProviderException:Landroid/credentials/ClearCredentialStateException;

    .line 95
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {p2}, Landroid/credentials/ClearCredentialStateException;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateFrameworkException(Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateExceptionStatus(Z)V

    .line 98
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object p2, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public bridge synthetic onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderClearSession;->onProviderResponseSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onProviderResponseSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote provider responded with a valid response: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CredentialManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponseSet:Ljava/lang/Boolean;

    .line 85
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Lcom/android/server/credentials/RemoteCredentialService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    .line 109
    :cond_0
    const-string p0, "CredentialManager"

    const-string p1, "Component names different in onProviderServiceDied - this should not happen"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 0

    .line 0
    return-void
.end method

.method public prepareUiData()Landroid/credentials/selection/ProviderData;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
