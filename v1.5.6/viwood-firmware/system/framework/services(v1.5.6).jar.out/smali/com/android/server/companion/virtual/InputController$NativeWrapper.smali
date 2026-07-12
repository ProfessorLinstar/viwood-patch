.class public Lcom/android/server/companion/virtual/InputController$NativeWrapper;
.super Ljava/lang/Object;
.source "InputController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeUinput(J)V
    .locals 0

    .line 535
    invoke-static {p1, p2}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeCloseUinput(J)V

    return-void
.end method

.method public openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 506
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 511
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 515
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 531
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    .line 526
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    .line 520
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public writeButtonEvent(JIIJ)Z
    .locals 0

    .line 550
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeDpadKeyEvent(JIIJ)Z
    .locals 0

    .line 540
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteDpadKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeKeyEvent(JIIJ)Z
    .locals 0

    .line 545
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeRelativeEvent(JFFJ)Z
    .locals 0

    .line 563
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public writeRotaryEncoderScrollEvent(JFJ)Z
    .locals 0

    .line 584
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    return p0
.end method

.method public writeScrollEvent(JFFJ)Z
    .locals 0

    .line 568
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public writeStylusButtonEvent(JIIJ)Z
    .locals 0

    .line 579
    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeStylusMotionEvent(JIIIIIIIJ)Z
    .locals 0

    .line 573
    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    return p0
.end method

.method public writeTouchEvent(JIIIFFFFJ)Z
    .locals 0

    .line 556
    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    return p0
.end method
