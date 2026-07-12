.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iput p2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/wm/Task;

    check-cast p1, Landroid/window/TaskSnapshot;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->$r8$lambda$Fh0SwjFo0K_YCj8gfCmJMbgJjlI(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    return-void
.end method
