.class public interface abstract Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"


# direct methods
.method public static nameOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 461
    invoke-interface {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "null"

    return-object p0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 0

    .line 457
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method
