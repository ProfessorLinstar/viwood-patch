.class public final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "NetworkPolicyLogger.java"


# static fields
.field public static final sDate:Ljava/util/Date;

.field public static final sFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public static synthetic $r8$lambda$-TUy9RKzfUlNRcVYDQQgCGgal-o(I)[Lcom/android/server/net/NetworkPolicyLogger$Data;
    .locals 0

    .line 432
    new-array p0, p0, [Lcom/android/server/net/NetworkPolicyLogger$Data;

    return-object p0
.end method

.method public static synthetic $r8$lambda$kDNlKKkLZ8vfiKJuYgxljbBLzHE()Lcom/android/server/net/NetworkPolicyLogger$Data;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$Data;-><init>(Lcom/android/server/net/NetworkPolicyLogger-IA;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 427
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 429
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 432
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    return-void
.end method


# virtual methods
.method public appIdleStateChanged(IZ)V
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x8

    .line 532
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 533
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 534
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public appIdleWlChanged(IZ)V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xe

    .line 543
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 544
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 545
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public deviceIdleModeEnabled(Z)V
    .locals 2

    .line 518
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x7

    .line 522
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 523
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public event(Ljava/lang/String;)V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x0

    .line 454
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 455
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public firewallChainEnabled(IZ)V
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xc

    .line 590
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 591
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 592
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public final formatDate(J)Ljava/lang/String;
    .locals 0

    .line 701
    sget-object p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 702
    sget-object p1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;
    .locals 2

    .line 654
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    packed-switch p0, :pswitch_data_0

    .line 696
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 694
    :pswitch_1
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetInterfacesChangedLog(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 692
    :pswitch_2
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetRoamingChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 690
    :pswitch_3
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeteredDenylistChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 688
    :pswitch_4
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeteredAllowlistChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 677
    :pswitch_5
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetAppIdleWlChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 686
    :pswitch_6
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 684
    :pswitch_7
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 681
    :pswitch_8
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetTempPowerSaveWlChangedLog(IZILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 679
    :pswitch_9
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetParoleStateChanged(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 675
    :pswitch_a
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 673
    :pswitch_b
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 671
    :pswitch_c
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 669
    :pswitch_d
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetUserRemovedLog(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 667
    :pswitch_e
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 665
    :pswitch_f
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetPolicyChangedLog(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 661
    :pswitch_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 662
    invoke-static {v1}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 658
    :pswitch_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 656
    :pswitch_12
    iget-object p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public interfacesChanged(ILjava/lang/String;)V
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x12

    .line 634
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 635
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 636
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public meteredAllowlistChanged(IZ)V
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xf

    .line 601
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 602
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 603
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public meteredDenylistChanged(IZ)V
    .locals 1

    .line 608
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x10

    .line 612
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 613
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 614
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public meterednessChanged(IZ)V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x4

    .line 490
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 491
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 492
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public networkBlocked(IIII)V
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x1

    .line 465
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 466
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 467
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 468
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 469
    iput p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public paroleStateChanged(Z)V
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x9

    .line 554
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 555
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public restrictBackgroundChanged(ZZ)V
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x6

    .line 511
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 512
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 513
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    .line 641
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 642
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 643
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 644
    const-string v2, "NULL"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 647
    :cond_0
    iget-wide v2, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 648
    const-string v2, " - "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 649
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public roamingChanged(IZ)V
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x11

    .line 623
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 624
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 625
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public tempPowerSaveWlChanged(IZILjava/lang/String;)V
    .locals 1

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xa

    .line 565
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 566
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 567
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 568
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 569
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidFirewallRuleChanged(III)V
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xb

    .line 578
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 579
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 580
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 581
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidPolicyChanged(III)V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x3

    .line 478
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 479
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 480
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 481
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidStateChanged(IIJI)V
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x2

    .line 441
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 442
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 443
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 444
    iput p5, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 445
    iput-wide p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public userRemoved(I)V
    .locals 2

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x5

    .line 501
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 502
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method
