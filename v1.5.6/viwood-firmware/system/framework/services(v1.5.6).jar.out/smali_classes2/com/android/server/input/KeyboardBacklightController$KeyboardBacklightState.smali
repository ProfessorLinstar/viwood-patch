.class public Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;
.super Ljava/lang/Object;
.source "KeyboardBacklightController.java"


# instance fields
.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mBrightnessLevel:I

.field public final mBrightnessValueForLevel:[I

.field public final mDeviceId:I

.field public final mLight:Landroid/hardware/lights/Light;

.field public mUseAmbientController:Z

.field public final synthetic this$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public static synthetic $r8$lambda$-8QB5Z76GgocqWkA9CqVSxnW9bg(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->lambda$startAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessValueForLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLight(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Landroid/hardware/lights/Light;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseAmbientController(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetNumBrightnessChangeSteps(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->getNumBrightnessChangeSteps()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monAmbientBacklightValueChanged(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->onAmbientBacklightValueChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBacklightStateChanged(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->onBacklightStateChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrightnessLevel(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBrightnessLevel(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/lights/Light;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 482
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 485
    iput p2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    .line 486
    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 487
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setupBrightnessLevels()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    return-void
.end method


# virtual methods
.method public final cancelAnimation()V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final getNumBrightnessChangeSteps()I
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final synthetic lambda$startAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmNative(Lcom/android/server/input/KeyboardBacklightController;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {p0}, Landroid/hardware/lights/Light;->getId()I

    move-result p0

    .line 563
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 562
    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    return-void
.end method

.method public final onAmbientBacklightValueChanged()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmIsBacklightOn(Lcom/android/server/input/KeyboardBacklightController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmAmbientBacklightValue(Lcom/android/server/input/KeyboardBacklightController;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    :cond_0
    return-void
.end method

.method public final onBacklightStateChanged()V
    .locals 2

    .line 520
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmAmbientBacklightValue(Lcom/android/server/input/KeyboardBacklightController;)I

    move-result v0

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    iget v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    aget v0, v0, v1

    .line 522
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmIsBacklightOn(Lcom/android/server/input/KeyboardBacklightController;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    return-void
.end method

.method public final setBacklightValue(I)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmNative(Lcom/android/server/input/KeyboardBacklightController;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v1}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmKeyboardBacklightAnimationEnabled(Lcom/android/server/input/KeyboardBacklightController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->startAnimation(II)V

    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmNative(Lcom/android/server/input/KeyboardBacklightController;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {p0}, Landroid/hardware/lights/Light;->getId()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    return-void
.end method

.method public final setBrightnessLevel(I)V
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 527
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmIsBacklightOn(Lcom/android/server/input/KeyboardBacklightController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    .line 530
    :cond_0
    iput p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    return-void
.end method

.method public final setupBrightnessLevels()[I
    .locals 6

    .line 491
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {p0}, Landroid/hardware/lights/Light;->getPreferredBrightnessLevels()[I

    move-result-object p0

    if-eqz p0, :cond_5

    .line 492
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 495
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 497
    array-length v2, p0

    move v3, v1

    :goto_0
    const/16 v4, 0xff

    if-ge v3, v2, :cond_2

    aget v5, p0, v3

    if-lez v5, :cond_1

    if-ge v5, v4, :cond_1

    .line 499
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v2, 0xa

    if-le p0, v2, :cond_3

    .line 505
    sget-object p0, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    return-object p0

    .line 507
    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 509
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 510
    aput v2, p0, v1

    move v1, v3

    goto :goto_1

    :cond_4
    return-object p0

    .line 493
    :cond_5
    :goto_2
    sget-object p0, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    return-object p0
.end method

.method public final startAnimation(II)V
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->cancelAnimation()V

    .line 560
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {v0}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$fgetmAnimatorFactory(Lcom/android/server/input/KeyboardBacklightController;)Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;->makeIntAnimator(II)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 561
    new-instance p2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 564
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/server/input/KeyboardBacklightController;->-$$Nest$sfgetTRANSITION_ANIMATION_DURATION_MILLIS()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyboardBacklightState{Light="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", BrightnessLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
