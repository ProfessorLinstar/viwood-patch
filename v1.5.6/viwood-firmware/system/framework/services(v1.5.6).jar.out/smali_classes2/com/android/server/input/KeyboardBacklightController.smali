.class public final Lcom/android/server/input/KeyboardBacklightController;
.super Ljava/lang/Object;
.source "KeyboardBacklightController.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z

.field static final DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

.field static final MAX_BRIGHTNESS_CHANGE_STEPS:I = 0xa

.field public static final TRANSITION_ANIMATION_DURATION_MILLIS:J


# instance fields
.field public mAmbientBacklightValue:I

.field public final mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

.field public mAmbientListener:Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;

.field public final mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBacklightOn:Z

.field public mIsInteractive:Z

.field public final mKeyboardBacklightAnimationEnabled:Z

.field public final mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

.field public final mKeyboardBacklights:Landroid/util/SparseArray;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public final mUserInactivityThresholdMs:I


# direct methods
.method public static synthetic $r8$lambda$gLE2VR5qX7q5aVLtb99mO7iYb5Q(II)Landroid/animation/ValueAnimator;
    .locals 0

    .line 124
    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x56uNWQ8yZ3aSFy91aBfHRGVrXg(Lcom/android/server/input/KeyboardBacklightController;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientBacklightValue(Lcom/android/server/input/KeyboardBacklightController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimatorFactory(Lcom/android/server/input/KeyboardBacklightController;)Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsBacklightOn(Lcom/android/server/input/KeyboardBacklightController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyboardBacklightAnimationEnabled(Lcom/android/server/input/KeyboardBacklightController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightAnimationEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNative(Lcom/android/server/input/KeyboardBacklightController;)Lcom/android/server/input/NativeInputManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monKeyboardBacklightListenerDied(Lcom/android/server/input/KeyboardBacklightController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->onKeyboardBacklightListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTRANSITION_ANIMATION_DURATION_MILLIS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/input/KeyboardBacklightController;->TRANSITION_ANIMATION_DURATION_MILLIS:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 63
    const-string v0, "KbdBacklightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    const-wide/16 v0, 0x1

    .line 83
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/input/KeyboardBacklightController;->TRANSITION_ANIMATION_DURATION_MILLIS:J

    const/16 v0, 0xb

    .line 86
    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 117
    sget-object v1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;)V
    .locals 1

    .line 124
    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/input/KeyboardBacklightController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    .line 101
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    .line 109
    iput v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    .line 130
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 132
    new-instance p2, Landroid/os/Handler;

    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    invoke-direct {p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object p4, p0, Lcom/android/server/input/KeyboardBacklightController;->mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

    .line 134
    new-instance p2, Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-direct {p2, p1, p3}, Lcom/android/server/input/AmbientKeyboardBacklightController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00af

    .line 136
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mUserInactivityThresholdMs:I

    .line 139
    invoke-static {}, Landroid/sysprop/InputProperties;->enable_keyboard_backlight_animation()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightAnimationEnabled:Z

    return-void
.end method


# virtual methods
.method public decrementKeyboardBacklight(I)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 165
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 436
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KbdBacklightController: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keyboard backlights"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p1, 0x0

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .locals 1

    .line 338
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getKeyboardBacklight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;
    .locals 2

    .line 345
    invoke-virtual {p1}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/lights/Light;

    .line 346
    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getType()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_0

    .line 347
    invoke-virtual {p1}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleAmbientLightValueChanged(I)V
    .locals 1

    .line 270
    iput p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    const/4 p1, 0x0

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 273
    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$monAmbientBacklightValueChanged(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleInteractiveStateChange(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserActivity()V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserInactivity()V

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 297
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->handleInteractiveStateChange(Z)V

    return v2

    .line 294
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserInactivity()V

    return v2

    .line 291
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserActivity()V

    return v2

    .line 288
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_DOWN:Lcom/android/server/input/KeyboardBacklightController$Direction;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardBacklightController;->updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V

    return v2

    .line 285
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardBacklightController;->updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V

    return v2

    .line 280
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    .line 281
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardBacklightController;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleUserActivity()V
    .locals 6

    .line 234
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    const/4 v0, 0x0

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 240
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$monBacklightStateChanged(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mUserInactivityThresholdMs:I

    int-to-long v4, p0

    add-long/2addr v2, v4

    .line 243
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final handleUserInactivity()V
    .locals 2

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 251
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$monBacklightStateChanged(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public incrementKeyboardBacklight(I)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 159
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyUserActivity()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 171
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->onInputDeviceChanged(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardBacklightController;->getKeyboardBacklight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v0

    if-nez v0, :cond_1

    .line 326
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    if-eqz v1, :cond_2

    .line 330
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmLight(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Landroid/hardware/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/lights/Light;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    :goto_0
    return-void

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;-><init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/lights/Light;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    return-void
.end method

.method public onInteractiveChanged(Z)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 177
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onKeyboardBacklightListenerDied(I)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 397
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 398
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 364
    new-instance v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;-><init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 369
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 372
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public systemRunning()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 148
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->systemRunning()V

    return-void
.end method

.method public unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;I)V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    if-eqz v1, :cond_1

    .line 386
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v2}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_0

    .line 390
    iget-object p1, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 391
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 392
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 387
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has a different registered KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has no registered KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 392
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateAmbientLightListener()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 403
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    invoke-static {v2}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmUseAmbientController(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;

    if-nez v1, :cond_1

    .line 408
    new-instance v1, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    iput-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;

    .line 409
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-virtual {v2, v1}, Lcom/android/server/input/AmbientKeyboardBacklightController;->registerAmbientBacklightListener(Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;)V

    :cond_1
    if-nez v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;

    if-eqz v0, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-virtual {v1, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->unregisterAmbientBacklightListener(Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;)V

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/AmbientKeyboardBacklightController$AmbientKeyboardBacklightListener;

    :cond_2
    return-void
.end method

.method public final updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V
    .locals 6

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 188
    :cond_0
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmUseAmbientController(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 189
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmBrightnessValueForLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)[I

    move-result-object v0

    iget v4, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    sub-int/2addr v0, v3

    .line 192
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 194
    sget-object v4, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    if-ne p2, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_2
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I

    move-result v0

    .line 202
    :cond_3
    :goto_0
    sget-object v4, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    if-ne p2, v4, :cond_4

    add-int/2addr v0, v3

    .line 204
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$mgetNumBrightnessChangeSteps(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I

    move-result p2

    .line 203
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v3

    .line 206
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 209
    :goto_1
    invoke-static {v1, p2}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$msetBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    .line 215
    sget-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 216
    const-string v0, "KbdBacklightController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing state from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$fgetmBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 221
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 222
    new-instance v4, Landroid/hardware/input/IKeyboardBacklightState;

    invoke-direct {v4}, Landroid/hardware/input/IKeyboardBacklightState;-><init>()V

    .line 223
    iput p2, v4, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    .line 224
    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->-$$Nest$mgetNumBrightnessChangeSteps(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I

    move-result v5

    iput v5, v4, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    .line 225
    iget-object v5, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->notifyKeyboardBacklightChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 228
    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_4
    return-void
.end method
