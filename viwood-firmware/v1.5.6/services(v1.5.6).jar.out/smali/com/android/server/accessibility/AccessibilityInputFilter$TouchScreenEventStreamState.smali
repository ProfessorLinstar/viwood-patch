.class public Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# instance fields
.field public mHoverSequenceStarted:Z

.field public mTouchSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1096
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->reset()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .line 1102
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    const/4 v0, 0x0

    .line 1103
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    .line 1104
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1111
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    if-eqz v0, :cond_0

    return v2

    .line 1114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    return v1

    .line 1119
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    if-eqz v0, :cond_3

    return v2

    .line 1122
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    return v1
.end method
