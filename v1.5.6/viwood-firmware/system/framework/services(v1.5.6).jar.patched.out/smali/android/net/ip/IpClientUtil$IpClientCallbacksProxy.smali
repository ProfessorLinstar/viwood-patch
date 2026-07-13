.class public Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;
.super Landroid/net/ip/IIpClientCallbacks$Stub;
.source "IpClientUtil.java"


# instance fields
.field public final mCb:Landroid/net/ip/IpClientCallbacks;


# direct methods
.method public constructor <init>(Landroid/net/ip/IpClientCallbacks;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 214
    const-string p0, "9dd581b4741329188b6e58107600f38a3eaa9be1"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/16 p0, 0x17

    return p0
.end method

.method public installPacketFilter([B)V
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->installPacketFilter([B)V

    return-void
.end method

.method public onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 1

    .line 143
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    .locals 0

    .line 120
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    return-void
.end method

.method public onPostDhcpAction()V
    .locals 0

    .line 109
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onPostDhcpAction()V

    return-void
.end method

.method public onPreDhcpAction()V
    .locals 0

    .line 104
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onPreDhcpAction()V

    return-void
.end method

.method public onPreconnectionStart(Ljava/util/List;)V
    .locals 0

    .line 191
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onPreconnectionStart(Ljava/util/List;)V

    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 1

    .line 137
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 1

    .line 133
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onQuit()V
    .locals 0

    .line 156
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onQuit()V

    return-void
.end method

.method public onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V
    .locals 0

    .line 198
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V

    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 0

    .line 150
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V

    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 0

    .line 178
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setFallbackMulticastFilter(Z)V

    return-void
.end method

.method public setMaxDtimMultiplier(I)V
    .locals 0

    .line 204
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setMaxDtimMultiplier(I)V

    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 0

    .line 185
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setNeighborDiscoveryOffload(Z)V

    return-void
.end method

.method public startReadPacketFilter()V
    .locals 0

    .line 171
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->startReadPacketFilter()V

    return-void
.end method
