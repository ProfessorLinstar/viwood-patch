.class public final Lcom/android/server/accessibility/magnification/MouseEventHandler;
.super Ljava/lang/Object;
.source "MouseEventHandler.java"


# instance fields
.field public final mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MouseEventHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/view/MotionEvent;I)V
    .locals 8

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_2

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 56
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MouseEventHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {p1, p2, v4, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MouseEventHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setCenter(IFFZI)Z

    :cond_2
    return-void
.end method
