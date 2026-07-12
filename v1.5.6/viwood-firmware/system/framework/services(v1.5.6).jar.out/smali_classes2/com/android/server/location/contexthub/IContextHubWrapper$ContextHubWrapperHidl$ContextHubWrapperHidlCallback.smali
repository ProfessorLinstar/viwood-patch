.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;
.super Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;
.source "IContextHubWrapper.java"


# instance fields
.field public final mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

.field public final mContextHubId:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Landroid/hardware/contexthub/V1_2/IContexthubCallback$Stub;-><init>()V

    .line 1013
    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mContextHubId:I

    .line 1014
    iput-object p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    return-void
.end method


# virtual methods
.method public handleAppAbort(JI)V
    .locals 0

    .line 1039
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappAbort(JI)V

    return-void
.end method

.method public handleAppsInfo(Ljava/util/ArrayList;)V
    .locals 0

    .line 1045
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toHubAppInfo_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->handleAppsInfo_1_2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public handleAppsInfo_1_2(Ljava/util/ArrayList;)V
    .locals 0

    .line 1059
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1060
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappInfo(Ljava/util/List;)V

    return-void
.end method

.method public handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 2

    .line 1019
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    iget-short v0, p1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 1020
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object p1

    .line 1021
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1019
    invoke-interface {p0, v0, p1, v1, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public handleClientMsg_1_2(Landroid/hardware/contexthub/V1_2/ContextHubMsg;Ljava/util/ArrayList;)V
    .locals 2

    .line 1051
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    iget-object v0, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->msg_1_0:Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    iget-short v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 1052
    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/contexthub/V1_2/ContextHubMsg;->permissions:Ljava/util/ArrayList;

    .line 1051
    invoke-interface {p0, v1, v0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public handleHubEvent(I)V
    .locals 0

    .line 1033
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 1034
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toContextHubEvent(I)I

    move-result p1

    .line 1033
    invoke-interface {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleContextHubEvent(I)V

    return-void
.end method

.method public handleTxnResult(II)V
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleTransactionResult(IZ)V

    return-void
.end method
