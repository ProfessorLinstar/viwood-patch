.class Lcom/android/server/job/JobConcurrencyManager$PackageStats;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# instance fields
.field public numRunningEj:I

.field public numRunningRegular:I

.field public numStagedEj:I

.field public numStagedRegular:I

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public static bridge synthetic -$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->adjustRunningCount(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->adjustStagedCount(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/job/JobConcurrencyManager$PackageStats;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->resetStagedCount()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPackage(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->setPackage(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adjustRunningCount(ZZ)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2895
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    return-void

    .line 2897
    :cond_1
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    return-void
.end method

.method public final adjustStagedCount(ZZ)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2903
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    return-void

    .line 2905
    :cond_1
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    add-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    return-void
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 2911
    const-string v0, "PackageStats{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2912
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2913
    const-string v0, "-"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2914
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2915
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#runEJ"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2916
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#runReg"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2917
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "#stagedEJ"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2918
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "#stagedReg"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 2919
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final resetStagedCount()V
    .locals 1

    const/4 v0, 0x0

    .line 2890
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    return-void
.end method

.method public final setPackage(ILjava/lang/String;)V
    .locals 0

    .line 2883
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    .line 2884
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2885
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 2886
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->resetStagedCount()V

    return-void
.end method
