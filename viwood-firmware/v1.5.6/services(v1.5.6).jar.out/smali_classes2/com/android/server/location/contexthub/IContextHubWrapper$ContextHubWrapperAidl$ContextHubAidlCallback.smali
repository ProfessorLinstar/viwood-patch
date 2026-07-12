.class public Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;
.super Landroid/hardware/contexthub/IContextHubCallback$Stub;
.source "IContextHubWrapper.java"


# static fields
.field public static final UUID:[B


# instance fields
.field public final mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

.field public final mContextHubId:I

.field public final synthetic this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;


# direct methods
.method public static synthetic $r8$lambda$73t3WS8YfVk6BW0zU3MPErwk2sU(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->lambda$handleContextHubMessage$1(Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NvAqqMQbA5xzmq91teuPL1jmJfA(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Landroid/hardware/contexthub/MessageDeliveryStatus;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->lambda$handleMessageDeliveryStatus$4(Landroid/hardware/contexthub/MessageDeliveryStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9eTrARptjIBdcEUkMdhZ-iDB9U(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->lambda$handleTransactionResult$3(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hrYSC_xKcGsK1WsvqlKFNelyQUI(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->lambda$handleNanoappInfo$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2BZDuisaXWLrWzsCAjY65E1FjQ(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->lambda$handleContextHubAsyncEvent$2(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 473
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->UUID:[B

    return-void

    :array_0
    .array-data 1
        -0x66t
        0x17t
        0x0t
        -0x73t
        0x6bt
        -0xft
        0x44t
        0x5at
        -0x70t
        0x11t
        0x6dt
        0x21t
        -0x43t
        -0x68t
        0x5bt
        0x6ct
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;-><init>()V

    .line 478
    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mContextHubId:I

    .line 479
    iput-object p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 535
    const-string p0, "df80fdbb6f95a8a2988bc72b7f08f891847b80eb"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 530
    const-string p0, "ContextHubService"

    return-object p0
.end method

.method public getUuid()[B
    .locals 0

    .line 526
    sget-object p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->UUID:[B

    return-object p0
.end method

.method public handleContextHubAsyncEvent(I)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleContextHubMessage(Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleMessageDeliveryStatus(CLandroid/hardware/contexthub/MessageDeliveryStatus;)V
    .locals 1

    .line 519
    iget-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Landroid/hardware/contexthub/MessageDeliveryStatus;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleNanSessionRequest(Landroid/hardware/contexthub/NanSessionRequest;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleNanoappInfo([Landroid/hardware/contexthub/NanoappInfo;)V
    .locals 2

    .line 484
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppStateList([Landroid/hardware/contexthub/NanoappInfo;)Ljava/util/List;

    move-result-object p1

    .line 485
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleTransactionResult(IZ)V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->this$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;

    invoke-static {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->-$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$handleContextHubAsyncEvent$2(I)V
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 503
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toContextHubEventFromAidl(I)I

    move-result p1

    .line 502
    invoke-interface {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleContextHubEvent(I)V

    return-void
.end method

.method public final synthetic lambda$handleContextHubMessage$1(Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V
    .locals 3

    .line 493
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    iget-char v0, p1, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    int-to-short v0, v0

    .line 494
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/ContextHubMessage;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    .line 495
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 496
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 493
    invoke-interface {p0, v0, v1, v2, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$handleMessageDeliveryStatus$4(Landroid/hardware/contexthub/MessageDeliveryStatus;)V
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleMessageDeliveryStatus(Landroid/hardware/contexthub/MessageDeliveryStatus;)V

    return-void
.end method

.method public final synthetic lambda$handleNanoappInfo$0(Ljava/util/List;)V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleNanoappInfo(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$handleTransactionResult$3(IZ)V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;->handleTransactionResult(IZ)V

    return-void
.end method
