.class public Lcom/android/server/credentials/CredentialManagerUi;
.super Ljava/lang/Object;
.source "CredentialManagerUi.java"


# instance fields
.field public final mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnabledProviders:Ljava/util/Set;

.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$NpZC9t6beIPxE86X7-ZSuMuqTFk(Landroid/credentials/CredentialProviderInfo;)Landroid/credentials/selection/DisabledProviderData;
    .locals 1

    .line 175
    new-instance v0, Landroid/credentials/selection/DisabledProviderData;

    .line 176
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/credentials/selection/DisabledProviderData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$PaMmBJKd6vaxt_cqvRJOfj4tLH0(Landroid/credentials/CredentialProviderInfo;)Z
    .locals 0

    .line 174
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleUiResult(Lcom/android/server/credentials/CredentialManagerUi;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerUi;->handleUiResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;Ljava/util/Set;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$1;

    new-instance v1, Landroid/os/Handler;

    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/credentials/CredentialManagerUi$1;-><init>(Lcom/android/server/credentials/CredentialManagerUi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 136
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 137
    iput p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 138
    iput-object p3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    .line 139
    iput-object p4, p0, Lcom/android/server/credentials/CredentialManagerUi;->mEnabledProviders:Ljava/util/Set;

    .line 140
    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    return-void
.end method


# virtual methods
.method public createCancelIntent(Landroid/os/IBinder;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iget p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-static {v0, p1, v1, p2, p0}, Landroid/credentials/selection/IntentFactory;->createCancelUiIntent(Landroid/content/Context;Landroid/os/IBinder;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public createIntentForAutofill(Landroid/credentials/selection/RequestInfo;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/content/Intent;
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Landroid/os/ResultReceiver;

    iget v3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 213
    invoke-static {v0, p1, v1, v2, v3}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForAutofill(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-virtual {p2, v0, p1, p0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V

    .line 217
    invoke-virtual {p1}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;
    .locals 7

    .line 164
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mEnabledProviders:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x2

    .line 165
    invoke-static {v0, v1, v4, v2, v3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda0;-><init>()V

    .line 174
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda1;-><init>()V

    .line 175
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Landroid/os/ResultReceiver;

    iget v6, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    move-object v2, p1

    move-object v3, p2

    .line 179
    invoke-static/range {v1 .. v6}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-virtual {p3, p2, p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V

    .line 183
    invoke-virtual {p1}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 184
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getSessionIdCaller()I

    move-result p1

    .line 186
    const-string p2, "com.android.server.credentials.CredentialManagerUi.SESSION_ID_TRACK_ONE"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string p1, "com.android.server.credentials.CredentialManagerUi.SESSION_ID_TRACK_TWO"

    invoke-virtual {p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getSessionIdTrackTwo()I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 195
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v2, 0x0

    const/high16 v4, 0x2000000

    const/4 v5, 0x0

    .line 192
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    return-object p0
.end method

.method public final handleUiResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 108
    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 109
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    invoke-interface {p0}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiSelectorInvocationFailure()V

    return-void

    .line 104
    :cond_0
    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 105
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    invoke-interface {p0}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiSelectorInvocationFailure()V

    return-void

    .line 86
    :cond_1
    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 88
    invoke-static {p2}, Landroid/credentials/selection/UserSelectionDialogResult;->fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/UserSelectionDialogResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    invoke-interface {p0, p1}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V

    :cond_2
    return-void

    .line 100
    :cond_3
    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 101
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiCancellation(Z)V

    return-void

    .line 95
    :cond_4
    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 96
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    invoke-interface {p0, v0}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiCancellation(Z)V

    return-void
.end method

.method public setStatus(Lcom/android/server/credentials/CredentialManagerUi$UiStatus;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    return-void
.end method
