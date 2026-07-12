.class public Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"


# instance fields
.field public mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .line 1206
    invoke-static {p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput p1, p0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mUserId:I

    .line 1200
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 1201
    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method
