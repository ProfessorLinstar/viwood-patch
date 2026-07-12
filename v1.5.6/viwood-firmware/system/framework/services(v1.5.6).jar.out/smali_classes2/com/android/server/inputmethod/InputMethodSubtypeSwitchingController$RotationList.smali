.class public Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# instance fields
.field public final mItems:Ljava/util/List;

.field public final mRecencyMap:[I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmItems(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    .line 519
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    const/4 p1, 0x0

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Static order:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 617
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, " item="

    const-string v4, "  i="

    if-ge v1, v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Recency order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 622
    :goto_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 623
    aget v1, v1, v0

    .line 624
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)I
    .locals 3

    .line 603
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->-$$Nest$smcalculateSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p2

    const/4 v0, 0x0

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eqz p3, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aget v1, v1, v0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 606
    :goto_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 607
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    if-ne v1, p2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public next(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 5

    .line 542
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 545
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)I

    move-result v0

    if-gez v0, :cond_1

    .line 547
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Trying to switch away from input method: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and subtype "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " which are not in the list, falling back to most recent item in list."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    const/4 p2, 0x0

    aget p0, p0, p2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    return-object p0

    :cond_1
    const/4 p2, 0x1

    if-eqz p5, :cond_2

    move p5, p2

    goto :goto_0

    :cond_2
    const/4 p5, -0x1

    .line 555
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge p2, v2, :cond_6

    mul-int v3, p2, p5

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 557
    rem-int/2addr v3, v2

    if-eqz p4, :cond_3

    .line 558
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aget v3, v4, v3

    .line 559
    :cond_3
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    if-eqz p3, :cond_5

    .line 560
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v3

    :cond_6
    return-object v1
.end method

.method public setMostRecent(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 580
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)I

    move-result p1

    if-gtz p1, :cond_1

    return v1

    .line 585
    :cond_1
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aget v2, p2, p1

    .line 586
    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:[I

    aput v2, p0, v1

    return v0
.end method
