.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;
.super Landroid/telecom/InCallService;
.source "CallMetadataSyncInCallService.java"


# instance fields
.field public mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

.field public final mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

.field final mCurrentCalls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Call;",
            "Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;",
            ">;"
        }
    .end annotation
.end field

.field mNumberOfActiveSyncAssociations:I

.field public final mTelecomCallback:Landroid/telecom/Call$Callback;


# direct methods
.method public static synthetic $r8$lambda$11nkymNg0jmMhUFoweHkcVIoht0(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;Landroid/telecom/Call;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->lambda$initializeCalls$2(Landroid/telecom/Call;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kh_TmD3nr5AK1Sc_BRzZim7OXuE(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;Landroid/telecom/Call;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->lambda$initializeCalls$1(Landroid/telecom/Call;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zAFgR1GNEGdXdpHNTe_Z5WEVJ_s(Landroid/telecom/Call;)Landroid/telecom/Call;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdoMute(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->doMute()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoSilence(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->doSilence()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoUnmute(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->doUnmute()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeCalls(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->initializeCalls()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msync(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msync(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 50
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Landroid/telecom/Call$Callback;

    .line 64
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    return-void
.end method


# virtual methods
.method public final doMute()V
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->setMuted(Z)V

    return-void
.end method

.method public final doSilence()V
    .locals 1

    .line 243
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    :cond_0
    return-void
.end method

.method public final doUnmute()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->setMuted(Z)V

    return-void
.end method

.method public getCallForId(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;",
            ">;)",
            "Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 183
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 184
    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    return-object p0
.end method

.method public final initializeCalls()V
    .locals 4

    .line 167
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 173
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$initializeCalls$1(Landroid/telecom/Call;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;
    .locals 2

    .line 170
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;-><init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final synthetic lambda$initializeCalls$2(Landroid/telecom/Call;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Landroid/telecom/Call$Callback;

    .line 172
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    .line 171
    invoke-virtual {p1, v0, p0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 3

    .line 193
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 196
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;-><init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V

    .line 195
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 198
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    :cond_0
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 2

    .line 204
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->removeSelfOwnedCallId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 158
    invoke-super {p0}, Landroid/telecom/InCallService;->onCreate()V

    .line 159
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    .line 161
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V

    :cond_0
    return-void
.end method

.method public onMuteStateChanged(Z)V
    .locals 2

    .line 216
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    const/4 v1, 0x0

    .line 219
    invoke-static {v1, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(Ljava/lang/String;I)[B

    move-result-object p1

    .line 218
    invoke-interface {v0, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->sendCrossDeviceSyncMessageToAllDevices(I[B)V

    :cond_1
    return-void
.end method

.method public onSilenceRinger()V
    .locals 3

    .line 226
    const-string v0, "enable_context_sync_telecom"

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 229
    invoke-static {v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(Ljava/lang/String;I)[B

    move-result-object v1

    .line 228
    invoke-interface {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->sendCrossDeviceSyncMessageToAllDevices(I[B)V

    :cond_0
    return-void
.end method

.method public final sync(I)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->crossDeviceSync(ILjava/util/Collection;)V

    return-void
.end method

.method public final sync(Landroid/companion/AssociationInfo;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->crossDeviceSync(Landroid/companion/AssociationInfo;Ljava/util/Collection;)V

    return-void
.end method
