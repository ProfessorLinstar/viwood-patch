.class public final Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/PowerGroup$PowerGroupListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 767
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmWakefulnessChanging(Lcom/android/server/power/PowerManagerService;Z)V

    .line 768
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-static {v1, v5}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 769
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    if-ne v3, v4, :cond_1

    const/16 v1, 0xd

    move/from16 v8, p5

    if-ne v8, v1, :cond_0

    :goto_0
    move v14, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 776
    :goto_1
    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/power/PowerGroup;

    const/4 v13, 0x0

    move-wide/from16 v11, p3

    move/from16 v15, p6

    invoke-static/range {v9 .. v15}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JIII)Z

    goto :goto_2

    :cond_1
    move/from16 v8, p5

    .line 781
    :goto_2
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmScreenTimeoutOverridePolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 782
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmScreenTimeoutOverridePolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakeLockSummary(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    invoke-virtual {v1, v4, v3}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->onWakefulnessChange(II)V

    .line 785
    :cond_2
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 786
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide/from16 v5, p3

    move-object/from16 v7, p9

    move v4, v8

    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateENotePopWallPaperStatus(Lcom/android/server/power/PowerManagerService;IIIJLjava/lang/String;)V

    .line 787
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/Notifier;->onGroupWakefulnessChangeStarted(IIIJ)V

    .line 788
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static/range {v5 .. v12}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateGlobalWakefulnessLocked(Lcom/android/server/power/PowerManagerService;JIIILjava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method
