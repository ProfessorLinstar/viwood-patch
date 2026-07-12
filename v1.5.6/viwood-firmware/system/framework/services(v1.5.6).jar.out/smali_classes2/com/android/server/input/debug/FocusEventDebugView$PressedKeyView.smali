.class public Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;
.super Landroid/widget/TextView;
.source "FocusEventDebugView.java"


# static fields
.field public static final sInvertColors:Landroid/graphics/ColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 379
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->sInvertColors:Landroid/graphics/ColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 387
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v1, 0x1

    .line 391
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/high16 v2, 0x41000000    # 8.0f

    .line 393
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x42000000    # 32.0f

    .line 396
    invoke-static {v1, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    .line 398
    invoke-static {v4, v5, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 400
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 401
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 402
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    int-to-float p1, p1

    .line 403
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 404
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x1080377

    .line 405
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 406
    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->setHighlighted(Z)V

    return-void
.end method


# virtual methods
.method public setHighlighted(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, -0x1000000

    .line 414
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->sInvertColors:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 417
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 420
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
