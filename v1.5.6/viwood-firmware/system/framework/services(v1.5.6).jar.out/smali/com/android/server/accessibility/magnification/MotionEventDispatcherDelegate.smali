.class public Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;
.super Ljava/lang/Object;
.source "MotionEventDispatcherDelegate.java"


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "MotionEventDispatcherDelegate"


# instance fields
.field public final mEventDispatcher:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;

.field public mLastDelegatedDownEventTime:J

.field public final mMultiTapMaxDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mEventDispatcher:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;

    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e012a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mMultiTapMaxDelay:I

    return-void
.end method


# virtual methods
.method public dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    .line 78
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMotionEvent mLastDelegatedDownEventTime time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMotionEvent original down time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 94
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mEventDispatcher:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;->dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public sendDelayedMotionEvents(Ljava/util/List;J)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget p2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mMultiTapMaxDelay:I

    int-to-long p2, p2

    .line 63
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;

    .line 67
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 68
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mPolicyFlags:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 69
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
