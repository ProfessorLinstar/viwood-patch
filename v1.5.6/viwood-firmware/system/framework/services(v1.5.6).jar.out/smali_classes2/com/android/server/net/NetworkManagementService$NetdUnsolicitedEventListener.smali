.class public Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "NetworkManagementService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkManagementService;


# direct methods
.method public static synthetic $r8$lambda$--ZhjVYzWf5rB1bQpK2KpOpGMbQ(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceRemoved$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4UqRDfd7w24bPwXCxaaxEYTP5J0(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onQuotaLimitReached$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6H1IPP0xbuUOBJ0zARtLg6fMa-E(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceLinkStateChanged$8(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zj_TRrlRu8DjVi29609vd8jtbow(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceClassActivityChanged$0(IZJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$cEZjblgQTbkhVOZAra8yyTiiXlk(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceAddressRemoved$4(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqW51JeHJZy_bOi_o6JJ3a9MFEY(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceAddressUpdated$3(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jfUEvv6nelVp7IK0ZFRq-iIQNJQ(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceAdded$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jz5dHnJck71UiPt-sbHVxpkagmA(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceChanged$7(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$k450O0AvGFGVDrE8Q-YRBpOJme4(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onRouteChanged$9(ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tquS_Klr8MMD-WqiICOLMj4wBZg(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceDnsServerInfo$2(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/NetworkManagementService;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkManagementService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 657
    const-string p0, "a786da2fe41bda627a8c1e63b99264a415e769c8"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/16 p0, 0x11

    return p0
.end method

.method public final synthetic lambda$onInterfaceAdded$5(Ljava/lang/String;)V
    .locals 0

    .line 613
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyInterfaceAdded(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onInterfaceAddressRemoved$4(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyAddressRemoved(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public final synthetic lambda$onInterfaceAddressUpdated$3(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyAddressUpdated(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public final synthetic lambda$onInterfaceChanged$7(Ljava/lang/String;Z)V
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyInterfaceStatusChanged(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$onInterfaceClassActivityChanged$0(IZJI)V
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static/range {p0 .. p5}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyInterfaceClassActivity(Lcom/android/server/net/NetworkManagementService;IZJI)V

    return-void
.end method

.method public final synthetic lambda$onInterfaceDnsServerInfo$2(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyInterfaceDnsServerInfo(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onInterfaceLinkStateChanged$8(Ljava/lang/String;Z)V
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyInterfaceLinkStateChanged(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$onInterfaceRemoved$6(Ljava/lang/String;)V
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyInterfaceRemoved(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onQuotaLimitReached$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyLimitReached(Lcom/android/server/net/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onRouteChanged$9(ZLandroid/net/RouteInfo;)V
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$mnotifyRouteChange(Lcom/android/server/net/NetworkManagementService;ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 607
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 608
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p2, v0}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 600
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 601
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p2, v0}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p3

    :cond_0
    move-wide v4, p3

    .line 581
    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p3}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;

    move-object v1, p0

    move v3, p1

    move v2, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 7

    .line 594
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 636
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    .line 637
    const-string p2, ""

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    :goto_0
    const/4 p3, 0x1

    invoke-direct {v0, v1, p2, p4, p3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 639
    iget-object p2, p0, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p2}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$fgetmDaemonHandler(Lcom/android/server/net/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .locals 0

    .line 646
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    .line 647
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 646
    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V

    return-void
.end method
