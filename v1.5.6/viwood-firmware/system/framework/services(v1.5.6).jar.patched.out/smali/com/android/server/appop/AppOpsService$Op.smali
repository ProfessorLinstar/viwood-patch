.class public final Lcom/android/server/appop/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# instance fields
.field public final mDeviceAttributedOps:Landroid/util/ArrayMap;

.field public op:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public uid:I

.field public final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V
    .locals 1

    .line 664
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 665
    iput p4, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 666
    iput p5, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 667
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 668
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 671
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    const-string p2, "default:0"

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .locals 4

    .line 714
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-nez p1, :cond_0

    .line 717
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 720
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 721
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v1, 0x0

    .line 722
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 723
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 724
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v3

    .line 723
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_1
    new-instance p1, Landroid/app/AppOpsManager$OpEntry;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 730
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 729
    invoke-interface {v2, v3, v1, p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result p0

    invoke-direct {p1, v1, p0, v0}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object p1
.end method

.method public createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string v1, "default:0"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 743
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 744
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 746
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v0

    .line 745
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_1
    new-instance p1, Landroid/app/AppOpsManager$OpEntry;

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 751
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 750
    invoke-interface {v2, v3, v0, p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(Ljava/lang/String;II)I

    move-result p0

    invoke-direct {p1, v0, p0, v1}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object p1
.end method

.method public getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AttributedOp;
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 698
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp;

    if-nez v1, :cond_1

    .line 703
    new-instance v1, Lcom/android/server/appop/AttributedOp;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/appop/AttributedOp;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V

    .line 705
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public isRunning()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 756
    :goto_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 757
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    move v3, v0

    .line 759
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 760
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v4}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public removeAttributionsWithNoTime()V
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 678
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 680
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 681
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp;->hasAnyTime()Z

    move-result v3

    if-nez v3, :cond_0

    .line 682
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 686
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 685
    const-string v3, "default:0"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 686
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
