.class public Lcom/android/server/job/JobStore$2$CopyConsumer;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mCopyAllJobs:Z

.field public final mJobStoreCopy:Landroid/util/SparseArray;

.field public final synthetic this$1:Lcom/android/server/job/JobStore$2;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprepare(Lcom/android/server/job/JobStore$2$CopyConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobStore$2$CopyConsumer;->prepare()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/job/JobStore$2$CopyConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobStore$2$CopyConsumer;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobStore$2;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 694
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mCopyAllJobs:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 697
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 700
    :cond_2
    new-instance p0, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 647
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore$2$CopyConsumer;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public final prepare()V
    .locals 6

    .line 652
    const-string v0, "JobStore"

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mCopyAllJobs:Z

    .line 653
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 656
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 669
    const-string p0, "Couldn\'t get job file list"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 671
    :cond_2
    array-length v0, v1

    :goto_2
    if-ge v2, v0, :cond_5

    aget-object v3, v1, v2

    .line 672
    invoke-static {v3}, Lcom/android/server/job/JobStore;->extractUidFromJobFileName(Ljava/io/File;)I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_3

    .line 674
    iget-object v4, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 665
    const-string v1, "Not allowed to read job file directory"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 679
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 680
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void

    .line 687
    :cond_6
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final reset()V
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
