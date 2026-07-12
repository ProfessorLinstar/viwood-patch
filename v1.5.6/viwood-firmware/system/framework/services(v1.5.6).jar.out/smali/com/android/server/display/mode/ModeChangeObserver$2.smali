.class public Lcom/android/server/display/mode/ModeChangeObserver$2;
.super Landroid/view/DisplayEventReceiver;
.source "ModeChangeObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/ModeChangeObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/ModeChangeObserver;Landroid/os/Looper;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onModeRejected(JI)V
    .locals 2

    .line 109
    const-string v0, "Mode Rejected event received"

    const-string v1, "ModeChangeObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$mupdateRejectedModesListByDisplay(Lcom/android/server/display/mode/ModeChangeObserver;JI)V

    .line 111
    iget-object p3, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {p3}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p3

    if-gez p3, :cond_0

    .line 112
    const-string p0, "Rejected Modes Vote will be updated after display is added"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    iget-object p3, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {p3}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/ModeChangeObserver;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {v0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver$2;->this$0:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/ModeChangeObserver;->-$$Nest$fgetmRejectedModesMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;

    move-result-object p0

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/android/server/display/mode/Vote;->forRejectedModes(Ljava/util/Set;)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    const/16 p1, 0x8

    .line 115
    invoke-virtual {p3, v0, p1, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
