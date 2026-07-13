.class public Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;
.super Ljava/lang/Object;
.source "WindowMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScale(I)F
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMagnificationConnectionManager(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p0

    return p0
.end method

.method public processScroll(IFF)Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMagnificationConnectionManager(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->processScroll(IFF)Z

    move-result p0

    return p0
.end method

.method public setScale(IF)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMagnificationConnectionManager(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(IF)V

    return-void
.end method
