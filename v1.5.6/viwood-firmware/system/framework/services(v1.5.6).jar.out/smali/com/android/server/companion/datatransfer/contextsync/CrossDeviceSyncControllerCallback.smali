.class public abstract Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;
.super Ljava/lang/Object;
.source "CrossDeviceSyncControllerCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanUpCallIds(Ljava/util/Set;)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract processContextSyncMessage(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
.end method

.method public requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateNumberOfActiveSyncAssociations(IZ)V
    .locals 0

    .line 0
    return-void
.end method
