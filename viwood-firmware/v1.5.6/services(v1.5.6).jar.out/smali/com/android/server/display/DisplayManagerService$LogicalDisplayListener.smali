.class public final Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/LogicalDisplayMapper$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 4142
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayGroupEventLocked(II)V
    .locals 0

    .line 4197
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msendDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V

    return-void
.end method

.method public onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_a

    const/4 v0, 0x4

    if-eq p2, v0, :cond_9

    const/16 v0, 0x8

    if-eq p2, v0, :cond_8

    const/16 v0, 0x10

    if-eq p2, v0, :cond_7

    const/16 v0, 0x20

    if-eq p2, v0, :cond_6

    const/16 v0, 0x40

    if-eq p2, v0, :cond_5

    const/16 v0, 0x80

    if-eq p2, v0, :cond_4

    const/16 v0, 0x100

    if-eq p2, v0, :cond_3

    const/16 v0, 0x200

    if-eq p2, v0, :cond_2

    const/16 v0, 0x400

    if-eq p2, v0, :cond_1

    const/16 v0, 0x800

    if-eq p2, v0, :cond_0

    return-void

    .line 4190
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayCommittedStateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4187
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayStateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4184
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayRefreshRateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4181
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4177
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayConnectedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4173
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayHdrSdrRatioChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4169
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4165
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4161
    :cond_8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplaySwappedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4157
    :cond_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayRemovedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4153
    :cond_a
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void

    .line 4149
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public onTraversalRequested()V
    .locals 2

    .line 4202
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 4203
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 4204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
