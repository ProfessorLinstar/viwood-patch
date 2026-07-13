.class public Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"


# instance fields
.field public final mImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

.field public final mKeyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)V
    .locals 0

    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->mKeyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 1311
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->mImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;Lcom/android/server/input/KeyboardLayoutManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;-><init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->mImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    if-nez v0, :cond_0

    .line 1322
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->mKeyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1324
    :cond_0
    iget-object v0, v0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layoutDescriptor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->mKeyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->mImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    iget v1, v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",subtypeHandle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->mImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 1326
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->toStringHandle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
