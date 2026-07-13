.class public Lcom/android/server/input/KeyGestureController$2;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "KeyGestureController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;II)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$2;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 289
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$2;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v0, 0x1a

    const/16 v1, 0x108

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public execute()V
    .locals 4

    .line 282
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$2;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v0, 0x1a

    const/16 v1, 0x108

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method
