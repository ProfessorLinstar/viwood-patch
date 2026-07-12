.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAidlCallbackMap:Ljava/util/Map;

.field public mHandleServiceRestartCallback:Ljava/lang/Runnable;

.field public mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mHub:Landroid/hardware/contexthub/IContextHub;

.field public final mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mTestModeManager:Lcom/android/server/location/contexthub/ContextHubTestModeManager;


# direct methods
.method public static synthetic $r8$lambda$h6pTAwG0BsRGY9ERgLU9iNq6cc4(SLandroid/hardware/location/NanoAppMessage;Landroid/hardware/contexthub/IContextHub;I)Ljava/lang/Integer;
    .locals 0

    .line 769
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;

    move-result-object p0

    .line 771
    invoke-interface {p2, p3, p0}, Landroid/hardware/contexthub/IContextHub;->sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V

    const/4 p0, 0x0

    .line 772
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x2

    .line 776
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :catch_1
    const/4 p0, 0x1

    .line 774
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/contexthub/IContextHub;)V
    .locals 3

    .line 544
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Ljava/lang/Runnable;

    .line 458
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Context Hub AIDL callback"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 463
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 466
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTestModeManager;

    invoke-direct {v1}, Lcom/android/server/location/contexthub/ContextHubTestModeManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mTestModeManager:Lcom/android/server/location/contexthub/ContextHubTestModeManager;

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->setHub(Landroid/hardware/contexthub/IContextHub;)V

    .line 546
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 547
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 548
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->linkWrapperToHubDeath()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 561
    const-string v0, "Context Hub AIDL HAL died"

    const-string v1, "IContextHubWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectToAidlGetProxy()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->setHub(Landroid/hardware/contexthub/IContextHub;)V

    .line 564
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    const-string p0, "Could not reconnect to Context Hub AIDL HAL"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->linkWrapperToHubDeath()V

    .line 571
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 572
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 574
    :cond_1
    const-string v0, "mHandleServiceRestartCallback is not set"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public disableNanoapp(IJI)I
    .locals 1

    .line 873
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 879
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->disableNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public enableNanoapp(IJI)I
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 861
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->enableNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public getContextHubs()Landroid/util/Pair;
    .locals 6

    .line 581
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    .line 583
    new-instance p0, Landroid/util/Pair;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 587
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHub;->getContextHubs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/ContextHubInfo;

    .line 590
    new-instance v3, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v3, v2}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v2, v2, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 592
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 595
    :cond_2
    new-instance p0, Landroid/util/Pair;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getEndpoints()Ljava/util/List;
    .locals 3

    .line 641
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    .line 643
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 646
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHub;->getEndpoints()Ljava/util/List;

    move-result-object p0

    .line 649
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/EndpointInfo;

    .line 651
    new-instance v2, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-direct {v2, v1}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    .line 655
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final declared-synchronized getHub()Landroid/hardware/contexthub/IContextHub;
    .locals 1

    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHubs()Ljava/util/List;
    .locals 6

    .line 599
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    .line 601
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 604
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHub;->getHubs()Ljava/util/List;

    move-result-object p0

    .line 607
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/HubInfo;

    .line 610
    iget-object v2, v1, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getTag()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHubs: invalid hub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IContextHubWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :cond_1
    new-instance v2, Landroid/hardware/location/VendorHubInfo;

    iget-object v3, v1, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    .line 618
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getVendorHubInfo()Landroid/hardware/contexthub/VendorHubInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/location/VendorHubInfo;-><init>(Landroid/hardware/contexthub/VendorHubInfo;)V

    .line 619
    new-instance v3, Landroid/hardware/location/HubInfo;

    iget-wide v4, v1, Landroid/hardware/contexthub/HubInfo;->hubId:J

    invoke-direct {v3, v4, v5, v2}, Landroid/hardware/location/HubInfo;-><init>(JLandroid/hardware/location/VendorHubInfo;)V

    goto :goto_1

    .line 612
    :cond_2
    new-instance v2, Landroid/hardware/location/ContextHubInfo;

    iget-object v3, v1, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    .line 613
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getContextHubInfo()Landroid/hardware/contexthub/ContextHubInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    .line 614
    new-instance v3, Landroid/hardware/location/HubInfo;

    iget-wide v4, v1, Landroid/hardware/contexthub/HubInfo;->hubId:J

    invoke-direct {v3, v4, v5, v2}, Landroid/hardware/location/HubInfo;-><init>(JLandroid/hardware/location/ContextHubInfo;)V

    .line 630
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPreloadedNanoappIds(I)[J
    .locals 2

    .line 906
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 912
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->getPreloadedNanoappIds(I)[J

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 914
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while getting preloaded nanoapp IDs: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final linkWrapperToHubDeath()V
    .locals 2

    .line 984
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 992
    :catch_0
    const-string p0, "IContextHubWrapper"

    const-string v0, "Context Hub AIDL service death receipt could not be linked"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 823
    :cond_0
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/NanoappBinary;

    move-result-object p2

    .line 825
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/contexthub/IContextHub;->loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x4

    .line 708
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onBtMainSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x6

    .line 724
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onBtScanningSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x7

    .line 728
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in onHostEndpointConnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onHostEndpointDisconnected(S)V
    .locals 1

    .line 747
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-char p1, p1

    .line 753
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointDisconnected(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in onHostEndpointDisconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 701
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x5

    .line 712
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public final onSettingChanged(BZ)V
    .locals 0

    .line 968
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->onSettingChanged(BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 976
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception while sending setting update: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onWifiMainSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 716
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onWifiScanningSettingChanged(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 720
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public queryNanoapps(I)I
    .locals 1

    .line 890
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 896
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->queryNanoapps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .locals 3

    .line 940
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 945
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Ljava/lang/Runnable;

    .line 946
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->registerExistingCallback(I)V

    return-void
.end method

.method public registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;
    .locals 0

    .line 669
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 677
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object p0

    return-object p0
.end method

.method public registerExistingCallback(I)V
    .locals 2

    .line 920
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 926
    const-string v1, "IContextHubWrapper"

    if-nez p0, :cond_1

    .line 927
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find existing callback to register for context hub ID = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 933
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p0}, Landroid/hardware/contexthub/IContextHub;->registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception while registering callback: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 805
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->sendMessageDeliveryStatusToHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .locals 1

    .line 762
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 767
    :cond_0
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;-><init>(SLandroid/hardware/location/NanoAppMessage;Landroid/hardware/contexthub/IContextHub;I)V

    .line 788
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized setHub(Landroid/hardware/contexthub/IContextHub;)V
    .locals 0

    monitor-enter p0

    .line 556
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTestMode(Z)Z
    .locals 3

    .line 951
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 956
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 958
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/contexthub/IContextHub;->setTestMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting test mode (enable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 962
    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 961
    const-string p1, "IContextHubWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsBtSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsLocationSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsWifiSettingNotifications()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public unloadNanoapp(IJI)I
    .locals 1

    .line 837
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 843
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->unloadNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0

    :catch_1
    const/4 p0, 0x1

    return p0
.end method
