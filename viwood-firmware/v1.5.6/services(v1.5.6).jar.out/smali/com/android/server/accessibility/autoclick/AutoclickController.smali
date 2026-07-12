.class public Lcom/android/server/accessibility/autoclick/AutoclickController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "AutoclickController.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AutoclickController"


# instance fields
.field final clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

.field public mActiveClickType:I

.field mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

.field mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

.field mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

.field mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

.field mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

.field mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field public final mContext:Landroid/content/Context;

.field public mHoveredDirection:I

.field mLastCursorX:F

.field mLastCursorY:F

.field final mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mUserId:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHoveredDirection(Lcom/android/server/accessibility/autoclick/AutoclickController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$misHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isHovered()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mActiveClickType:I

    const/4 v0, 0x5

    .line 108
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mHoveredDirection:I

    .line 110
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->clickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    .line 140
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$2;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    .line 180
    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 181
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    .line 182
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    return-void
.end method

.method public static synthetic access$001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static synthetic access$301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method


# virtual methods
.method public final cancelPendingClick()V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz p0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cancel()V

    :cond_0
    return-void
.end method

.method public clearEvents(I)V
    .locals 1

    const/16 v0, 0x2002

    if-ne p1, v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 258
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public exitScrollMode()V
    .locals 0

    .line 0
    return-void
.end method

.method public final handleMouseMotion(Landroid/view/MotionEvent;I)V
    .locals 2

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 p1, 0x9

    if-eq v0, p1, :cond_0

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    :cond_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 289
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->update(Landroid/view/MotionEvent;I)V

    return-void

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    return-void
.end method

.method public final isHovered()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPaused()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onChangeForTesting(ZLandroid/net/Uri;)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->stop()V

    .line 265
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cancel()V

    .line 269
    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    :cond_1
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onKeyEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->updateMetaState(I)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 245
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/autoclick/AutoclickController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onMotionEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";rawEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/16 v0, 0x2002

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    const/16 v2, 0x258

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    .line 200
    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mUserId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickSettingsObserver:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;

    .line 201
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 201
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;)V

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/autoclick/AutoclickController;->handleMouseMotion(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->cancelPendingClick()V

    .line 214
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
