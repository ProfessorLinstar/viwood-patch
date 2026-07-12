.class Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;
.super Ljava/lang/Object;
.source "CrossDeviceSyncController.java"


# instance fields
.field final mCallIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mExternallyOwnedCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

.field final mSelfOwnedCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;)V
    .locals 1

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    .line 729
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mExternallyOwnedCalls:Ljava/util/Set;

    .line 731
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    .line 736
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 737
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    return-void
.end method


# virtual methods
.method public addSelfOwnedCallId(Ljava/lang/String;)V
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearCallIdsForAssociationId(I)Ljava/util/Set;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public isExternallyOwned(Ljava/lang/String;)Z
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mExternallyOwnedCalls:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSelfOwned(Ljava/lang/String;)Z
    .locals 1

    .line 801
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 802
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public removeSelfOwnedCallId(Ljava/lang/String;)V
    .locals 0

    .line 793
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCalls(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .locals 7

    .line 742
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 743
    invoke-virtual {p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->getCalls()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 744
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 745
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->getCalls()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 750
    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 751
    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getFacilitator()Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 752
    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->isSelfOwned(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 753
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mExternallyOwnedCalls:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 754
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 755
    const-string v4, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 756
    const-string v4, "com.android.companion.datatransfer.contextsync.extra.IS_REMOTE_ORIGIN"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 757
    const-string v4, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->writeToBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 758
    const-string v4, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v4, "com.android.companion.datatransfer.contextsync.extra.FACILITATOR_ICON"

    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getAppIcon()[B

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 760
    iget-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    .line 763
    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getFacilitator()Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 761
    invoke-virtual {v4, p1, v6}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->getPhoneAccountHandle(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 764
    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getDirection()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 765
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v4, v3}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0

    .line 766
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getDirection()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 768
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 769
    const-string v6, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 771
    const-string v3, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 773
    invoke-virtual {v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->getCallerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 775
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v4, "sip"

    const/4 v6, 0x0

    invoke-static {v4, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v5}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 781
    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
