.class public Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;
.super Landroid/hardware/contexthub/IEndpointCallback$Stub;
.source "ContextHubHalEndpointCallback.java"


# instance fields
.field public final mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;

.field public final mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/hardware/contexthub/IEndpointCallback$Stub;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;

    .line 67
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 137
    const-string p0, "df80fdbb6f95a8a2988bc72b7f08f891847b80eb"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public onCloseEndpointSession(IB)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onCloseEndpointSession(IB)V

    return-void
.end method

.method public onEndpointSessionOpenComplete(I)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    invoke-interface {p0, p1}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onEndpointSessionOpenComplete(I)V

    return-void
.end method

.method public onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V
    .locals 5

    .line 97
    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-wide v1, p2, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iget-wide v3, p2, Landroid/hardware/contexthub/EndpointId;->id:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    .line 99
    new-instance p2, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-wide v1, p3, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iget-wide v3, p3, Landroid/hardware/contexthub/EndpointId;->id:J

    invoke-direct {p2, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    .line 101
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    invoke-interface {p0, p1, v0, p2, p4}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)V

    return-void
.end method

.method public onEndpointStarted([Landroid/hardware/contexthub/EndpointInfo;)V
    .locals 4

    .line 73
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/hardware/contexthub/HubEndpointInfo;

    const/4 v1, 0x0

    .line 77
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 78
    new-instance v2, Landroid/hardware/contexthub/HubEndpointInfo;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;

    invoke-interface {p0, v0}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;->onEndpointStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method

.method public onEndpointStopped([Landroid/hardware/contexthub/EndpointId;B)V
    .locals 4

    .line 85
    array-length v0, p1

    new-array v0, v0, [Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    const/4 v1, 0x0

    .line 87
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 88
    new-instance v2, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(Landroid/hardware/contexthub/EndpointId;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;

    invoke-interface {p0, v0, p2}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;->onEndpointStopped([Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;B)V

    return-void
.end method

.method public onMessageDeliveryStatusReceived(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    iget v0, p2, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iget-byte p2, p2, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onMessageDeliveryStatusReceived(IIB)V

    return-void
.end method

.method public onMessageReceived(ILandroid/hardware/contexthub/Message;)V
    .locals 0

    .line 117
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHubMessage(Landroid/hardware/contexthub/Message;)Landroid/hardware/contexthub/HubMessage;

    move-result-object p2

    .line 118
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    return-void
.end method
