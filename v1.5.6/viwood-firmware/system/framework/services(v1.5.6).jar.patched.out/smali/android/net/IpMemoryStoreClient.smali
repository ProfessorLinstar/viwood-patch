.class public abstract Landroid/net/IpMemoryStoreClient;
.super Ljava/lang/Object;
.source "IpMemoryStoreClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpMemoryStoreClient"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$-agmG3QnCnTGjpVGuNCsN8Zf7Ko(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 2

    .line 193
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3NXT457T82CtcVsg8GobBtlPKQ4(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$isSameNetwork$10(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4j3dNF67o6NAOGYtmRLAylaDeoE(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 2

    .line 245
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A1dJWBt0zGMwIg94ZNfwEJPFkqQ(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkAttributes$13(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CVFuVz16jcHPC8U-Sx6-K762Gvc(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 2

    .line 171
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/Status;Landroid/net/ipmemorystore/SameL3NetworkResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EqiuXKS_kMkqzw8-ZS1i2veSvM8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 2

    .line 149
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->onL2KeyResponse(Landroid/net/ipmemorystore/Status;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F4PDL_SdP2inoqkygo2e8UmmOOk(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    .line 145
    invoke-virtual {p1}, Landroid/net/ipmemorystore/NetworkAttributes;->toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p1

    .line 146
    invoke-static {p2}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object p2

    .line 145
    invoke-interface {p0, p1, p2}, Landroid/net/IIpMemoryStore;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FtdNBOd4lhXUNlGtVAFL2R3nqEc(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkAttributes$1(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gtfbn8H-Hmv1h-JCbed5WTdnnEM(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0

    .line 168
    invoke-static {p3}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object p3

    .line 167
    invoke-interface {p0, p1, p2, p3}, Landroid/net/IIpMemoryStore;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HNYtD8BPOyUv7tcyyeuKiVvlE9o(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$delete$19(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lwi-UV2KJSgpGNur1LVnGMVszhA(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0

    .line 214
    invoke-static {p4}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object p4

    .line 213
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/net/IIpMemoryStore;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M8u7jyyYWsGpRh7kG9dUg0fqBSY(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 2

    .line 277
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PYxMl-8VTNMxiGLoTuj7FUrL7Ss(Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 288
    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->factoryReset()V

    return-void
.end method

.method public static synthetic $r8$lambda$SfabcXRuWB5I60P_0BL0YEqo97E(Landroid/net/IpMemoryStoreClient;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/net/IpMemoryStoreClient;->lambda$factoryReset$25(Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U6AxfDXBAs4ISSIivSALg-8kfCw(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$deleteCluster$22(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvHZ-Vs5bUuhBEW_zmyd8lOPYGQ(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2

    .line 123
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XYZsuAt7vHRidyIn_z64I1F9I0g(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkEventCount$27(Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZmYKgDCCOgRrpoQcjfpEnx8avws(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkEvent$30(Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dglMsU1c29thjop9O2HnPUSy4-0(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveBlob$16(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gKa5xDJhUAOR6d9F-d-TV7ZaWow(Landroid/net/IIpMemoryStore;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 0

    .line 316
    invoke-static {p4}, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener;

    move-result-object p4

    .line 315
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/net/IIpMemoryStore;->retrieveNetworkEventCount(Ljava/lang/String;[J[ILandroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gzljqXXPBsYa9XLZEzQWqEbOr-0(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2

    .line 98
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h6bbP-SfaTFo7Ff09F-yXftwhEc(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2

    .line 350
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hICnBCSsnrXREBHQ8OnhnN1ZUjs(Landroid/net/IIpMemoryStore;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    .line 346
    invoke-static {p7}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object p7

    .line 345
    invoke-interface/range {p0 .. p7}, Landroid/net/IIpMemoryStore;->storeNetworkEvent(Ljava/lang/String;JJILandroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kQgPvbRYTAs7OHCT5VWHVYBvR5s(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    .line 241
    invoke-static {p3}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnDeleteStatusListener;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroid/net/IIpMemoryStore;->delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kw0C-x-oOTHnTWTYjF33o57o8-Q(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    .line 273
    invoke-static {p3}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnDeleteStatusListener;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object p3

    .line 272
    invoke-interface {p0, p1, p2, p3}, Landroid/net/IIpMemoryStore;->deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-MiiJpkUlbFj594pow56N1SWac(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient;->lambda$findL2Key$7(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oxBl3Mx7RwhlNwWErUzS1J8-yoM(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroid/net/IpMemoryStoreClient;->lambda$storeBlob$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rmld3gkm9_RMJEplNWL6IUwOKUc(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 2

    .line 319
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->onNetworkEventCountRetrieved(Landroid/net/ipmemorystore/Status;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rscP1A28INZB0xb8E8vEaCkPx1g(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    .line 190
    invoke-static {p2}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object p2

    .line 189
    invoke-interface {p0, p1, p2}, Landroid/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPwd2hc2Euvwob2T0xc07lBBUjs(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    .line 93
    invoke-virtual {p2}, Landroid/net/ipmemorystore/NetworkAttributes;->toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p2

    .line 94
    invoke-static {p3}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object p3

    .line 93
    invoke-interface {p0, p1, p2, p3}, Landroid/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vk0Nh2Qc67PGCXFRrO6ttafnr-w(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 2

    .line 217
    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, v1}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCeBxaSvb8AFpavF-NMYTPzmdok(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    .line 119
    invoke-static {p5}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object p5

    .line 118
    invoke-interface/range {p0 .. p5}, Landroid/net/IIpMemoryStore;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient;->mContext:Landroid/content/Context;

    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "missing context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 1

    .line 61
    const-string v0, "Failed to execute remote procedure call"

    invoke-direct {p0, v0, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 0

    .line 66
    :try_start_0
    invoke-interface {p2}, Landroid/net/IpMemoryStoreClient$ThrowingRunnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 68
    sget-object p2, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic lambda$delete$19(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    .line 240
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$deleteCluster$22(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    .line 271
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$factoryReset$25(Landroid/net/IIpMemoryStore;)V
    .locals 1

    .line 287
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;-><init>(Landroid/net/IIpMemoryStore;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$findL2Key$7(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    .line 144
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;

    invoke-direct {v0, p3, p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;-><init>(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$isSameNetwork$10(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    .line 166
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda19;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda19;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$retrieveBlob$16(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 6

    .line 212
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$retrieveNetworkAttributes$13(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    .line 188
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;

    invoke-direct {v0, p3, p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$retrieveNetworkEventCount$27(Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 6

    .line 314
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda18;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda18;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$storeBlob$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 7

    .line 117
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda23;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v1, p6

    invoke-direct/range {v0 .. v6}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda23;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$storeNetworkAttributes$1(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 1

    .line 92
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;

    invoke-direct {v0, p4, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private synthetic lambda$storeNetworkEvent$30(Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 9

    .line 344
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    move-object/from16 v1, p8

    invoke-direct/range {v0 .. v8}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 1

    .line 240
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-nez p3, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;-><init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    const-string p2, "Error deleting from the memory store"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 1

    .line 271
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda28;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-nez p3, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda29;

    invoke-direct {p1, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda29;-><init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    const-string p2, "Error deleting from the memory store"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public factoryReset()V
    .locals 2

    .line 287
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;-><init>(Landroid/net/IpMemoryStoreClient;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 290
    sget-object v0, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    const-string v1, "Error executing factory reset"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public findL2Key(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 1

    .line 144
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;-><init>(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 148
    :catch_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda27;

    invoke-direct {p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda27;-><init>(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    const-string p2, "Error finding L2 Key"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 1

    .line 166
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 170
    :catch_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    invoke-direct {p1, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    const-string p2, "Error checking for network sameness"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 6

    .line 212
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v5, p4

    .line 216
    :catch_1
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;

    invoke-direct {p0, v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;-><init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    const-string p1, "Error retrieving blob"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 1

    .line 188
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda30;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 192
    :catch_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda31;

    invoke-direct {p1, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda31;-><init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    const-string p2, "Error retrieving network attributes"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveNetworkEventCount(Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 6

    .line 314
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda24;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v5, p4

    .line 318
    :catch_1
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda25;

    invoke-direct {p0, v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda25;-><init>(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    const-string p1, "Error retrieving network event count"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public abstract runWhenServiceReady(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/IIpMemoryStore;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 7

    .line 117
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda21;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_1
    invoke-direct/range {v0 .. v6}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda21;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v6, p5

    :catch_1
    if-nez v6, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda22;

    invoke-direct {p0, v6}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda22;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    const-string p1, "Error storing blob"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 1

    .line 92
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-nez p3, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    const-string p2, "Error storing network attributes"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public storeNetworkEvent(Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V
    .locals 9

    .line 344
    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    :try_start_1
    invoke-direct/range {v0 .. v8}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object/from16 v8, p7

    :catch_1
    if-nez v8, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda3;

    invoke-direct {p1, v8}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda3;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    const-string p2, "Error storing network event"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method
