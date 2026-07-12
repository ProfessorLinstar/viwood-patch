.class public final Lcom/android/server/inputmethod/InputMethodMenuControllerNew;
.super Ljava/lang/Object;
.source "InputMethodMenuControllerNew.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InputMethodMenuControllerNew"


# instance fields
.field public mDialog:Landroid/app/AlertDialog;

.field public final mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

.field public mMenuItems:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$-DHIbVCBBdP5s-oOHAerDovyFm8(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;IILcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->lambda$show$0(IILcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$-V0SmxAJd2epW9mgI18qNRIpE1g(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;Landroid/content/Intent;IILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->lambda$updateLanguageSettingsButton$3(Landroid/content/Intent;IILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IEatni96P396ZHF_MES0J1HuJPI(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;IILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->lambda$show$2(IILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-zNyHV2aHiVuwa1KBqp5SRtKcM(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    return-void
.end method

.method public static getMenuItems(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 219
    :cond_0
    check-cast p0, Ljava/util/ArrayList;

    .line 220
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 222
    invoke-virtual {p0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_6

    .line 225
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 227
    iget-object v7, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 228
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v4, :cond_1

    .line 231
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;->getInstance()Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v5, 0x1

    if-ge v2, v1, :cond_2

    .line 234
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 235
    :goto_1
    iget-object v4, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    :cond_3
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;

    iget-object v4, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-direct {v2, v4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v4, v3

    move-object v2, v7

    .line 243
    :cond_5
    new-instance v7, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    iget-object v8, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v9, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iget-object v10, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mLayoutName:Ljava/lang/CharSequence;

    iget-object v11, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget v12, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    invoke-direct/range {v7 .. v12}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static getSelectedIndex(Ljava/util/List;Ljava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 264
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    .line 265
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;

    .line 266
    instance-of v3, v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    .line 267
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 268
    iget v1, v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeIndex:I

    .line 269
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    if-eq p2, v2, :cond_1

    :cond_0
    if-eq v1, v2, :cond_1

    if-ne v1, p2, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 191
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->isShowing()Z

    move-result v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "menuItems: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mMenuItems:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hide(II)V
    .locals 2

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mMenuItems:Ljava/util/List;

    .line 175
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    .line 179
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateShouldShowImeSwitcher(II)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$show$0(IILcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V
    .locals 1

    if-nez p4, :cond_0

    .line 122
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p4

    iget-object v0, p3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 123
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget p3, p3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeIndex:I

    invoke-virtual {p4, v0, p3, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->switchToInputMethod(Ljava/lang/String;II)Z

    .line 125
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    return-void
.end method

.method public final synthetic lambda$show$2(IILandroid/content/DialogInterface;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    return-void
.end method

.method public final synthetic lambda$updateLanguageSettingsButton$3(Landroid/content/Intent;IILandroid/view/View;)V
    .locals 1

    .line 310
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 311
    invoke-virtual {p0, p3, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    return-void
.end method

.method public show(Ljava/util/List;Ljava/lang/String;IZII)V
    .locals 12

    move/from16 v4, p5

    move/from16 v5, p6

    .line 99
    invoke-virtual {p0, v4, v5}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    .line 101
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->getMenuItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 102
    invoke-static {p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->getSelectedIndex(Ljava/util/List;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 104
    sget-object v6, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Switching menu shown with no item selected, IME id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subtype index: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->get(I)Landroid/content/Context;

    move-result-object v6

    .line 109
    new-instance v7, Landroid/app/AlertDialog$Builder;

    const v0, 0x103040b

    invoke-direct {v7, v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090097

    const/4 v8, 0x0

    .line 115
    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v9, 0x104099e

    .line 117
    invoke-virtual {v6, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 116
    invoke-virtual {v1, v9}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance v9, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v5, v4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;II)V

    const v10, 0x102000a

    .line 130
    invoke-virtual {v1, v10}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/RecyclerView;

    .line 131
    new-instance v11, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;

    invoke-direct {v11, p1, v2, v0, v9}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;-><init>(Ljava/util/List;ILandroid/view/LayoutInflater;Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;)V

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 133
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda1;

    invoke-direct {v0, v10, v2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/RecyclerView;I)V

    invoke-virtual {v10, v0}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 135
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView;->requestFocus()Z

    if-le v2, v3, :cond_1

    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;

    :cond_1
    move-object v0, p0

    move/from16 v3, p4

    move-object v2, v1

    move-object v1, v8

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->updateLanguageSettingsButton(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;Landroid/view/View;ZII)V

    .line 140
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;II)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mMenuItems:Ljava/util/List;

    .line 142
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    .line 143
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 144
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 145
    invoke-virtual {p1, v1}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 146
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 150
    invoke-virtual {v6}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 152
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const v3, 0x800055

    .line 151
    invoke-static {v3, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x10

    .line 153
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 154
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v2, 0x7dc

    .line 155
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 157
    const-string v2, "IME Switcher Menu"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 161
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateShouldShowImeSwitcher(II)V

    return-void
.end method

.method public final updateLanguageSettingsButton(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;Landroid/view/View;ZII)V
    .locals 5

    .line 297
    instance-of v0, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    .line 298
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->createImeLanguageSettingsActivityIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 300
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    .line 299
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const p3, 0x102025d

    .line 303
    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x1020019

    .line 304
    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x102000a

    .line 305
    invoke-virtual {p2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/RecyclerView;

    if-eqz v2, :cond_3

    const/high16 v1, 0x10000000

    .line 307
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    new-instance p3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1, p5, p4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;Landroid/content/Intent;II)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x2

    .line 314
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/RecyclerView;->setScrollIndicators(I)V

    return-void

    :cond_3
    const/16 p0, 0x8

    .line 316
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-virtual {p2, v3}, Lcom/android/internal/widget/RecyclerView;->setScrollIndicators(I)V

    return-void
.end method
