.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;
.super Landroid/telecom/ConnectionService;
.source "CallMetadataSyncConnectionService.java"


# instance fields
.field final mActiveConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;",
            "Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;",
            ">;"
        }
    .end annotation
.end field

.field mAudioManager:Landroid/media/AudioManager;

.field public mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

.field final mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

.field mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCdmsi(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    .line 54
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 116
    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    .line 118
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 120
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    .line 121
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V

    return-void
.end method

.method public onCreateConnectionComplete(Landroid/telecom/Connection;)V
    .locals 3

    .line 225
    instance-of v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 228
    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->-$$Nest$minitialize(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;)V

    .line 229
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;

    .line 230
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->getAssociationId()I

    move-result v1

    .line 231
    invoke-virtual {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;-><init>(ILjava/lang/String;)V

    .line 229
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 7

    .line 128
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 131
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    move-result-object v5

    const/4 p1, 0x1

    .line 132
    invoke-virtual {v5, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setDirection(I)V

    .line 133
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.CALL_FACILITATOR_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;

    invoke-direct {v6, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;-><init>(Landroid/telecom/TelecomManager;Landroid/media/AudioManager;ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;)V

    const/16 p0, 0x10

    .line 148
    invoke-virtual {v1, p0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    .line 149
    invoke-virtual {v1}, Landroid/telecom/Connection;->setInitializing()V

    return-object v1
.end method

.method public onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unknown PhoneAccount"

    .line 158
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCreateOutgoingConnectionFailed for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CallMetadataSyncConnectionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 7

    if-eqz p1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 168
    new-instance v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-direct {v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    .line 170
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v5, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setId(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 171
    invoke-virtual {v5, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setStatus(I)V

    .line 172
    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    .line 176
    :goto_1
    const-string v3, "com.android.server.companion.datatransfer.contextsync.extra.CALL_FACILITATOR_ID"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 178
    :cond_2
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 179
    :goto_2
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v4, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setFacilitator(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;)V

    const/4 p1, 0x2

    .line 181
    invoke-virtual {v5, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setDirection(I)V

    .line 182
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->setCallerId(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 187
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 191
    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$3;

    invoke-direct {v6, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$3;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;-><init>(Landroid/telecom/TelecomManager;Landroid/media/AudioManager;ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;)V

    .line 203
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getCallerId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 205
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->addSelfOwnedCallId(Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    .line 207
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getFacilitator()Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {p1, p2, v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 206
    invoke-interface {p0, v4, p1}, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;->sendCrossDeviceSyncMessage(I[B)V

    .line 211
    invoke-virtual {v1}, Landroid/telecom/Connection;->setInitializing()V

    return-object v1
.end method

.method public onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unknown PhoneAccount"

    .line 220
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCreateOutgoingConnectionFailed for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CallMetadataSyncConnectionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
