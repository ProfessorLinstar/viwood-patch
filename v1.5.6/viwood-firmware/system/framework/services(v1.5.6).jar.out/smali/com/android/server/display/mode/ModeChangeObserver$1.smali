.class public Lcom/android/server/display/mode/ModeChangeObserver$1;
.super Ljava/lang/Object;
.source "ModeChangeObserver.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/ModeChangeObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/ModeChangeObserver;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {p0, p1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 92
    const-string p0, "ModeChangeObserver"

    const-string p1, "Changed display not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    .line 97
    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 99
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {p0, p1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 78
    const-string p0, "ModeChangeObserver"

    const-string p1, "Removed display not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    .line 83
    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 84
    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v2}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmRejectedModesMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 85
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver$1;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/ModeChangeObserver;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
