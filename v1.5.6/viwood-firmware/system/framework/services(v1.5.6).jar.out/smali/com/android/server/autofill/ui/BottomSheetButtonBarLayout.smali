.class public Lcom/android/server/autofill/ui/BottomSheetButtonBarLayout;
.super Lcom/android/internal/widget/ButtonBarLayout;
.source "BottomSheetButtonBarLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ButtonBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final isStacked()Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMeasure(II)V
    .locals 3

    .line 37
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ButtonBarLayout;->onMeasure(II)V

    const p1, 0x1020228

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/BottomSheetButtonBarLayout;->isStacked()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1050053

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p1, 0x800015

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    return-void

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 50
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 p1, 0x10

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    return-void
.end method
