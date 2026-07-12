.class public interface abstract Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# virtual methods
.method public abstract decrementKeyboardBacklight(I)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract incrementKeyboardBacklight(I)V
.end method

.method public abstract notifyUserActivity()V
.end method

.method public abstract onInteractiveChanged(Z)V
.end method

.method public abstract registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
.end method

.method public abstract systemRunning()V
.end method

.method public abstract unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
.end method
