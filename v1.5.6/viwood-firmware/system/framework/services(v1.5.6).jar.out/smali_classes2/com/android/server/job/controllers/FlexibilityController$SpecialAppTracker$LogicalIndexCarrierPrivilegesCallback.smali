.class public Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "FlexibilityController.java"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# instance fields
.field public final logicalIndex:I

.field public final synthetic this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;I)V
    .locals 0

    .line 1872
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->logicalIndex:I

    return-void
.end method


# virtual methods
.method public onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4

    .line 1879
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 1880
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$fgetmSatLock(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {v1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$fgetmCarrierPrivilegedApps(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)Landroid/util/SparseSetArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->logicalIndex:I

    .line 1882
    invoke-virtual {v1, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1884
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1885
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {v1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$fgetmCarrierPrivilegedApps(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)Landroid/util/SparseSetArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->logicalIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseSetArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1887
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1888
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {v2}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$fgetmCarrierPrivilegedApps(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)Landroid/util/SparseSetArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->logicalIndex:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 1889
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1892
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1895
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1900
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$LogicalIndexCarrierPrivilegesCallback;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    const/4 p1, -0x1

    invoke-static {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mupdateSpecialAppSetUnlocked(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;ILandroid/util/ArraySet;)V

    return-void

    .line 1895
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
