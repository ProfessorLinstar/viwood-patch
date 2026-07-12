.class public Lcom/android/server/wm/DisplayRotation$FoldController$1;
.super Ljava/lang/Object;
.source "DisplayRotation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

.field public final synthetic val$this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public static synthetic $r8$lambda$C6W7vAoGNpW3vWiUHZ-lRgUXqqU(Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 1710
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayRotation$FoldController;Lcom/android/server/wm/DisplayRotation;)V
    .locals 0

    .line 1703
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->val$this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1705
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmDeviceState(Lcom/android/server/wm/DisplayRotation$FoldController;)Lcom/android/server/wm/DeviceStateController$DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmDeviceState(Lcom/android/server/wm/DisplayRotation$FoldController;)Lcom/android/server/wm/DeviceStateController$DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1707
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayRotation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1708
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController$1;->this$1:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    new-instance v1, Lcom/android/server/wm/DisplayRotation$FoldController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayRotation$FoldController$1$$ExternalSyntheticLambda0;-><init>()V

    .line 1709
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1713
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1715
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1718
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
