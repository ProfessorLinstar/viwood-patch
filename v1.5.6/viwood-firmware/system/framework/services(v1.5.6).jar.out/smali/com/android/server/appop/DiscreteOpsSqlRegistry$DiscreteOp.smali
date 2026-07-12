.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
.super Ljava/lang/Object;
.source "DiscreteOpsSqlRegistry.java"


# instance fields
.field public final mAccessTime:J

.field public final mAttributionFlags:I

.field public final mAttributionTag:Ljava/lang/String;

.field public final mChainId:J

.field public final mDeviceId:Ljava/lang/String;

.field public final mDiscretizedAccessTime:J

.field public final mDiscretizedDuration:J

.field public final mDuration:J

.field public final mOpCode:I

.field public final mOpFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I

.field public final mUidState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributionTag(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiscretizedAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiscretizedDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpCode(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidState(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    return p0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V
    .locals 0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    .line 583
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    .line 584
    iput-object p3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    .line 585
    iput-object p4, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    .line 586
    iput p5, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    .line 587
    iput p6, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    .line 588
    iput p7, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    .line 589
    iput p8, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    .line 590
    iput-wide p9, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    .line 591
    iput-wide p11, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    .line 592
    invoke-static {p11, p12}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    .line 593
    iput-wide p13, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    .line 594
    invoke-static {p13, p14}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 600
    :cond_0
    instance-of v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 602
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    if-eq v1, v3, :cond_1

    return v2

    .line 603
    :cond_1
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    if-eq v1, v3, :cond_2

    return v2

    .line 604
    :cond_2
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    if-eq v1, v3, :cond_3

    return v2

    .line 605
    :cond_3
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    if-eq v1, v3, :cond_4

    return v2

    .line 606
    :cond_4
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    if-eq v1, v3, :cond_5

    return v2

    .line 607
    :cond_5
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    iget-wide v5, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 608
    :cond_6
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 611
    :cond_7
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 614
    :cond_8
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 617
    :cond_9
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    iget-wide v5, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    .line 620
    :cond_a
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    iget-wide p0, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_b

    return v0

    :cond_b
    return v2
.end method

.method public equalsExceptDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z
    .locals 5

    .line 640
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 641
    :cond_0
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    if-eq v0, v1, :cond_1

    return v2

    .line 642
    :cond_1
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    if-eq v0, v1, :cond_2

    return v2

    .line 643
    :cond_2
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    if-eq v0, v1, :cond_3

    return v2

    .line 644
    :cond_3
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    if-eq v0, v1, :cond_4

    return v2

    .line 645
    :cond_4
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    iget-wide v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    return v2

    .line 646
    :cond_5
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 649
    :cond_6
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 652
    :cond_7
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 655
    :cond_8
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    iget-wide p0, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v2
.end method

.method public getAccessTime()J
    .locals 2

    .line 718
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    return-wide v0
.end method

.method public getAttributionFlags()I
    .locals 0

    .line 705
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    return p0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getChainId()J
    .locals 2

    .line 714
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 690
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 722
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    return-wide v0
.end method

.method public getOpCode()I
    .locals 0

    .line 694
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    return p0
.end method

.method public getOpFlags()I
    .locals 0

    .line 699
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 682
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 678
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    return p0
.end method

.method public getUidState()I
    .locals 0

    .line 710
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 625
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    mul-int/lit8 v0, v0, 0x1f

    .line 626
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 627
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 628
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 629
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 630
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 631
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 632
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 633
    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 634
    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 635
    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscreteOp{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", attributionTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", opCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    .line 665
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    .line 666
    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attributionFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uidState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    .line 668
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscretizedAccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscretizedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
