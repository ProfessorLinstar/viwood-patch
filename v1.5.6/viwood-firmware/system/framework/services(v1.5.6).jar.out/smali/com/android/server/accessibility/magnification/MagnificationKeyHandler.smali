.class public Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MagnificationKeyHandler.java"


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

.field public mIsKeyboardInteracting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    .line 80
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    return-void
.end method


# virtual methods
.method public final getDisplayId(Landroid/view/KeyEvent;)I
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 8

    .line 90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 102
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    const/16 v5, 0x16

    const/16 v6, 0x15

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_6

    if-eq v3, v4, :cond_6

    const/16 v7, 0x14

    if-ne v3, v7, :cond_1

    goto :goto_3

    :cond_1
    const/16 v4, 0x46

    if-eq v3, v4, :cond_3

    const/16 v5, 0x45

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    :cond_3
    :goto_1
    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v0, :cond_5

    .line 124
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->getDisplayId(Landroid/view/KeyEvent;)I

    move-result p1

    invoke-interface {p2, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onScaleMagnificationStart(II)V

    .line 125
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    return-void

    .line 127
    :cond_5
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onScaleMagnificationStop(I)V

    return-void

    :cond_6
    :goto_3
    if-eq v3, v4, :cond_8

    if-eq v3, v6, :cond_9

    if-eq v3, v5, :cond_7

    const/4 v1, 0x3

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    const/4 v1, 0x2

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 112
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->getDisplayId(Landroid/view/KeyEvent;)I

    move-result p1

    invoke-interface {p2, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onPanMagnificationStart(II)V

    .line 113
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    return-void

    .line 115
    :cond_a
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onPanMagnificationStop(I)V

    return-void

    .line 92
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 93
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    if-eqz p1, :cond_c

    .line 96
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {p1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onKeyboardInteractionStop()V

    .line 97
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    :cond_c
    return-void
.end method
