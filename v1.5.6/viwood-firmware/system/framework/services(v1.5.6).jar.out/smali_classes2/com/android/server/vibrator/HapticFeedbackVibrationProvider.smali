.class public final Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
.super Ljava/lang/Object;
.source "HapticFeedbackVibrationProvider.java"


# static fields
.field public static final COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

.field public final mHapticTextHandleEnabled:Z

.field public mKeyboardVibrationFixedAmplitude:F

.field public final mSafeModeEnabledVibrationEffect:Landroid/os/VibrationEffect;

.field public final mVibratorInfo:Landroid/os/VibratorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 41
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x22

    .line 43
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x32

    .line 45
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x41

    .line 47
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x52

    .line 49
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/server/vibrator/HapticFeedbackCustomization;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Lcom/android/server/vibrator/HapticFeedbackCustomization;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Lcom/android/server/vibrator/HapticFeedbackCustomization;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    const p2, 0x111017b

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    .line 70
    iput-object p3, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    const/16 p2, 0x2711

    .line 72
    invoke-virtual {p3, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->getEffect(I)Landroid/os/VibrationEffect;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x10700bc

    .line 75
    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mSafeModeEnabledVibrationEffect:Landroid/os/VibrationEffect;

    const p2, 0x10500ef

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/high16 p1, -0x40800000    # -1.0f

    .line 81
    iput p1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    return-void
.end method

.method public static shouldBypassInterruptionPolicy(I)Z
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final createKeyboardVibrationAttributes(I)Landroid/os/VibrationAttributes;
    .locals 0

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_0

    .line 360
    sget-object p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0

    .line 362
    :cond_0
    sget-object p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0
.end method

.method public final getAssistantButtonVibration()Landroid/os/VibrationEffect;
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    const/4 v0, 0x7

    .line 317
    invoke-virtual {p0, v0}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 319
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    const/high16 v2, 0x3e800000    # 0.25f

    .line 320
    invoke-virtual {p0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x32

    .line 321
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x5

    .line 325
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyboardVibration(I)Landroid/os/VibrationEffect;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    move v4, v0

    move v0, p1

    move p1, v1

    move v1, v4

    .line 346
    :goto_0
    iget v2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v2, p1}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    iget p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    .line 349
    invoke-virtual {v0, p1, p0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 353
    :cond_1
    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public getVibration(I)Landroid/os/VibrationEffect;
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isFeedbackConstantEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->getEffect(I)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public final getVibration(IFI)Landroid/os/VibrationEffect;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 307
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 308
    invoke-virtual {p0, p1, p2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 311
    :cond_0
    invoke-static {p3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public getVibration(II)Landroid/os/VibrationEffect;
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isFeedbackConstantEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->getEffect(II)Landroid/os/VibrationEffect;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 123
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public getVibrationAttributes(III)Landroid/os/VibrationAttributes;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 p3, 0xe

    if-eq p1, p3, :cond_0

    const/16 p3, 0xf

    if-eq p1, p3, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 163
    sget-object p3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    .line 160
    :pswitch_0
    sget-object p3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    .line 146
    :pswitch_1
    sget-object p3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    .line 152
    :pswitch_2
    sget-object p3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    .line 142
    :cond_0
    sget-object p3, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->createKeyboardVibrationAttributes(I)Landroid/os/VibrationAttributes;

    move-result-object p3

    .line 165
    :goto_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 191
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(III)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/high16 p4, 0x400000

    if-ne p2, p4, :cond_0

    .line 185
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    .line 186
    :cond_0
    sget-object p2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 187
    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;
    .locals 0

    const/4 p0, 0x2

    and-int/2addr p3, p0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 371
    :goto_0
    invoke-static {p2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->shouldBypassInterruptionPolicy(I)Z

    move-result p2

    if-eqz p2, :cond_1

    or-int/lit8 p0, p0, 0x1

    :cond_1
    if-nez p0, :cond_2

    return-object p1

    .line 376
    :cond_2
    new-instance p2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p2, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {p2, p0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    const/16 v3, 0x15

    packed-switch p1, :pswitch_data_0

    const/4 v4, 0x7

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const/4 p0, 0x0

    return-object p0

    .line 278
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getAssistantButtonVibration()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 274
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mSafeModeEnabledVibrationEffect:Landroid/os/VibrationEffect;

    return-object p0

    :pswitch_2
    const p1, 0x3ecccccd    # 0.4f

    .line 281
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/16 p1, 0x8

    const v0, 0x3e4ccccd    # 0.2f

    .line 292
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/high16 p1, 0x3f000000    # 0.5f

    .line 287
    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 270
    :pswitch_5
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 250
    :pswitch_6
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 236
    :pswitch_7
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 241
    :pswitch_8
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 246
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getKeyboardVibration(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 260
    :cond_0
    :pswitch_a
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_1
    :pswitch_b
    const/4 p0, 0x5

    .line 266
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_b
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public final isFeedbackConstantEnabled(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 218
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isRestrictedHapticFeedback(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x2714

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2715

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
