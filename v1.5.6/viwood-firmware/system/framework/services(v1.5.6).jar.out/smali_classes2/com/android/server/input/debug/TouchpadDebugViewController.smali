.class public Lcom/android/server/input/debug/TouchpadDebugViewController;
.super Ljava/lang/Object;
.source "TouchpadDebugViewController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

.field public mTouchpadVisualizerEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$BeordBCjb5TpEf41Cw7I5cpB3xQ(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->lambda$updateTouchpadHardwareState$0(Lcom/android/server/input/TouchpadHardwareState;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JqXJSMgAzLWSBiqI10dJ5mXQ1mg(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->lambda$updateTouchpadHardwareState$1(Lcom/android/server/input/TouchpadHardwareState;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VrwpYRXgtCd46Qf9IzHjcvpUKQA(Lcom/android/server/input/debug/TouchpadDebugViewController;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->lambda$updateTouchpadGestureInfo$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$gLIf-xkECijmuq31oG13zm3nI30(Lcom/android/server/input/debug/TouchpadDebugViewController;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->lambda$updateTouchpadGestureInfo$2(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/InputManagerService;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    .line 52
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-void
.end method


# virtual methods
.method public final hideDebugView(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/input/debug/TouchpadDebugView;->getTouchpadId()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    .line 154
    const-string p0, "TouchpadDebugView"

    const-string p1, "Touchpad debug view removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic lambda$updateTouchpadGestureInfo$2(II)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugView;->updateGestureInfo(II)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$updateTouchpadGestureInfo$3(II)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic lambda$updateTouchpadHardwareState$0(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugView;->updateHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$updateTouchpadHardwareState$1(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x10200a

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->showDebugView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 3

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    .line 74
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final showDebugView(I)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 127
    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->getTouchpadHardwareProperties(I)Lcom/android/server/input/TouchpadHardwareProperties;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/android/server/input/debug/TouchpadDebugView;

    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;)V

    invoke-direct {v2, v3, p1, v1, v4}, Lcom/android/server/input/debug/TouchpadDebugView;-><init>(Landroid/content/Context;ILcom/android/server/input/TouchpadHardwareProperties;Ljava/util/function/Consumer;)V

    iput-object v2, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    .line 133
    invoke-virtual {v2}, Lcom/android/server/input/debug/TouchpadDebugView;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 135
    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const-string p0, "Touchpad debug view created."

    const-string v0, "TouchpadDebugView"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve touchpad hardware properties for device ID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchVisualisationToTouchpadId(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/input/debug/TouchpadDebugView;->getTouchpadId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->showDebugView(I)V

    return-void
.end method

.method public updateTouchpadGestureInfo(II)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateTouchpadHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateTouchpadVisualizerEnabled(Z)V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    .line 104
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 108
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz p1, :cond_3

    .line 113
    invoke-virtual {p1}, Lcom/android/server/input/debug/TouchpadDebugView;->getTouchpadId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    .line 115
    :cond_3
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method
