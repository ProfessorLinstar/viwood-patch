.class public Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AutoclickLinearLayout.java"


# instance fields
.field public mListener:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onHoverChanged(Z)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onHoverChanged(Z)V

    .line 76
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;->mListener:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;

    if-eqz p0, :cond_0

    .line 77
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;->onHoverChanged(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 66
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setHovered(Z)V

    return v1
.end method
