.class public final Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "AppOpService.kt"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# instance fields
.field public final pendingChanges:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v0, p5, p6}, Lcom/android/server/permission/access/appop/AppOpService;->access$evaluateModeFromPermissionFlags(Lcom/android/server/permission/access/appop/AppOpService;II)I

    move-result p5

    .line 569
    iget-object p6, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {p6, p7, p8}, Lcom/android/server/permission/access/appop/AppOpService;->access$evaluateModeFromPermissionFlags(Lcom/android/server/permission/access/appop/AppOpService;II)I

    move-result p6

    if-eq p5, p6, :cond_0

    .line 572
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 573
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    new-instance p2, Lcom/android/server/permission/jarjar/kotlin/Triple;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/permission/jarjar/kotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getPermissionFlags(IILjava/lang/String;)I
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getService$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/AccessCheckingService;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 287
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 555
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPermissionPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object p0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 13

    move-object/from16 v9, p4

    .line 502
    iget-object v3, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v3}, Lcom/android/server/permission/access/appop/AppOpService;->access$getBackgroundToForegroundPermissionNames$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/util/ArraySet;

    if-eqz v10, :cond_2

    iget-object v9, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 42
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v3, 0x0

    move v12, v3

    :goto_0
    if-ge v12, v11, :cond_1

    .line 43
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 506
    invoke-static {v9}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 508
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->getPermissionFlags(IILjava/lang/String;)I

    move-result v5

    move v7, v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v8, p6

    .line 509
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 502
    :cond_1
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    return-void

    .line 522
    :cond_2
    iget-object v3, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v3}, Lcom/android/server/permission/access/appop/AppOpService;->access$getForegroundToBackgroundPermissionName$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 524
    invoke-static {v5}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 526
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->getPermissionFlags(IILjava/lang/String;)I

    move-result v6

    move v8, v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    .line 527
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 524
    sget-object v4, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_3
    if-nez v4, :cond_4

    .line 539
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v1}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v6, 0x10

    const/16 v8, 0x10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    .line 540
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 539
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    :cond_4
    return-void
.end method

.method public onPermissionFlagsChanged(IILjava/lang/String;II)V
    .locals 7

    .line 487
    const-string v3, "default:0"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 484
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onStateMutated()V
    .locals 13

    .line 578
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getListeners$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArraySet;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 41
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast v5, Lcom/android/server/permission/jarjar/kotlin/Triple;

    .line 42
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    .line 43
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    .line 581
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 582
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 583
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 585
    invoke-interface {v9, v10, v12, v6, v11}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onUidModeChanged(IIILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 589
    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method
