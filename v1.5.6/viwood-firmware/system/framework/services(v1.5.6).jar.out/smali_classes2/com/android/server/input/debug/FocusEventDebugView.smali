.class public Lcom/android/server/input/debug/FocusEventDebugView;
.super Landroid/widget/RelativeLayout;
.source "FocusEventDebugView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mDm:Landroid/util/DisplayMetrics;

.field public mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

.field public final mOuterPadding:I

.field public mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

.field public final mPressedKeys:Ljava/util/Map;

.field public mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

.field public mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

.field public final mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

.field public mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

.field public final mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

.field public final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public static synthetic $r8$lambda$4-MbPQG9vwYM0KeLxCm0j2tSBSI(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->lambda$reportMotionEvent$6(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NOfikC3SqQwvKrlgqWnqfisz50A(Lcom/android/server/input/debug/FocusEventDebugView;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->lambda$updateShowKeyPresses$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UcEDdccFvSdN5GowJOoOhJu1fao(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->lambda$reportKeyEvent$5(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b1UcQjqmeeWkZ_OQz-eMn3ckhfQ(Landroid/widget/HorizontalScrollView;Landroid/view/View;IIIIIIII)V
    .locals 0

    const/16 p1, 0x42

    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method

.method public static synthetic $r8$lambda$clGsfRpmOqtjVN63x2YrMnEaYSg(Landroid/content/Context;)Lcom/android/server/input/debug/RotaryInputGraphView;
    .locals 1

    .line 112
    new-instance v0, Lcom/android/server/input/debug/RotaryInputGraphView;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/RotaryInputGraphView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$vobHUxs2P3Uv6Szxm0TMwjZMeD0(Landroid/content/Context;)Lcom/android/server/input/debug/RotaryInputValueView;
    .locals 1

    .line 112
    new-instance v0, Lcom/android/server/input/debug/RotaryInputValueView;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/RotaryInputValueView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$wRBbJ_wMpYkGR2WgNIBppqz8j3M(Lcom/android/server/input/debug/FocusEventDebugView;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->lambda$updateShowRotaryInput$3(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/android/server/input/debug/FocusEventDebugView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/debug/FocusEventDebugView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 2

    .line 112
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/input/debug/FocusEventDebugView;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/input/InputManagerService;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/input/debug/RotaryInputValueView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/input/debug/RotaryInputGraphView;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 104
    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mService:Lcom/android/server/input/InputManagerService;

    .line 105
    iput-object p3, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

    .line 106
    iput-object p4, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

    .line 107
    iget-object p2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mDm:Landroid/util/DisplayMetrics;

    const/high16 p3, 0x41800000    # 16.0f

    .line 108
    invoke-static {p1, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mOuterPadding:I

    return-void
.end method

.method public static getLabel(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 2

    .line 305
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_a

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_9

    const/16 v1, 0x42

    if-eq v0, v1, :cond_8

    const/16 v1, 0x43

    if-eq v0, v1, :cond_7

    const/16 v1, 0x55

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_8

    const/16 v1, 0x138

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x70

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 347
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const p0, 0x7fffffff

    and-int/2addr p0, v0

    .line 351
    invoke-static {p0}, Landroid/view/KeyCharacterMap;->getCombiningChar(I)I

    move-result p0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u25cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-char p0, v0

    .line 357
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 360
    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p0

    .line 361
    const-string v0, "KEYCODE_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 362
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    .line 332
    :pswitch_0
    const-string/jumbo p0, "\u2198"

    return-object p0

    .line 328
    :pswitch_1
    const-string/jumbo p0, "\u2197"

    return-object p0

    .line 334
    :pswitch_2
    const-string/jumbo p0, "\u2199"

    return-object p0

    .line 330
    :pswitch_3
    const-string/jumbo p0, "\u2196"

    return-object p0

    .line 326
    :pswitch_4
    const-string/jumbo p0, "\u2192"

    return-object p0

    .line 324
    :pswitch_5
    const-string/jumbo p0, "\u2190"

    return-object p0

    .line 322
    :pswitch_6
    const-string/jumbo p0, "\u2193"

    return-object p0

    .line 320
    :pswitch_7
    const-string/jumbo p0, "\u2191"

    return-object p0

    .line 316
    :cond_3
    const-string/jumbo p0, "\u2326"

    return-object p0

    .line 318
    :cond_4
    const-string p0, "esc"

    return-object p0

    .line 342
    :cond_5
    const-string/jumbo p0, "\u25a1"

    return-object p0

    .line 336
    :cond_6
    const-string/jumbo p0, "\u23ef"

    return-object p0

    .line 314
    :cond_7
    const-string/jumbo p0, "\u232b"

    return-object p0

    .line 312
    :cond_8
    const-string/jumbo p0, "\u23ce"

    return-object p0

    .line 307
    :cond_9
    const-string/jumbo p0, "\u2423"

    return-object p0

    .line 309
    :cond_a
    const-string/jumbo p0, "\u21e5"

    return-object p0

    .line 340
    :cond_b
    const-string/jumbo p0, "\u25c1"

    return-object p0

    .line 338
    :cond_c
    const-string/jumbo p0, "\u25ef"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 145
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5

    .line 248
    invoke-virtual {p0}, Lcom/android/server/input/debug/FocusEventDebugView;->showKeyPresses()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;

    .line 257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 277
    sget-object p0, Lcom/android/server/input/debug/FocusEventDebugView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got key up for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " that was not tracked as being down."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 281
    :cond_3
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {v1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->handleKeyRelease(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_6

    .line 260
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-nez p0, :cond_5

    .line 261
    sget-object p0, Lcom/android/server/input/debug/FocusEventDebugView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got key down for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " that was already tracked as being down."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->handleKeyRepeat(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;)V

    goto :goto_1

    .line 270
    :cond_6
    new-instance v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/input/debug/FocusEventDebugView;->getLabel(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->handleKeyPressed(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;)V

    .line 288
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public handleRotaryInput(Landroid/view/MotionEvent;)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Lcom/android/server/input/debug/FocusEventDebugView;->showRotaryInput()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1a

    .line 297
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    invoke-virtual {v1, v0}, Lcom/android/server/input/debug/RotaryInputValueView;->updateValue(F)V

    .line 299
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->addValue(FJ)V

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final handleUpdateShowKeyPresses(Z)V
    .locals 6

    .line 161
    invoke-virtual {p0}, Lcom/android/server/input/debug/FocusEventDebugView;->showKeyPresses()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 168
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 169
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    return-void

    .line 173
    :cond_1
    new-instance p1, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 175
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    const/16 v1, 0x55

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 176
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 177
    new-instance p1, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 180
    new-instance v1, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda6;-><init>(Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x1

    .line 182
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 183
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    .line 184
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xb

    .line 185
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    invoke-virtual {p0, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    iget-object v5, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 189
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 191
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    .line 193
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getId()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {p0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public handleUpdateShowRotaryInput(Z)V
    .locals 4

    .line 200
    invoke-virtual {p0}, Lcom/android/server/input/debug/FocusEventDebugView;->showRotaryInput()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 207
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 208
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 209
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 210
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    return-void

    .line 214
    :cond_1
    new-instance p1, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mService:Lcom/android/server/input/InputManagerService;

    invoke-direct {p1, p0, v0}, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Lcom/android/server/input/InputManagerService;)V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 216
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/debug/RotaryInputValueView;

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 217
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 218
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    .line 219
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 220
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/debug/RotaryInputGraphView;

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 223
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mDm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 226
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final synthetic lambda$reportKeyEvent$5(Landroid/view/KeyEvent;)V
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final synthetic lambda$reportMotionEvent$6(Landroid/view/MotionEvent;)V
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->handleRotaryInput(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final synthetic lambda$updateShowKeyPresses$2(Z)V
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->handleUpdateShowKeyPresses(Z)V

    return-void
.end method

.method public final synthetic lambda$updateShowRotaryInput$3(Z)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->handleUpdateShowRotaryInput(Z)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    const/4 v0, 0x3

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    .line 126
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 136
    :cond_2
    iget v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mOuterPadding:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 139
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public reportKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    .line 232
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    .line 233
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v1, 0x400000

    if-eq v0, v1, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 244
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showKeyPresses()Z
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final showRotaryInput()Z
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateShowKeyPresses(Z)V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateShowRotaryInput(Z)V
    .locals 1

    .line 157
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
