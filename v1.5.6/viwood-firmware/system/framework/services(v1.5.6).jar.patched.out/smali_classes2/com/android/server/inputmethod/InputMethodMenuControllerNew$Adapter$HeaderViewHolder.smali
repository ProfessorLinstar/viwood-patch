.class public final Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "InputMethodMenuControllerNew.java"


# instance fields
.field public final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 594
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020356

    .line 596
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;)V
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
