.class public Lcom/android/server/input/debug/RotaryInputValueView;
.super Landroid/widget/TextView;
.source "RotaryInputValueView.java"


# static fields
.field public static final ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;


# instance fields
.field public final mDefaultLocale:Ljava/util/Locale;

.field public final mScaledVerticalScrollFactor:F

.field public final mUpdateActivityStatusCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$B6RdSSuJJVeyj3e7V7l7fG73QmU(Lcom/android/server/input/debug/RotaryInputValueView;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/debug/RotaryInputValueView;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lcom/android/server/input/debug/RotaryInputValueView;->ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x43480000    # 200.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/RotaryInputValueView;)V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Ljava/lang/Runnable;

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mDefaultLocale:Ljava/util/Locale;

    .line 60
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result p1

    iput p1, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mScaledVerticalScrollFactor:F

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/RotaryInputValueView;->getFormattedValue(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0xff01

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x8

    .line 65
    invoke-static {p1, v0}, Lcom/android/server/input/debug/RotaryInputValueView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x4

    .line 66
    invoke-static {p1, v0}, Lcom/android/server/input/debug/RotaryInputValueView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v1

    const/4 v2, 0x0

    .line 67
    invoke-static {p1, v0}, Lcom/android/server/input/debug/RotaryInputValueView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p1

    .line 66
    invoke-virtual {p0, v1, v2, p1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const p1, 0x1080378

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public static applyDimensionSp(ILandroid/util/DisplayMetrics;)I
    .locals 1

    const/4 v0, 0x2

    int-to-float p0, p0

    .line 101
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public final getFormattedValue(F)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mDefaultLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, "-"

    goto :goto_0

    :cond_0
    const-string v0, "+"

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%.1f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/input/debug/RotaryInputValueView;->updateActivityStatus(Z)V

    return-void
.end method

.method public updateActivityStatus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, -0xbdf0d8

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object p1, Lcom/android/server/input/debug/RotaryInputValueView;->ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    const p1, -0xff01

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public updateValue(F)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mScaledVerticalScrollFactor:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/RotaryInputValueView;->getFormattedValue(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/RotaryInputValueView;->updateActivityStatus(Z)V

    .line 79
    iget-object p1, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
