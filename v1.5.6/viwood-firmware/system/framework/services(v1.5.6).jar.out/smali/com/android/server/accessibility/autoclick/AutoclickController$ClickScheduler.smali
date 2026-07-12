.class final Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mActive:Z

.field public mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field public mDelay:I

.field public mEventPolicyFlags:I

.field public mHandler:Landroid/os/Handler;

.field public mHoveredState:Z

.field public mIgnoreMinorCursorMovement:Z

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mMetaState:I

.field public mMovementSlop:D

.field public mRevertToLeftClick:Z

.field public mScheduledClickTime:J

.field public mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;I)V
    .locals 2

    .line 669
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 631
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMovementSlop:D

    const/4 p1, 0x0

    .line 634
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mIgnoreMinorCursorMovement:Z

    const/4 p1, 0x1

    .line 637
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    .line 670
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 672
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 673
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 674
    iput p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    .line 675
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method


# virtual methods
.method public final cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 809
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 810
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 811
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$misHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHoveredState:Z

    if-eqz p3, :cond_1

    .line 814
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 815
    iget-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, p1, p0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 721
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v0, :cond_0

    return-void

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 725
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final detectMovement(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 844
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 847
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 848
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 849
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p0, p1

    float-to-double v2, v2

    float-to-double p0, p0

    .line 850
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double p0, p0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getDelayForTesting()I
    .locals 0

    .line 765
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    return p0
.end method

.method public getIsActiveForTesting()Z
    .locals 0

    .line 742
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    return p0
.end method

.method public getMetaStateForTesting()I
    .locals 0

    .line 737
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    return p0
.end method

.method public getRevertToLeftClickForTesting()Z
    .locals 0

    .line 770
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    return p0
.end method

.method public getScheduledClickTimeForTesting()J
    .locals 2

    .line 747
    iget-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-wide v0
.end method

.method public final rescheduleClick(I)V
    .locals 6

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 783
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 784
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 789
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x1

    .line 792
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    .line 793
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 795
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final resetInternalState()V
    .locals 2

    const/4 v0, 0x0

    .line 820
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    .line 821
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 823
    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    :cond_0
    const-wide/16 v0, -0x1

    .line 825
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-void
.end method

.method public final resetSelectedClickTypeIfNecessary()V
    .locals 1

    .line 833
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->resetSelectedClickType()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 682
    iget-wide v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 683
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendClick()V

    .line 688
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 689
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetSelectedClickTypeIfNecessary()V

    return-void
.end method

.method public final sendClick()V
    .locals 6

    .line 874
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    const/4 v0, 0x4

    .line 887
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 888
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    goto :goto_1

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 902
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 903
    new-array v1, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 904
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v1, v2

    .line 907
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v2

    invoke-virtual {v1, v0, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 909
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v1, :cond_3

    .line 910
    new-array v1, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 911
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v1, v2

    .line 913
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v4, v2

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 918
    iget-boolean v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHoveredState:Z

    if-eqz v2, :cond_4

    goto :goto_0

    .line 925
    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    if-eq v2, v3, :cond_6

    if-eq v2, v4, :cond_5

    goto :goto_0

    .line 934
    :cond_5
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v2

    int-to-long v4, v2

    .line 935
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    add-long/2addr v0, v4

    .line 936
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    return-void

    :cond_6
    move v3, v4

    .line 943
    :cond_7
    :goto_0
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final sendMotionEvent(IJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 947
    iget-object v7, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v9, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 959
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 961
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 962
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-wide/from16 v3, p2

    move/from16 v10, p1

    move-wide/from16 v1, p2

    .line 948
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 964
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/16 v3, 0xb

    .line 965
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 966
    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 968
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    const/16 v4, 0xc

    .line 969
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 970
    invoke-virtual {v3, v10}, Landroid/view/MotionEvent;->setActionButton(I)V

    const/4 v4, 0x0

    .line 971
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 973
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 974
    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 975
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 977
    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v6, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v4, v1, v1, v6}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 978
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 980
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v1, v2, v2, v4}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 981
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 983
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v2, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v1, v3, v3, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 984
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 986
    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v1, v5, v5, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 987
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    const-string v1, "ClickScheduler: { active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 994
    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 995
    const-string v1, ", scheduledClickTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 996
    const-string v1, ", anchor={x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 997
    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v1, ", metastate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 999
    const-string v1, ", policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1000
    const-string v1, ", lastMotionEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1001
    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .locals 2

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    .line 704
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 705
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    if-eqz v0, :cond_2

    .line 708
    iget p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->rescheduleClick(I)V

    :cond_2
    return-void
.end method

.method public updateDelay(I)V
    .locals 0

    .line 756
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    return-void
.end method

.method public updateMetaState(I)V
    .locals 0

    .line 732
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    return-void
.end method
