.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[J

.field public final synthetic f$1:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>([J[Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda22;->f$0:[J

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda22;->f$1:[Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda22;->f$0:[J

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda22;->f$1:[Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$YBy63bbzvZjBZq4-CO-lW8MPD5E([J[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method
