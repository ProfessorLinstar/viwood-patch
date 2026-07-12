.class public Lcom/android/server/input/KeyGestureController$4;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "KeyGestureController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;II)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 353
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController$4;->getGestureType()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x18

    const/16 v2, 0x1a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public execute()V
    .locals 4

    .line 343
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController$4;->getGestureType()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x18

    const/16 v2, 0x1a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    return-void
.end method

.method public final getGestureType()I
    .locals 1

    .line 365
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x39

    return p0

    :cond_1
    const/16 p0, 0x38

    return p0
.end method

.method public preCondition()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {p0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmRingerToggleChord(Lcom/android/server/input/KeyGestureController;)I

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
